/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.Message
 *  android.util.Log
 */
package hecticman.jsterm.emulatorview;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import hecticman.jsterm.emulatorview.BaseTextRenderer;
import hecticman.jsterm.emulatorview.ByteQueue;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.Screen;
import hecticman.jsterm.emulatorview.TerminalEmulator;
import hecticman.jsterm.emulatorview.TranscriptScreen;
import hecticman.jsterm.emulatorview.UpdateCallback;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class TermSession {
    private static final int FINISH = 3;
    private static final int NEW_INPUT = 1;
    private static final int NEW_OUTPUT = 2;
    private static final int TRANSCRIPT_ROWS = 10000;
    private ByteQueue mByteQueue;
    private CharSequence[] mCmdItems;
    private ColorScheme mColorScheme = BaseTextRenderer.defaultColorScheme;
    private boolean mDefaultUTF8Mode;
    private TerminalEmulator mEmulator;
    private FinishCallback mFinishCallback;
    private boolean mIsRunning = false;
    private Handler mMsgHandler;
    private UpdateCallback mNotify;
    private Thread mReaderThread;
    private byte[] mReceiveBuffer;
    private InputStream mTermIn;
    private OutputStream mTermOut;
    private TranscriptScreen mTranscriptScreen;
    private CharsetEncoder mUTF8Encoder;
    private ByteBuffer mWriteByteBuffer;
    private CharBuffer mWriteCharBuffer;
    private ByteQueue mWriteQueue;
    private Handler mWriterHandler;
    private Thread mWriterThread;

    public TermSession() {
        this.mMsgHandler = new Handler(){

            /*
             * Enabled aggressive block sorting
             */
            public void handleMessage(Message message) {
                if (!TermSession.this.mIsRunning || message.what != 1) {
                    return;
                }
                TermSession.this.readFromProcess();
            }
        };
        this.mWriteCharBuffer = CharBuffer.allocate(2);
        this.mWriteByteBuffer = ByteBuffer.allocate(4);
        this.mUTF8Encoder = Charset.forName("UTF-8").newEncoder();
        this.mUTF8Encoder.onMalformedInput(CodingErrorAction.REPLACE);
        this.mUTF8Encoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        this.mReceiveBuffer = new byte[4096];
        this.mByteQueue = new ByteQueue(4096);
        this.mReaderThread = new Thread(){
            private byte[] mBuffer;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void run() {
                try {
                    do {
                        int n;
                        if ((n = TermSession.this.mTermIn.read(this.mBuffer)) == -1) {
                            return;
                        }
                        TermSession.this.mByteQueue.write(this.mBuffer, 0, n);
                        TermSession.this.mMsgHandler.sendMessage(TermSession.this.mMsgHandler.obtainMessage(1));
                    } while (true);
                }
                catch (IOException iOException) {
                    return;
                }
                catch (InterruptedException interruptedException) {
                    return;
                }
            }
        };
        this.mReaderThread.setName("TermSession input reader");
        this.mWriteQueue = new ByteQueue(4096);
        this.mWriterThread = new Thread(){
            private byte[] mBuffer;

            private void writeToOutput() {
                ByteQueue byteQueue = TermSession.this.mWriteQueue;
                byte[] arrby = this.mBuffer;
                OutputStream outputStream = TermSession.this.mTermOut;
                int n = Math.min(byteQueue.getBytesAvailable(), arrby.length);
                if (n == 0) {
                    return;
                }
                try {
                    byteQueue.read(arrby, 0, n);
                    outputStream.write(arrby, 0, n);
                    outputStream.flush();
                    return;
                }
                catch (IOException var1_2) {
                    return;
                }
                catch (InterruptedException var1_3) {
                    return;
                }
            }

            @Override
            public void run() {
                Looper.prepare();
                TermSession.access$5(TermSession.this, new Handler(){

                    /*
                     * Enabled aggressive block sorting
                     */
                    public void handleMessage(Message message) {
                        if (message.what == 2) {
                            3.this.writeToOutput();
                            return;
                        } else {
                            if (message.what != 3) return;
                            {
                                Looper.myLooper().quit();
                                return;
                            }
                        }
                    }
                });
                this.writeToOutput();
                Looper.loop();
            }

        };
        this.mWriterThread.setName("TermSession output writer");
    }

    static /* synthetic */ void access$5(TermSession termSession, Handler handler) {
        termSession.mWriterHandler = handler;
    }

    private void notifyNewOutput() {
        Handler handler = this.mWriterHandler;
        if (handler == null) {
            return;
        }
        handler.sendEmptyMessage(2);
    }

    private void readFromProcess() {
        int n = Math.min(this.mByteQueue.getBytesAvailable(), this.mReceiveBuffer.length);
        try {
            n = this.mByteQueue.read(this.mReceiveBuffer, 0, n);
            this.processInput(this.mReceiveBuffer, 0, n);
            this.notifyUpdate();
            return;
        }
        catch (InterruptedException var1_2) {
            return;
        }
    }

    protected final void appendToEmulator(byte[] arrby, int n, int n2) {
        this.mEmulator.append(arrby, n, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void finish() {
        this.mIsRunning = false;
        this.mTranscriptScreen.finish();
        this.mWriterHandler.sendEmptyMessage(3);
        try {
            this.mTermIn.close();
            this.mTermOut.close();
        }
        catch (IOException var1_1) {}
        if (this.mFinishCallback != null) {
            this.mFinishCallback.onSessionFinish(this);
        }
    }

    public CharSequence[] getCmdItems() {
        return this.mCmdItems;
    }

    TerminalEmulator getEmulator() {
        return this.mEmulator;
    }

    public InputStream getTermIn() {
        return this.mTermIn;
    }

    public OutputStream getTermOut() {
        return this.mTermOut;
    }

    TranscriptScreen getTranscriptScreen() {
        return this.mTranscriptScreen;
    }

    public String getTranscriptText() {
        return this.mTranscriptScreen.getTranscriptText();
    }

    public boolean getUTF8Mode() {
        if (this.mEmulator == null) {
            return this.mDefaultUTF8Mode;
        }
        return this.mEmulator.getUTF8Mode();
    }

    public void initializeEmulator(int n, int n2) {
        this.mTranscriptScreen = new TranscriptScreen(n, 10000, n2, this.mColorScheme);
        this.mEmulator = new TerminalEmulator(this, this.mTranscriptScreen, n, n2, this.mColorScheme);
        this.mEmulator.setDefaultUTF8Mode(this.mDefaultUTF8Mode);
        this.mIsRunning = true;
        this.mReaderThread.start();
        this.mWriterThread.start();
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    protected void notifyUpdate() {
        if (this.mNotify != null) {
            this.mNotify.onUpdate();
        }
    }

    protected void processInput(byte[] arrby, int n, int n2) {
        this.mEmulator.append(arrby, n, n2);
    }

    public byte[] readCommands() {
        return this.mWriteQueue.getBuffer();
    }

    public void reset() {
        this.mEmulator.reset();
        this.notifyUpdate();
    }

    public void setCmdItems(CharSequence[] arrcharSequence) {
        this.mCmdItems = arrcharSequence;
    }

    public void setColorScheme(ColorScheme colorScheme) {
        ColorScheme colorScheme2 = colorScheme;
        if (colorScheme == null) {
            colorScheme2 = BaseTextRenderer.defaultColorScheme;
        }
        this.mColorScheme = colorScheme2;
        if (this.mEmulator == null) {
            return;
        }
        this.mEmulator.setColorScheme(colorScheme2);
        this.mTranscriptScreen.setColorScheme(colorScheme2);
    }

    public void setDefaultUTF8Mode(boolean bl) {
        this.mDefaultUTF8Mode = bl;
        if (this.mEmulator == null) {
            return;
        }
        this.mEmulator.setDefaultUTF8Mode(bl);
    }

    public void setFinishCallback(FinishCallback finishCallback) {
        this.mFinishCallback = finishCallback;
    }

    public void setTermIn(InputStream inputStream) {
        this.mTermIn = inputStream;
    }

    public void setTermOut(OutputStream outputStream) {
        this.mTermOut = outputStream;
    }

    public void setUTF8ModeUpdateCallback(UpdateCallback updateCallback) {
        if (this.mEmulator != null) {
            this.mEmulator.setUTF8ModeUpdateCallback(updateCallback);
        }
    }

    public void setUpdateCallback(UpdateCallback updateCallback) {
        this.mNotify = updateCallback;
    }

    public void updateSize(int n, int n2) {
        if (this.mEmulator == null) {
            this.initializeEmulator(n, n2);
            return;
        }
        this.mEmulator.updateSize(n, n2);
    }

    public void write(int n) {
        CharBuffer charBuffer = this.mWriteCharBuffer;
        ByteBuffer byteBuffer = this.mWriteByteBuffer;
        CharsetEncoder charsetEncoder = this.mUTF8Encoder;
        charBuffer.clear();
        byteBuffer.clear();
        Character.toChars(n, charBuffer.array(), 0);
        charsetEncoder.reset();
        charsetEncoder.encode(charBuffer, byteBuffer, true);
        charsetEncoder.flush(byteBuffer);
        this.write(byteBuffer.array(), 0, byteBuffer.position() - 1);
    }

    public void write(String arrby) {
        try {
            arrby = arrby.getBytes("UTF-8");
            this.write(arrby, 0, arrby.length);
            return;
        }
        catch (UnsupportedEncodingException var1_2) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void write(byte[] arrby, int n, int n2) {
        try {
            String string2 = new String(arrby);
            Log.d((String)"HECTIC", (String)("write: " + string2.trim()));
            this.mWriteQueue.write(arrby, n, n2);
        }
        catch (InterruptedException var1_2) {}
        this.notifyNewOutput();
    }

    public static interface FinishCallback {
        public void onSessionFinish(TermSession var1);
    }

}

