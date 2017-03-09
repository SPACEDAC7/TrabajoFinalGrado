/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.Message
 */
package jackpal.androidterm.emulatorview;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import jackpal.androidterm.emulatorview.BaseTextRenderer;
import jackpal.androidterm.emulatorview.ByteQueue;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.TermKeyListener;
import jackpal.androidterm.emulatorview.TerminalEmulator;
import jackpal.androidterm.emulatorview.TranscriptScreen;
import jackpal.androidterm.emulatorview.UpdateCallback;
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
    private static final int EOF = 4;
    private static final int FINISH = 3;
    private static final int NEW_INPUT = 1;
    private static final int NEW_OUTPUT = 2;
    private static final int TRANSCRIPT_ROWS = 10000;
    private ByteQueue mByteQueue;
    private ColorScheme mColorScheme = BaseTextRenderer.defaultColorScheme;
    private boolean mDefaultUTF8Mode;
    private TerminalEmulator mEmulator;
    private FinishCallback mFinishCallback;
    private boolean mIsRunning = false;
    private TermKeyListener mKeyListener;
    private Handler mMsgHandler;
    private UpdateCallback mNotify;
    private Thread mReaderThread;
    private byte[] mReceiveBuffer;
    private InputStream mTermIn;
    private OutputStream mTermOut;
    private String mTitle;
    private UpdateCallback mTitleChangedListener;
    private TranscriptScreen mTranscriptScreen;
    private CharsetEncoder mUTF8Encoder;
    private ByteBuffer mWriteByteBuffer;
    private CharBuffer mWriteCharBuffer;
    private ByteQueue mWriteQueue;
    private Handler mWriterHandler;
    private Thread mWriterThread;

    public TermSession() {
        this(false);
    }

    public TermSession(final boolean bl) {
        this.mMsgHandler = new Handler(){

            /*
             * Enabled aggressive block sorting
             * Lifted jumps to return sites
             */
            public void handleMessage(Message message) {
                if (!TermSession.this.mIsRunning) {
                    return;
                }
                if (message.what == 1) {
                    TermSession.this.readFromProcess();
                    return;
                }
                if (message.what != 4) return;
                new Handler(Looper.getMainLooper()).post(new Runnable(){

                    @Override
                    public void run() {
                        TermSession.this.onProcessExit();
                    }
                });
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
             * Exception decompiling
             */
            @Override
            public void run() {
                // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
                // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 6[UNCONDITIONALDOLOOP]
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
                // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
                // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
                // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:664)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:747)
                // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
                // org.benf.cfr.reader.Main.doJar(Main.java:129)
                // org.benf.cfr.reader.Main.main(Main.java:181)
                throw new IllegalStateException("Decompilation failed");
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
                    var1_2.printStackTrace();
                    return;
                }
                catch (InterruptedException var1_3) {
                    var1_3.printStackTrace();
                    return;
                }
            }

            @Override
            public void run() {
                Looper.prepare();
                TermSession.this.mWriterHandler = new Handler(){

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
                };
                this.writeToOutput();
                Looper.loop();
            }

        };
        this.mWriterThread.setName("TermSession output writer");
    }

    static /* synthetic */ InputStream access$200(TermSession termSession) {
        return termSession.mTermIn;
    }

    static /* synthetic */ ByteQueue access$300(TermSession termSession) {
        return termSession.mByteQueue;
    }

    static /* synthetic */ Handler access$400(TermSession termSession) {
        return termSession.mMsgHandler;
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
        this.mEmulator.finish();
        if (this.mTranscriptScreen != null) {
            this.mTranscriptScreen.finish();
        }
        if (this.mWriterHandler != null) {
            this.mWriterHandler.sendEmptyMessage(3);
        }
        try {
            this.mTermIn.close();
            this.mTermOut.close();
        }
        catch (NullPointerException var1_1) {
        }
        catch (IOException var1_2) {}
        if (this.mFinishCallback != null) {
            this.mFinishCallback.onSessionFinish(this);
        }
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

    public String getTitle() {
        return this.mTitle;
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
        this.mEmulator.setKeyListener(this.mKeyListener);
        this.mIsRunning = true;
        this.mReaderThread.start();
        this.mWriterThread.start();
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    protected void notifyTitleChanged() {
        UpdateCallback updateCallback = this.mTitleChangedListener;
        if (updateCallback != null) {
            updateCallback.onUpdate();
        }
    }

    protected void notifyUpdate() {
        if (this.mNotify != null) {
            this.mNotify.onUpdate();
        }
    }

    protected void onProcessExit() {
        this.finish();
    }

    protected void processInput(byte[] arrby, int n, int n2) {
        this.mEmulator.append(arrby, n, n2);
    }

    public void reset() {
        this.mEmulator.reset();
        this.notifyUpdate();
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

    public void setKeyListener(TermKeyListener termKeyListener) {
        this.mKeyListener = termKeyListener;
    }

    public void setTermIn(InputStream inputStream) {
        this.mTermIn = inputStream;
    }

    public void setTermOut(OutputStream outputStream) {
        this.mTermOut = outputStream;
    }

    public void setTitle(String string2) {
        this.mTitle = string2;
        this.notifyTitleChanged();
    }

    public void setTitleChangedListener(UpdateCallback updateCallback) {
        this.mTitleChangedListener = updateCallback;
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
        byte[] arrby = this.mWriteByteBuffer;
        if (n < 128) {
            arrby = arrby.array();
            arrby[0] = (byte)n;
            this.write(arrby, 0, 1);
            return;
        }
        CharBuffer charBuffer = this.mWriteCharBuffer;
        CharsetEncoder charsetEncoder = this.mUTF8Encoder;
        charBuffer.clear();
        arrby.clear();
        Character.toChars(n, charBuffer.array(), 0);
        charsetEncoder.reset();
        charsetEncoder.encode(charBuffer, (ByteBuffer)arrby, true);
        charsetEncoder.flush((ByteBuffer)arrby);
        this.write(arrby.array(), 0, arrby.position() - 1);
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

    public void write(byte[] arrby, int n, int n2) {
        while (n2 > 0) {
            int n3 = this.mWriteQueue.write(arrby, n, n2);
            n += n3;
            n2 -= n3;
            try {
                this.notifyNewOutput();
                continue;
            }
            catch (InterruptedException var1_2) {
                // empty catch block
                break;
            }
        }
    }

    public static interface FinishCallback {
        public void onSessionFinish(TermSession var1);
    }

}

