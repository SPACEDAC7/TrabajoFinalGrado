/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.os.Bundle
 *  android.os.Handler
 *  android.text.ClipboardManager
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.GestureDetector
 *  android.view.GestureDetector$OnGestureListener
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.inputmethod.CompletionInfo
 *  android.view.inputmethod.CorrectionInfo
 *  android.view.inputmethod.EditorInfo
 *  android.view.inputmethod.ExtractedText
 *  android.view.inputmethod.ExtractedTextRequest
 *  android.view.inputmethod.InputConnection
 */
package hecticman.jsterm.emulatorview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Handler;
import android.text.ClipboardManager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import hecticman.jsterm.emulatorview.BaseTextRenderer;
import hecticman.jsterm.emulatorview.Bitmap4x8FontRenderer;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.PaintRenderer;
import hecticman.jsterm.emulatorview.TermKeyListener;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.TerminalEmulator;
import hecticman.jsterm.emulatorview.TextRenderer;
import hecticman.jsterm.emulatorview.TranscriptScreen;
import hecticman.jsterm.emulatorview.UpdateCallback;
import java.io.IOException;

public class EmulatorView
extends View
implements GestureDetector.OnGestureListener {
    private static final int CURSOR_BLINK_PERIOD = 1000;
    private static final int SELECT_TEXT_OFFSET_Y = -40;
    private final boolean LOG_IME = false;
    private final boolean LOG_KEY_EVENTS = false;
    private final String TAG = "EmulatorView";
    private boolean mBackKeySendsCharacter = false;
    private Paint mBackgroundPaint;
    private Runnable mBlinkCursor;
    private int mCharacterHeight;
    private float mCharacterWidth;
    private ColorScheme mColorScheme = BaseTextRenderer.defaultColorScheme;
    private int mColumns;
    private int mControlKeyCode;
    private int mCursorBlink;
    private Paint mCursorPaint;
    private int mCursorStyle;
    private boolean mCursorVisible = true;
    private boolean mDeferInit = false;
    private float mDensity;
    private TerminalEmulator mEmulator;
    private GestureDetector.OnGestureListener mExtGestureListener;
    private int mFnKeyCode;
    private GestureDetector mGestureDetector;
    private final Handler mHandler;
    private String mImeBuffer;
    private boolean mIsActive = false;
    private boolean mIsControlKeySent = false;
    private boolean mIsFnKeySent = false;
    private boolean mIsSelectingText = false;
    private TermKeyListener mKeyListener;
    private boolean mKnownSize;
    private int mLeftColumn;
    private int mRows;
    private float mScaledDensity;
    private float mScrollRemainder;
    private int mSelX1 = -1;
    private int mSelX2 = -1;
    private int mSelXAnchor = -1;
    private int mSelY1 = -1;
    private int mSelY2 = -1;
    private int mSelYAnchor = -1;
    private TermSession mTermSession;
    private TextRenderer mTextRenderer;
    private int mTextSize = 10;
    private int mTopOfScreenMargin;
    private int mTopRow;
    private TranscriptScreen mTranscriptScreen;
    private UpdateCallback mUpdateNotify;
    private boolean mUseCookedIme;
    private int mVisibleColumns;
    private int mVisibleHeight;
    private int mVisibleWidth;

    public EmulatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBlinkCursor = new Runnable(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void run() {
                boolean bl = true;
                if (EmulatorView.this.mCursorBlink != 0) {
                    EmulatorView emulatorView = EmulatorView.this;
                    if (EmulatorView.this.mCursorVisible) {
                        bl = false;
                    }
                    EmulatorView.access$2(emulatorView, bl);
                    EmulatorView.this.mHandler.postDelayed((Runnable)this, 1000);
                } else {
                    EmulatorView.access$2(EmulatorView.this, true);
                }
                EmulatorView.this.invalidate();
            }
        };
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new UpdateCallback(){

            @Override
            public void onUpdate() {
                if (EmulatorView.this.mIsSelectingText) {
                    int n = EmulatorView.this.mEmulator.getScrollCounter();
                    EmulatorView emulatorView = EmulatorView.this;
                    EmulatorView.access$7(emulatorView, emulatorView.mSelY1 - n);
                    emulatorView = EmulatorView.this;
                    EmulatorView.access$9(emulatorView, emulatorView.mSelY2 - n);
                    emulatorView = EmulatorView.this;
                    EmulatorView.access$11(emulatorView, emulatorView.mSelYAnchor - n);
                }
                EmulatorView.this.mEmulator.clearScrollCounter();
                EmulatorView.this.ensureCursorVisible();
                EmulatorView.this.invalidate();
            }
        };
    }

    public EmulatorView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.mBlinkCursor = new ;
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new ;
    }

    public EmulatorView(Context context, TermSession termSession, DisplayMetrics displayMetrics) {
        super(context);
        this.mBlinkCursor = new ;
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new ;
        this.attachSession(termSession);
        this.setDensity(displayMetrics);
    }

    static /* synthetic */ void access$11(EmulatorView emulatorView, int n) {
        emulatorView.mSelYAnchor = n;
    }

    static /* synthetic */ void access$2(EmulatorView emulatorView, boolean bl) {
        emulatorView.mCursorVisible = bl;
    }

    static /* synthetic */ void access$7(EmulatorView emulatorView, int n) {
        emulatorView.mSelY1 = n;
    }

    static /* synthetic */ void access$9(EmulatorView emulatorView, int n) {
        emulatorView.mSelY2 = n;
    }

    private void clearSpecialKeyStatus() {
        if (this.mIsControlKeySent) {
            this.mIsControlKeySent = false;
            this.mKeyListener.handleControlKey(false);
        }
        if (this.mIsFnKeySent) {
            this.mIsFnKeySent = false;
            this.mKeyListener.handleFnKey(false);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void ensureCursorVisible() {
        this.mTopRow = 0;
        if (this.mVisibleColumns <= 0) return;
        {
            int n = this.mEmulator.getCursorCol();
            int n2 = this.mEmulator.getCursorCol() - this.mLeftColumn;
            if (n2 < 0) {
                this.mLeftColumn = n;
                return;
            } else {
                if (n2 < this.mVisibleColumns) return;
                {
                    this.mLeftColumn = n - this.mVisibleColumns + 1;
                    return;
                }
            }
        }
    }

    private boolean handleControlKey(int n, boolean bl) {
        if (n == this.mControlKeyCode) {
            this.mKeyListener.handleControlKey(bl);
            return true;
        }
        return false;
    }

    private boolean handleFnKey(int n, boolean bl) {
        if (n == this.mFnKeyCode) {
            this.mKeyListener.handleFnKey(bl);
            return true;
        }
        return false;
    }

    private void initialize() {
        TermSession termSession = this.mTermSession;
        this.updateText();
        this.mTranscriptScreen = termSession.getTranscriptScreen();
        this.mEmulator = termSession.getEmulator();
        termSession.setUpdateCallback(this.mUpdateNotify);
        this.requestFocus();
    }

    private boolean isInterceptedSystemKey(int n) {
        if (n == 4 && this.mBackKeySendsCharacter) {
            return true;
        }
        return false;
    }

    private boolean isSystemKey(int n, KeyEvent keyEvent) {
        return keyEvent.isSystem();
    }

    private boolean onTouchEventWhileSelectingText(MotionEvent motionEvent) {
        int n = motionEvent.getAction();
        int n2 = (int)(motionEvent.getX() / this.mCharacterWidth);
        int n3 = Math.max(0, (int)((motionEvent.getY() + -40.0f * this.mScaledDensity) / (float)this.mCharacterHeight) + this.mTopRow);
        switch (n) {
            default: {
                this.toggleSelectingText();
                this.invalidate();
                return true;
            }
            case 0: {
                this.mSelXAnchor = n2;
                this.mSelYAnchor = n3;
                this.mSelX1 = n2;
                this.mSelY1 = n3;
                this.mSelX2 = this.mSelX1;
                this.mSelY2 = this.mSelY1;
                return true;
            }
            case 1: 
            case 2: 
        }
        int n4 = Math.min(this.mSelXAnchor, n2);
        n2 = Math.max(this.mSelXAnchor, n2);
        int n5 = Math.min(this.mSelYAnchor, n3);
        n3 = Math.max(this.mSelYAnchor, n3);
        this.mSelX1 = n4;
        this.mSelY1 = n5;
        this.mSelX2 = n2;
        this.mSelY2 = n3;
        if (n == 1) {
            ((ClipboardManager)this.getContext().getApplicationContext().getSystemService("clipboard")).setText((CharSequence)this.getSelectedText().trim());
            this.toggleSelectingText();
        }
        this.invalidate();
        return true;
    }

    private void setImeBuffer(String string2) {
        if (!string2.equals(this.mImeBuffer)) {
            this.invalidate();
        }
        this.mImeBuffer = string2;
    }

    private void updateSize(int n, int n2) {
        this.mColumns = Math.max(1, (int)((float)n / this.mCharacterWidth));
        this.mVisibleColumns = (int)((float)this.mVisibleWidth / this.mCharacterWidth);
        this.mTopOfScreenMargin = this.mTextRenderer.getTopMargin();
        this.mRows = Math.max(1, (n2 - this.mTopOfScreenMargin) / this.mCharacterHeight);
        this.mTermSession.updateSize(this.mColumns, this.mRows);
        this.mTopRow = 0;
        this.mLeftColumn = 0;
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateText() {
        ColorScheme colorScheme = this.mColorScheme;
        this.mTextRenderer = this.mTextSize > 0 ? new PaintRenderer(this.mTextSize, colorScheme) : new Bitmap4x8FontRenderer(this.getResources(), colorScheme);
        this.mBackgroundPaint.setColor(colorScheme.getBackColor());
        this.mCharacterWidth = this.mTextRenderer.getCharacterWidth();
        this.mCharacterHeight = this.mTextRenderer.getCharacterHeight();
        this.updateSize(true);
    }

    public void attachSession(TermSession termSession) {
        this.mTextRenderer = null;
        this.mCursorPaint = new Paint();
        this.mCursorPaint.setARGB(255, 128, 128, 128);
        this.mBackgroundPaint = new Paint();
        this.mTopRow = 0;
        this.mLeftColumn = 0;
        this.mGestureDetector = new GestureDetector((GestureDetector.OnGestureListener)this);
        this.setVerticalScrollBarEnabled(true);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.mTermSession = termSession;
        this.mKeyListener = new TermKeyListener(termSession);
        if (this.mDeferInit) {
            this.mDeferInit = false;
            this.mKnownSize = true;
            this.initialize();
        }
    }

    protected int computeVerticalScrollExtent() {
        return this.mRows;
    }

    protected int computeVerticalScrollOffset() {
        return this.mTranscriptScreen.getActiveRows() + this.mTopRow - this.mRows;
    }

    protected int computeVerticalScrollRange() {
        return this.mTranscriptScreen.getActiveRows();
    }

    public boolean getKeypadApplicationMode() {
        return this.mEmulator.getKeypadApplicationMode();
    }

    public String getSelectedText() {
        return this.mEmulator.getSelectedText(this.mSelX1, this.mSelY1, this.mSelX2, this.mSelY2);
    }

    public boolean getSelectingText() {
        return this.mIsSelectingText;
    }

    public TermSession getTermSession() {
        return this.mTermSession;
    }

    public int getVisibleHeight() {
        return this.mVisibleHeight;
    }

    public int getVisibleWidth() {
        return this.mVisibleWidth;
    }

    public boolean onCheckIsTextEditor() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=3)
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int n = this.mUseCookedIme ? 1 : 0;
        editorInfo.inputType = n;
        return new InputConnection(){
            private int mComposingTextEnd;
            private int mComposingTextStart;
            private int mCursor;
            private boolean mInBatchEdit;
            private int mSelectedTextEnd;
            private int mSelectedTextStart;

            /*
             * Enabled aggressive block sorting
             */
            private void clearComposingText() {
                int n = EmulatorView.this.mImeBuffer.length();
                if (this.mComposingTextStart > n || this.mComposingTextEnd > n) {
                    this.mComposingTextStart = 0;
                    this.mComposingTextEnd = 0;
                    return;
                }
                EmulatorView.this.setImeBuffer(String.valueOf(EmulatorView.this.mImeBuffer.substring(0, this.mComposingTextStart)) + EmulatorView.this.mImeBuffer.substring(this.mComposingTextEnd));
                if (this.mCursor >= this.mComposingTextStart) {
                    this.mCursor = this.mCursor < this.mComposingTextEnd ? this.mComposingTextStart : (this.mCursor -= this.mComposingTextEnd - this.mComposingTextStart);
                }
                this.mComposingTextStart = 0;
                this.mComposingTextEnd = 0;
            }

            /*
             * Enabled aggressive block sorting
             */
            private void mapAndSend(int n) throws IOException {
                n = EmulatorView.this.mKeyListener.mapControlChar(n);
                if (n < 10485760) {
                    EmulatorView.this.mTermSession.write(n);
                } else {
                    EmulatorView.this.mKeyListener.handleKeyCode(n - 10485760, EmulatorView.this.getKeypadApplicationMode());
                }
                EmulatorView.this.clearSpecialKeyStatus();
            }

            private void sendChar(int n) {
                try {
                    this.mapAndSend(n);
                    return;
                }
                catch (IOException var2_2) {
                    return;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            private void sendText(CharSequence charSequence) {
                int n = charSequence.length();
                int n2 = 0;
                do {
                    block6 : {
                        int n3;
                        if (n2 >= n) {
                            return;
                        }
                        try {
                            char c = charSequence.charAt(n2);
                            if (Character.isHighSurrogate(c)) {
                                n3 = n2 + 1;
                                n2 = n3 < n ? Character.toCodePoint(c, charSequence.charAt(n3)) : 65533;
                            }
                            this.mapAndSend(c);
                            break block6;
                        }
                        catch (IOException var1_2) {
                            Log.e((String)"EmulatorView", (String)"error writing ", (Throwable)var1_2);
                            return;
                        }
                        this.mapAndSend(n2);
                        n2 = n3;
                    }
                    ++n2;
                } while (true);
            }

            public boolean beginBatchEdit() {
                EmulatorView.this.setImeBuffer("");
                this.mCursor = 0;
                this.mComposingTextStart = 0;
                this.mComposingTextEnd = 0;
                this.mInBatchEdit = true;
                return true;
            }

            public boolean clearMetaKeyStates(int n) {
                return false;
            }

            @TargetApi(value=3)
            public boolean commitCompletion(CompletionInfo completionInfo) {
                return false;
            }

            @TargetApi(value=11)
            public boolean commitCorrection(CorrectionInfo correctionInfo) {
                return true;
            }

            public boolean commitText(CharSequence charSequence, int n) {
                this.clearComposingText();
                this.sendText(charSequence);
                EmulatorView.this.setImeBuffer("");
                this.mCursor = 0;
                return true;
            }

            /*
             * Enabled aggressive block sorting
             */
            public boolean deleteSurroundingText(int n, int n2) {
                if (n <= 0) {
                    if (n != 0) return true;
                    if (n2 != 0) return true;
                    this.sendKeyEvent(new KeyEvent(0, 67));
                    return true;
                }
                n2 = 0;
                while (n2 < n) {
                    this.sendKeyEvent(new KeyEvent(0, 67));
                    ++n2;
                }
                return true;
            }

            public boolean endBatchEdit() {
                this.mInBatchEdit = false;
                return true;
            }

            public boolean finishComposingText() {
                this.sendText(EmulatorView.this.mImeBuffer);
                EmulatorView.this.setImeBuffer("");
                this.mComposingTextStart = 0;
                this.mComposingTextEnd = 0;
                this.mCursor = 0;
                return true;
            }

            public int getCursorCapsMode(int n) {
                return 0;
            }

            @TargetApi(value=3)
            public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int n) {
                return null;
            }

            public CharSequence getSelectedText(int n) {
                n = EmulatorView.this.mImeBuffer.length();
                if (this.mSelectedTextEnd >= n || this.mSelectedTextStart > this.mSelectedTextEnd) {
                    return "";
                }
                return EmulatorView.this.mImeBuffer.substring(this.mSelectedTextStart, this.mSelectedTextEnd + 1);
            }

            public CharSequence getTextAfterCursor(int n, int n2) {
                if ((n = Math.min(n, EmulatorView.this.mImeBuffer.length() - this.mCursor)) <= 0 || this.mCursor < 0 || this.mCursor >= EmulatorView.this.mImeBuffer.length()) {
                    return "";
                }
                return EmulatorView.this.mImeBuffer.substring(this.mCursor, this.mCursor + n);
            }

            public CharSequence getTextBeforeCursor(int n, int n2) {
                if ((n = Math.min(n, this.mCursor)) <= 0 || this.mCursor < 0 || this.mCursor >= EmulatorView.this.mImeBuffer.length()) {
                    return "";
                }
                return EmulatorView.this.mImeBuffer.substring(this.mCursor - n, this.mCursor);
            }

            public boolean performContextMenuAction(int n) {
                return true;
            }

            public boolean performEditorAction(int n) {
                if (n == 0) {
                    this.sendText("\r");
                }
                return true;
            }

            public boolean performPrivateCommand(String string2, Bundle bundle) {
                return true;
            }

            public boolean reportFullscreenMode(boolean bl) {
                return true;
            }

            public boolean sendKeyEvent(KeyEvent keyEvent) {
                EmulatorView.this.dispatchKeyEvent(keyEvent);
                return true;
            }

            public boolean setComposingRegion(int n, int n2) {
                if (n < n2 && n > 0 && n2 < EmulatorView.this.mImeBuffer.length()) {
                    this.clearComposingText();
                    this.mComposingTextStart = n;
                    this.mComposingTextEnd = n2;
                }
                return true;
            }

            /*
             * Enabled aggressive block sorting
             */
            public boolean setComposingText(CharSequence charSequence, int n) {
                int n2 = EmulatorView.this.mImeBuffer.length();
                if (this.mComposingTextStart > n2 || this.mComposingTextEnd > n2) {
                    return false;
                }
                EmulatorView.this.setImeBuffer(String.valueOf(EmulatorView.this.mImeBuffer.substring(0, this.mComposingTextStart)) + charSequence + EmulatorView.this.mImeBuffer.substring(this.mComposingTextEnd));
                this.mComposingTextEnd = this.mComposingTextStart + charSequence.length();
                n = n > 0 ? this.mComposingTextEnd + n - 1 : this.mComposingTextStart - n;
                this.mCursor = n;
                return true;
            }

            /*
             * Enabled aggressive block sorting
             */
            public boolean setSelection(int n, int n2) {
                int n3 = EmulatorView.this.mImeBuffer.length();
                if (n == n2 && n > 0 && n < n3) {
                    this.mSelectedTextEnd = 0;
                    this.mSelectedTextStart = 0;
                    this.mCursor = n;
                    return true;
                }
                if (n >= n2) return true;
                if (n <= 0) return true;
                if (n2 >= n3) return true;
                this.mSelectedTextStart = n;
                this.mSelectedTextEnd = n2;
                this.mCursor = n;
                return true;
            }
        };
    }

    public boolean onDown(MotionEvent motionEvent) {
        if (this.mExtGestureListener != null && this.mExtGestureListener.onDown(motionEvent)) {
            return true;
        }
        this.mScrollRemainder = 0.0f;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onDraw(Canvas canvas) {
        this.updateSize(false);
        if (this.mEmulator != null) {
            int n = this.getWidth();
            int n2 = this.getHeight();
            canvas.drawRect(0.0f, 0.0f, (float)n, (float)n2, this.mBackgroundPaint);
            float f = - this.mLeftColumn;
            float f2 = this.mCharacterWidth;
            float f3 = this.mCharacterHeight + this.mTopOfScreenMargin;
            int n3 = this.mTopRow;
            int n4 = this.mRows;
            int n5 = this.mEmulator.getCursorCol();
            int n6 = this.mEmulator.getCursorRow();
            for (int i = this.mTopRow; i < n3 + n4; f3 += (float)this.mCharacterHeight, ++i) {
                int n7 = n = -1;
                if (i == n6) {
                    n7 = n;
                    if (this.mCursorVisible) {
                        n7 = n5;
                    }
                }
                int n8 = -1;
                int n9 = -1;
                n2 = n8;
                n = n9;
                if (i >= this.mSelY1) {
                    n2 = n8;
                    n = n9;
                    if (i <= this.mSelY2) {
                        n2 = n8;
                        if (i == this.mSelY1) {
                            n2 = this.mSelX1;
                        }
                        n = i == this.mSelY2 ? this.mSelX2 : this.mColumns;
                    }
                }
                this.mTranscriptScreen.drawText(i, canvas, f * f2, f3, this.mTextRenderer, n7, n2, n, this.mImeBuffer);
            }
        }
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mExtGestureListener != null && this.mExtGestureListener.onFling(motionEvent, motionEvent2, f, f2)) {
            return true;
        }
        this.mScrollRemainder = 0.0f;
        this.onScroll(motionEvent, motionEvent2, 0.1f * f, -0.1f * f2);
        return true;
    }

    public boolean onJumpTapDown(MotionEvent motionEvent, MotionEvent motionEvent2) {
        this.mTopRow = 0;
        this.invalidate();
        return true;
    }

    public boolean onJumpTapUp(MotionEvent motionEvent, MotionEvent motionEvent2) {
        this.mTopRow = - this.mTranscriptScreen.getActiveTranscriptRows();
        this.invalidate();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        if (this.handleControlKey(n, true) || this.handleFnKey(n, true)) {
            return true;
        }
        if (this.isSystemKey(n, keyEvent) && !this.isInterceptedSystemKey(n)) {
            return super.onKeyDown(n, keyEvent);
        }
        try {
            this.mKeyListener.keyDown(n, keyEvent, this.getKeypadApplicationMode());
            return true;
        }
        catch (IOException var2_3) {
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        if (this.handleControlKey(n, false) || this.handleFnKey(n, false)) {
            return true;
        }
        if (this.isSystemKey(n, keyEvent) && !this.isInterceptedSystemKey(n)) {
            return super.onKeyUp(n, keyEvent);
        }
        this.mKeyListener.keyUp(n, keyEvent);
        this.clearSpecialKeyStatus();
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.showContextMenu();
    }

    public void onPause() {
        if (this.mCursorBlink != 0) {
            this.mHandler.removeCallbacks(this.mBlinkCursor);
        }
        this.mIsActive = false;
    }

    public void onResume() {
        this.mIsActive = true;
        this.updateSize(false);
        if (this.mCursorBlink != 0) {
            this.mHandler.postDelayed(this.mBlinkCursor, 1000);
        }
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mExtGestureListener != null && this.mExtGestureListener.onScroll(motionEvent, motionEvent2, f, f2)) {
            return true;
        }
        f = f2 + this.mScrollRemainder;
        int n = (int)(f / (float)this.mCharacterHeight);
        this.mScrollRemainder = f - (float)(this.mCharacterHeight * n);
        this.mTopRow = Math.min(0, Math.max(- this.mTranscriptScreen.getActiveTranscriptRows(), this.mTopRow + n));
        this.invalidate();
        return true;
    }

    public void onShowPress(MotionEvent motionEvent) {
        if (this.mExtGestureListener != null) {
            this.mExtGestureListener.onShowPress(motionEvent);
        }
    }

    public void onSingleTapConfirmed(MotionEvent motionEvent) {
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (this.mExtGestureListener != null && this.mExtGestureListener.onSingleTapUp(motionEvent)) {
            return true;
        }
        this.requestFocus();
        return true;
    }

    protected void onSizeChanged(int n, int n2, int n3, int n4) {
        if (this.mTermSession == null) {
            this.mDeferInit = true;
            return;
        }
        if (!this.mKnownSize) {
            this.mKnownSize = true;
            this.initialize();
            return;
        }
        this.updateSize(false);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mIsSelectingText) {
            return this.onTouchEventWhileSelectingText(motionEvent);
        }
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    public void page(int n) {
        this.mTopRow = Math.min(0, Math.max(- this.mTranscriptScreen.getActiveTranscriptRows(), this.mTopRow + this.mRows * n));
        this.invalidate();
    }

    public void pageHorizontal(int n) {
        this.mLeftColumn = Math.max(0, Math.min(this.mLeftColumn + n, this.mColumns - this.mVisibleColumns));
        this.invalidate();
    }

    public void sendControlKey() {
        this.mIsControlKeySent = true;
        this.mKeyListener.handleControlKey(true);
    }

    public void sendFnKey() {
        this.mIsFnKeySent = true;
        this.mKeyListener.handleFnKey(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setBackKeyCharacter(int n) {
        this.mKeyListener.setBackKeyCharacter(n);
        boolean bl = n != 0;
        this.mBackKeySendsCharacter = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setColorScheme(ColorScheme colorScheme) {
        this.mColorScheme = colorScheme == null ? BaseTextRenderer.defaultColorScheme : colorScheme;
        this.updateText();
    }

    public void setControlKeyCode(int n) {
        this.mControlKeyCode = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCursorStyle(int n, int n2) {
        this.mCursorStyle = n;
        if (n2 != 0 && this.mCursorBlink == 0) {
            this.mHandler.postDelayed(this.mBlinkCursor, 1000);
        } else if (n2 == 0 && this.mCursorBlink != 0) {
            this.mHandler.removeCallbacks(this.mBlinkCursor);
        }
        this.mCursorBlink = n2;
    }

    public void setDensity(DisplayMetrics displayMetrics) {
        if (this.mDensity == 0.0f) {
            this.mTextSize = (int)((float)this.mTextSize * displayMetrics.density);
        }
        this.mDensity = displayMetrics.density;
        this.mScaledDensity = displayMetrics.scaledDensity;
    }

    public void setExtGestureListener(GestureDetector.OnGestureListener onGestureListener) {
        this.mExtGestureListener = onGestureListener;
    }

    public void setFnKeyCode(int n) {
        this.mFnKeyCode = n;
    }

    public void setTextSize(int n) {
        this.mTextSize = (int)((float)n * this.mDensity);
        this.updateText();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTextSize(boolean bl) {
        this.mTextSize = bl ? (int)((float)this.mTextSize + this.mDensity) : (int)((float)this.mTextSize - this.mDensity);
        this.updateText();
    }

    public void setUseCookedIME(boolean bl) {
        this.mUseCookedIme = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void toggleSelectingText() {
        boolean bl = false;
        boolean bl2 = !this.mIsSelectingText;
        this.mIsSelectingText = bl2;
        bl2 = this.mIsSelectingText ? bl : true;
        this.setVerticalScrollBarEnabled(bl2);
        if (!this.mIsSelectingText) {
            this.mSelX1 = -1;
            this.mSelY1 = -1;
            this.mSelX2 = -1;
            this.mSelY2 = -1;
        }
    }

    public void updateSize(boolean bl) {
        if (this.mKnownSize) {
            int n = this.getWidth();
            int n2 = this.getHeight();
            if (bl || n != this.mVisibleWidth || n2 != this.mVisibleHeight) {
                this.mVisibleWidth = n;
                this.mVisibleHeight = n2;
                this.updateSize(this.mVisibleWidth, this.mVisibleHeight);
            }
        }
    }

}

