/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.os.Build
 *  android.os.Bundle
 *  android.os.Handler
 *  android.text.Spannable
 *  android.text.SpannableStringBuilder
 *  android.text.style.URLSpan
 *  android.text.util.Linkify
 *  android.text.util.Linkify$MatchFilter
 *  android.text.util.Linkify$TransformFilter
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.GestureDetector
 *  android.view.GestureDetector$OnGestureListener
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.inputmethod.BaseInputConnection
 *  android.view.inputmethod.CompletionInfo
 *  android.view.inputmethod.CorrectionInfo
 *  android.view.inputmethod.EditorInfo
 *  android.view.inputmethod.ExtractedText
 *  android.view.inputmethod.ExtractedTextRequest
 *  android.view.inputmethod.InputConnection
 *  android.widget.Scroller
 */
package jackpal.androidterm.emulatorview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.widget.Scroller;
import jackpal.androidterm.emulatorview.BaseTextRenderer;
import jackpal.androidterm.emulatorview.Bitmap4x8FontRenderer;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.PaintRenderer;
import jackpal.androidterm.emulatorview.TermKeyListener;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.TerminalEmulator;
import jackpal.androidterm.emulatorview.TextRenderer;
import jackpal.androidterm.emulatorview.TranscriptScreen;
import jackpal.androidterm.emulatorview.UnicodeTranscript;
import jackpal.androidterm.emulatorview.UpdateCallback;
import jackpal.androidterm.emulatorview.compat.ClipboardManagerCompatFactory;
import jackpal.androidterm.emulatorview.compat.Patterns;
import java.io.IOException;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.regex.Pattern;

public class EmulatorView
extends View
implements GestureDetector.OnGestureListener {
    private static final int CURSOR_BLINK_PERIOD = 1000;
    private static final boolean LOG_IME = false;
    private static final boolean LOG_KEY_EVENTS = false;
    private static final int SELECT_TEXT_OFFSET_Y = -40;
    private static final String TAG = "EmulatorView";
    private static Linkify.MatchFilter sHttpMatchFilter;
    private static final boolean sTrapAltAndMeta;
    private boolean mBackKeySendsCharacter = false;
    private Paint mBackgroundPaint;
    private Runnable mBlinkCursor;
    private int mCharacterHeight;
    private float mCharacterWidth;
    private ColorScheme mColorScheme = BaseTextRenderer.defaultColorScheme;
    private int mColumns;
    private int mControlKeyCode;
    private int mCursorBlink;
    private boolean mCursorVisible = true;
    private boolean mDeferInit = false;
    private float mDensity;
    private TerminalEmulator mEmulator;
    private GestureDetector.OnGestureListener mExtGestureListener;
    private Runnable mFlingRunner;
    private int mFnKeyCode;
    private Paint mForegroundPaint;
    private GestureDetector mGestureDetector;
    private final Handler mHandler;
    private String mImeBuffer;
    private boolean mIsControlKeySent = false;
    private boolean mIsFnKeySent = false;
    private boolean mIsSelectingText = false;
    private TermKeyListener mKeyListener;
    private boolean mKnownSize;
    private int mLeftColumn;
    private Hashtable<Integer, URLSpan[]> mLinkLayer;
    private boolean mMouseTracking;
    private MouseTrackingFlingRunner mMouseTrackingFlingRunner;
    private int mRows;
    private float mScaledDensity;
    private float mScrollRemainder;
    private Scroller mScroller;
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
    private UpdateCallback mUpdateNotify;
    private boolean mUseCookedIme;
    private int mVisibleColumns;
    private int mVisibleHeight;
    private int mVisibleRows;
    private int mVisibleWidth;

    static {
        sTrapAltAndMeta = Build.MODEL.contains("Transformer TF101");
        sHttpMatchFilter = new HttpMatchFilter();
    }

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
                    emulatorView.mCursorVisible = bl;
                    EmulatorView.this.mHandler.postDelayed((Runnable)this, 1000);
                } else {
                    EmulatorView.this.mCursorVisible = true;
                }
                EmulatorView.this.invalidate();
            }
        };
        this.mFlingRunner = new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Lifted jumps to return sites
             */
            @Override
            public void run() {
                if (EmulatorView.this.mScroller.isFinished()) {
                    return;
                }
                if (EmulatorView.this.isMouseTrackingActive()) return;
                boolean bl = EmulatorView.this.mScroller.computeScrollOffset();
                int n = EmulatorView.this.mScroller.getCurrY();
                if (n != EmulatorView.this.mTopRow) {
                    EmulatorView.this.mTopRow = n;
                    EmulatorView.this.invalidate();
                }
                if (!bl) return;
                EmulatorView.this.post((Runnable)this);
            }
        };
        this.mLinkLayer = new Hashtable();
        this.mMouseTrackingFlingRunner = new MouseTrackingFlingRunner();
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new UpdateCallback(){

            @Override
            public void onUpdate() {
                if (EmulatorView.this.mIsSelectingText) {
                    int n = EmulatorView.this.mEmulator.getScrollCounter();
                    EmulatorView.access$1020(EmulatorView.this, n);
                    EmulatorView.access$1120(EmulatorView.this, n);
                    EmulatorView.access$1220(EmulatorView.this, n);
                }
                EmulatorView.this.mEmulator.clearScrollCounter();
                EmulatorView.this.ensureCursorVisible();
                EmulatorView.this.invalidate();
            }
        };
        this.commonConstructor(context);
    }

    public EmulatorView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.mBlinkCursor = new ;
        this.mFlingRunner = new ;
        this.mLinkLayer = new Hashtable();
        this.mMouseTrackingFlingRunner = new MouseTrackingFlingRunner();
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new ;
        this.commonConstructor(context);
    }

    public EmulatorView(Context context, TermSession termSession, DisplayMetrics displayMetrics) {
        super(context);
        this.mBlinkCursor = new ;
        this.mFlingRunner = new ;
        this.mLinkLayer = new Hashtable();
        this.mMouseTrackingFlingRunner = new MouseTrackingFlingRunner();
        this.mImeBuffer = "";
        this.mHandler = new Handler();
        this.mUpdateNotify = new ;
        this.attachSession(termSession);
        this.setDensity(displayMetrics);
        this.commonConstructor(context);
    }

    static /* synthetic */ int access$1020(EmulatorView emulatorView, int n) {
        emulatorView.mSelY1 = n = emulatorView.mSelY1 - n;
        return n;
    }

    static /* synthetic */ int access$1120(EmulatorView emulatorView, int n) {
        emulatorView.mSelY2 = n = emulatorView.mSelY2 - n;
        return n;
    }

    static /* synthetic */ int access$1220(EmulatorView emulatorView, int n) {
        emulatorView.mSelYAnchor = n = emulatorView.mSelYAnchor - n;
        return n;
    }

    private void clearSpecialKeyStatus() {
        if (this.mIsControlKeySent) {
            this.mIsControlKeySent = false;
            this.mKeyListener.handleControlKey(false);
            this.invalidate();
        }
        if (this.mIsFnKeySent) {
            this.mIsFnKeySent = false;
            this.mKeyListener.handleFnKey(false);
            this.invalidate();
        }
    }

    private void commonConstructor(Context context) {
        this.mScroller = new Scroller(context);
        this.mMouseTrackingFlingRunner.mScroller = new Scroller(context);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private int createLinks(int var1_1) {
        var4_2 = this.mEmulator.getScreen();
        var3_3 = var4_2.getScriptLine(var1_1);
        var15_4 = 1;
        if (var3_3 == null) {
            return 1;
        }
        var21_5 = var4_2.isBasicLine(var1_1);
        if (var21_5) {
            var8_6 = var3_3.length;
        } else {
            var7_7 = 0;
            do {
                var8_6 = var7_7;
                if (var3_3[var7_7] == '\u0000') break;
                ++var7_7;
            } while (true);
        }
        var3_3 = new SpannableStringBuilder((CharSequence)new String((char[])var3_3, 0, var8_6));
        var23_8 = var4_2.getScriptLineWrap(var1_1);
        do {
            if (!var23_8 || (var5_9 = var4_2.getScriptLine(var9_11 = var1_1 + var15_4)) == null) {
                Linkify.addLinks((Spannable)var3_3, (Pattern)Patterns.WEB_URL, (String)null, (Linkify.MatchFilter)EmulatorView.sHttpMatchFilter, (Linkify.TransformFilter)null);
                var4_2 = (URLSpan[])var3_3.getSpans(0, var3_3.length(), (Class)URLSpan.class);
                if (var4_2.length <= 0) return var15_4;
                var19_12 = this.mColumns;
                var18_13 = this.mTopRow;
                var5_9 = new URLSpan[var15_4][];
                for (var7_7 = 0; var7_7 < var15_4; ++var7_7) {
                    var5_9[var7_7] = new URLSpan[var19_12];
                    Arrays.fill((Object[])var5_9[var7_7], null);
                }
                break;
            }
            var23_8 = var4_2.isBasicLine(var9_11);
            var22_10 = var21_5;
            if (var21_5) {
                var22_10 = var21_5;
                if (!var23_8) {
                    var22_10 = var23_8;
                }
            }
            if (var23_8) {
                var8_6 = var5_9.length;
            } else {
                var7_7 = 0;
                do {
                    var8_6 = var7_7;
                    if (var5_9[var7_7] == '\u0000') break;
                    ++var7_7;
                } while (true);
            }
            var3_3.append((CharSequence)new String(var5_9, 0, var8_6));
            var23_8 = var4_2.getScriptLineWrap(var9_11);
            ++var15_4;
            var21_5 = var22_10;
        } while (true);
        var16_14 = 0;
        block4 : do {
            if (var16_14 >= var4_2.length) ** GOTO lbl67
            var6_16 = var4_2[var16_14];
            var13_20 = var3_3.getSpanStart((Object)var6_16);
            var20_23 = var3_3.getSpanEnd((Object)var6_16);
            if (var21_5) {
                var7_7 = var20_23 - 1;
                var9_11 = var13_20 / this.mColumns;
                var10_17 = var13_20 % this.mColumns;
                var17_22 = var7_7 / this.mColumns;
                var11_18 = var7_7 % this.mColumns;
            } else {
                var7_7 = 0;
                var8_6 = 0;
                break;
lbl67: // 1 sources:
                var7_7 = 0;
                while (var7_7 < var15_4) {
                    this.mLinkLayer.put(var1_1 - var18_13 + var7_7, (URLSpan[])var5_9[var7_7]);
                    ++var7_7;
                }
                return var15_4;
            }
            do {
                for (var7_7 = var9_11; var7_7 <= var17_22; ++var7_7) {
                    var8_6 = var7_7 == var9_11 ? var10_17 : 0;
                    var12_19 = var7_7 == var17_22 ? var11_18 : this.mColumns - 1;
                    Arrays.fill((Object[])var5_9[var7_7], var8_6, var12_19 + 1, (Object)var6_16);
                }
                ++var16_14;
                continue block4;
                break;
            } while (true);
            break;
        } while (true);
        for (var10_17 = 0; var10_17 < var13_20; ++var10_17) {
            var2_15 = var3_3.charAt(var10_17);
            var8_6 = Character.isHighSurrogate(var2_15) ? (var8_6 += UnicodeTranscript.charWidth(var2_15, var3_3.charAt(++var10_17))) : (var8_6 += UnicodeTranscript.charWidth(var2_15));
            var9_11 = var8_6;
            var11_18 = var7_7;
            if (var8_6 >= var19_12) {
                var11_18 = var7_7 + 1;
                var9_11 = var8_6 % var19_12;
            }
            var8_6 = var9_11;
            var7_7 = var11_18;
        }
        var12_19 = var7_7;
        var14_21 = var8_6;
        do {
            var11_18 = var14_21;
            var17_22 = var12_19;
            var10_17 = var8_6;
            var9_11 = var7_7;
            if (var13_20 >= var20_23) ** continue;
            var2_15 = var3_3.charAt(var13_20);
            var9_11 = Character.isHighSurrogate(var2_15) != false ? var14_21 + UnicodeTranscript.charWidth(var2_15, var3_3.charAt(++var13_20)) : var14_21 + UnicodeTranscript.charWidth(var2_15);
            var14_21 = var9_11;
            var10_17 = var12_19;
            if (var9_11 >= var19_12) {
                var10_17 = var12_19 + 1;
                var14_21 = var9_11 % var19_12;
            }
            ++var13_20;
            var12_19 = var10_17;
        } while (true);
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
            this.invalidate();
            return true;
        }
        return false;
    }

    private boolean handleFnKey(int n, boolean bl) {
        if (n == this.mFnKeyCode) {
            this.mKeyListener.handleFnKey(bl);
            this.invalidate();
            return true;
        }
        return false;
    }

    private boolean handleHardwareControlKey(int n, KeyEvent keyEvent) {
        boolean bl = false;
        boolean bl2 = false;
        if (n == 113 || n == 114) {
            bl = bl2;
            if (keyEvent.getAction() == 0) {
                bl = true;
            }
            this.mKeyListener.handleHardwareControlKey(bl);
            this.invalidate();
            bl = true;
        }
        return bl;
    }

    private void initialize() {
        TermSession termSession = this.mTermSession;
        this.updateText();
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
            ClipboardManagerCompatFactory.getManager(this.getContext().getApplicationContext()).setText(this.getSelectedText().trim());
            this.toggleSelectingText();
        }
        this.invalidate();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sendMouseEventCode(MotionEvent arrby, int n) {
        int n2 = (int)(arrby.getX() / this.mCharacterWidth) + 1;
        int n3 = (int)((arrby.getY() - (float)this.mTopOfScreenMargin) / (float)this.mCharacterHeight) + 1;
        boolean bl = n2 < 1 || n3 < 1 || n2 > this.mColumns || n3 > this.mRows || n2 > 223 || n3 > 223;
        if (n < 0 || n > 223) {
            Log.e((String)"EmulatorView", (String)("mouse button_code out of range: " + n));
            return;
        } else {
            if (bl) return;
            {
                arrby = new byte[]{27, 91, 77, (byte)(n + 32), (byte)(n2 + 32), (byte)(n3 + 32)};
                this.mTermSession.write(arrby, 0, arrby.length);
                return;
            }
        }
    }

    private void setImeBuffer(String string2) {
        if (!string2.equals(this.mImeBuffer)) {
            this.invalidate();
        }
        this.mImeBuffer = string2;
    }

    private void updateSize(int n, int n2) {
        this.mColumns = Math.max(1, (int)((float)n / this.mCharacterWidth));
        this.mVisibleColumns = Math.max(1, (int)((float)this.mVisibleWidth / this.mCharacterWidth));
        this.mTopOfScreenMargin = this.mTextRenderer.getTopMargin();
        this.mRows = Math.max(1, (n2 - this.mTopOfScreenMargin) / this.mCharacterHeight);
        this.mVisibleRows = Math.max(1, (this.mVisibleHeight - this.mTopOfScreenMargin) / this.mCharacterHeight);
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
        this.mForegroundPaint.setColor(colorScheme.getForeColor());
        this.mBackgroundPaint.setColor(colorScheme.getBackColor());
        this.mCharacterWidth = this.mTextRenderer.getCharacterWidth();
        this.mCharacterHeight = this.mTextRenderer.getCharacterHeight();
        this.updateSize(true);
    }

    public void attachSession(TermSession termSession) {
        this.mTextRenderer = null;
        this.mForegroundPaint = new Paint();
        this.mBackgroundPaint = new Paint();
        this.mTopRow = 0;
        this.mLeftColumn = 0;
        this.mGestureDetector = new GestureDetector((GestureDetector.OnGestureListener)this);
        this.setVerticalScrollBarEnabled(true);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.mTermSession = termSession;
        this.mKeyListener = new TermKeyListener(termSession);
        termSession.setKeyListener(this.mKeyListener);
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
        return this.mEmulator.getScreen().getActiveRows() + this.mTopRow - this.mRows;
    }

    protected int computeVerticalScrollRange() {
        return this.mEmulator.getScreen().getActiveRows();
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

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public String getURLat(float f, float f2) {
        float f3 = this.getWidth();
        float f4 = this.getHeight();
        if (f3 == 0.0f) return null;
        if (f4 == 0.0f) {
            return null;
        }
        int n = (int)Math.floor((float)this.mRows * (f2 /= f4));
        int n2 = (int)Math.floor((float)this.mColumns * (f /= f3));
        URLSpan uRLSpan = this.mLinkLayer.get(n);
        if (uRLSpan == null) return null;
        if ((uRLSpan = uRLSpan[n2]) == null) return null;
        return uRLSpan.getURL();
    }

    public int getVisibleColumns() {
        return this.mVisibleColumns;
    }

    public int getVisibleHeight() {
        return this.mVisibleHeight;
    }

    public int getVisibleRows() {
        return this.mVisibleRows;
    }

    public int getVisibleWidth() {
        return this.mVisibleWidth;
    }

    public boolean isMouseTrackingActive() {
        if (this.mEmulator.getMouseTrackingMode() != 0 && this.mMouseTracking) {
            return true;
        }
        return false;
    }

    public boolean onCheckIsTextEditor() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int n = this.mUseCookedIme ? 1 : 0;
        editorInfo.inputType = n;
        return new BaseInputConnection(this, true){
            private int mComposingTextEnd;
            private int mComposingTextStart;
            private int mCursor;
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
                EmulatorView.this.setImeBuffer(EmulatorView.this.mImeBuffer.substring(0, this.mComposingTextStart) + EmulatorView.this.mImeBuffer.substring(this.mComposingTextEnd));
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
                    EmulatorView.this.mKeyListener.handleKeyCode(n - 10485760, null, EmulatorView.this.getKeypadApplicationMode());
                }
                EmulatorView.this.clearSpecialKeyStatus();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            private void sendText(CharSequence charSequence) {
                int n = charSequence.length();
                int n2 = 0;
                while (n2 < n) {
                    block5 : {
                        int n3;
                        try {
                            char c = charSequence.charAt(n2);
                            if (Character.isHighSurrogate(c)) {
                                n3 = n2 + 1;
                                n2 = n3 < n ? Character.toCodePoint(c, charSequence.charAt(n3)) : 65533;
                            }
                            this.mapAndSend(c);
                            break block5;
                        }
                        catch (IOException var1_2) {
                            Log.e((String)"EmulatorView", (String)"error writing ", (Throwable)var1_2);
                        }
                        return;
                        this.mapAndSend(n2);
                        n2 = n3;
                    }
                    ++n2;
                }
            }

            public boolean beginBatchEdit() {
                EmulatorView.this.setImeBuffer("");
                this.mCursor = 0;
                this.mComposingTextStart = 0;
                this.mComposingTextEnd = 0;
                return true;
            }

            public boolean clearMetaKeyStates(int n) {
                return false;
            }

            public boolean commitCompletion(CompletionInfo completionInfo) {
                return false;
            }

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

            public boolean deleteSurroundingText(int n, int n2) {
                if (n > 0) {
                    for (n2 = 0; n2 < n; ++n2) {
                        this.sendKeyEvent(new KeyEvent(0, 67));
                    }
                } else if (n == 0 && n2 == 0) {
                    this.sendKeyEvent(new KeyEvent(0, 67));
                }
                return true;
            }

            public boolean endBatchEdit() {
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
                int n2 = 0;
                if ((n & 4096) != 0) {
                    n2 = 0 | 4096;
                }
                return n2;
            }

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
                EmulatorView.this.setImeBuffer(EmulatorView.this.mImeBuffer.substring(0, this.mComposingTextStart) + charSequence + EmulatorView.this.mImeBuffer.substring(this.mComposingTextEnd));
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
            boolean bl = this.mEmulator.getReverseVideo();
            this.mTextRenderer.setReverseVideo(bl);
            Object object = bl ? this.mForegroundPaint : this.mBackgroundPaint;
            canvas.drawRect(0.0f, 0.0f, (float)n, (float)n2, (Paint)object);
            float f = - this.mLeftColumn;
            float f2 = this.mCharacterWidth;
            float f3 = this.mCharacterHeight + this.mTopOfScreenMargin;
            int n3 = this.mTopRow;
            int n4 = this.mRows;
            int n5 = this.mEmulator.getCursorCol();
            int n6 = this.mEmulator.getCursorRow();
            boolean bl2 = this.mCursorVisible && this.mEmulator.getShowCursor();
            String string2 = this.mImeBuffer;
            n = this.mKeyListener.getCombiningAccent();
            object = string2;
            if (n != 0) {
                object = string2 + String.valueOf((char)n);
            }
            int n7 = this.mKeyListener.getCursorMode();
            n = 0;
            for (int i = this.mTopRow; i < n3 + n4; ++i) {
                int n8 = n2 = -1;
                if (i == n6) {
                    n8 = n2;
                    if (bl2) {
                        n8 = n5;
                    }
                }
                int n9 = -1;
                int n10 = -1;
                int n11 = n9;
                n2 = n10;
                if (i >= this.mSelY1) {
                    n11 = n9;
                    n2 = n10;
                    if (i <= this.mSelY2) {
                        n11 = n9;
                        if (i == this.mSelY1) {
                            n11 = this.mSelX1;
                        }
                        n2 = i == this.mSelY2 ? this.mSelX2 : this.mColumns;
                    }
                }
                this.mEmulator.getScreen().drawText(i, canvas, f * f2, f3, this.mTextRenderer, n8, n11, n2, (String)object, n7);
                f3 += (float)this.mCharacterHeight;
                n2 = n;
                if (n == 0) {
                    n2 = this.createLinks(i);
                }
                n = n2 - 1;
            }
        }
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mExtGestureListener != null && this.mExtGestureListener.onFling(motionEvent, motionEvent2, f, f2)) {
            return true;
        }
        this.mScrollRemainder = 0.0f;
        if (this.isMouseTrackingActive()) {
            this.mMouseTrackingFlingRunner.fling(motionEvent, f, f2);
            return true;
        }
        this.mScroller.fling(0, this.mTopRow, - (int)(f * 0.25f), - (int)(f2 * 0.25f), 0, 0, - this.mEmulator.getScreen().getActiveTranscriptRows(), 0);
        this.post(this.mFlingRunner);
        return true;
    }

    public boolean onJumpTapDown(MotionEvent motionEvent, MotionEvent motionEvent2) {
        this.mTopRow = 0;
        this.invalidate();
        return true;
    }

    public boolean onJumpTapUp(MotionEvent motionEvent, MotionEvent motionEvent2) {
        this.mTopRow = - this.mEmulator.getScreen().getActiveTranscriptRows();
        this.invalidate();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        if (this.handleControlKey(n, true)) {
            return true;
        }
        if (this.handleFnKey(n, true)) return true;
        if (this.isSystemKey(n, keyEvent) && !this.isInterceptedSystemKey(n)) {
            return super.onKeyDown(n, keyEvent);
        }
        try {
            int n2 = this.mKeyListener.getCombiningAccent();
            int n3 = this.mKeyListener.getCursorMode();
            this.mKeyListener.keyDown(n, keyEvent, this.getKeypadApplicationMode(), TermKeyListener.isEventFromToggleDevice(keyEvent));
            if (this.mKeyListener.getCombiningAccent() == n2) {
                if (this.mKeyListener.getCursorMode() == n3) return true;
            }
            this.invalidate();
            return true;
        }
        catch (IOException var2_3) {
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onKeyPreIme(int n, KeyEvent keyEvent) {
        boolean bl = true;
        if (sTrapAltAndMeta) {
            boolean bl2 = this.mKeyListener.getAltSendsEsc();
            boolean bl3 = (keyEvent.getMetaState() & 2) != 0;
            boolean bl4 = (keyEvent.getMetaState() & 65536) != 0;
            boolean bl5 = n == 57 || n == 58;
            boolean bl6 = this.mKeyListener.isAltActive();
            if (bl2 && (bl3 || bl5 || bl6 || bl4)) {
                if (keyEvent.getAction() == 0) return this.onKeyDown(n, keyEvent);
                return this.onKeyUp(n, keyEvent);
            }
        }
        if (this.handleHardwareControlKey(n, keyEvent)) return bl;
        if (!this.mKeyListener.isCtrlActive()) {
            return super.onKeyPreIme(n, keyEvent);
        }
        if (keyEvent.getAction() != 0) return this.onKeyUp(n, keyEvent);
        return this.onKeyDown(n, keyEvent);
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
        if (this.mKeyListener != null) {
            this.mKeyListener.onPause();
        }
    }

    public void onResume() {
        this.updateSize(false);
        if (this.mCursorBlink != 0) {
            this.mHandler.postDelayed(this.mBlinkCursor, 1000);
        }
        if (this.mKeyListener != null) {
            this.mKeyListener.onResume();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mExtGestureListener == null || !this.mExtGestureListener.onScroll(motionEvent, motionEvent2, f, f2)) {
            f = f2 + this.mScrollRemainder;
            int n = (int)(f / (float)this.mCharacterHeight);
            this.mScrollRemainder = f - (float)(this.mCharacterHeight * n);
            if (!this.isMouseTrackingActive()) {
                this.mTopRow = Math.min(0, Math.max(- this.mEmulator.getScreen().getActiveTranscriptRows(), this.mTopRow + n));
                this.invalidate();
                return true;
            }
            do {
                if (n <= 0) break;
                this.sendMouseEventCode(motionEvent, 65);
                --n;
            } while (true);
            for (int i = n; i < 0; ++i) {
                this.sendMouseEventCode(motionEvent, 64);
            }
        }
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
        if (this.isMouseTrackingActive()) {
            this.sendMouseEventCode(motionEvent, 0);
            this.sendMouseEventCode(motionEvent, 3);
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
        this.mTopRow = Math.min(0, Math.max(- this.mEmulator.getScreen().getActiveTranscriptRows(), this.mTopRow + this.mRows * n));
        this.invalidate();
    }

    public void pageHorizontal(int n) {
        this.mLeftColumn = Math.max(0, Math.min(this.mLeftColumn + n, this.mColumns - this.mVisibleColumns));
        this.invalidate();
    }

    public void sendControlKey() {
        this.mIsControlKeySent = true;
        this.mKeyListener.handleControlKey(true);
        this.invalidate();
    }

    public void sendFnKey() {
        this.mIsFnKeySent = true;
        this.mKeyListener.handleFnKey(true);
        this.invalidate();
    }

    public void setAltSendsEsc(boolean bl) {
        this.mKeyListener.setAltSendsEsc(bl);
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

    public void setMouseTracking(boolean bl) {
        this.mMouseTracking = bl;
    }

    public void setTermType(String string2) {
        this.mKeyListener.setTermType(string2);
    }

    public void setTextSize(int n) {
        this.mTextSize = (int)((float)n * this.mDensity);
        this.updateText();
    }

    public void setUseCookedIME(boolean bl) {
        this.mUseCookedIme = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void toggleSelectingText() {
        boolean bl = true;
        boolean bl2 = !this.mIsSelectingText;
        this.mIsSelectingText = bl2;
        bl2 = !this.mIsSelectingText ? bl : false;
        this.setVerticalScrollBarEnabled(bl2);
        if (!this.mIsSelectingText) {
            this.mSelX1 = -1;
            this.mSelY1 = -1;
            this.mSelX2 = -1;
            this.mSelY2 = -1;
        }
    }

    public void updateSize(boolean bl) {
        this.mLinkLayer.clear();
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

    private static class HttpMatchFilter
    implements Linkify.MatchFilter {
        private HttpMatchFilter() {
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private boolean startsWith(CharSequence charSequence, int n, int n2, String string2) {
            int n3 = string2.length();
            if (n3 > n2 - n) {
                return false;
            }
            n2 = 0;
            while (n2 < n3) {
                if (charSequence.charAt(n + n2) != string2.charAt(n2)) return false;
                ++n2;
            }
            return true;
        }

        public boolean acceptMatch(CharSequence charSequence, int n, int n2) {
            if (this.startsWith(charSequence, n, n2, "http:") || this.startsWith(charSequence, n, n2, "https:")) {
                return true;
            }
            return false;
        }
    }

    private class MouseTrackingFlingRunner
    implements Runnable {
        private int mLastY;
        private MotionEvent mMotionEvent;
        private Scroller mScroller;

        private MouseTrackingFlingRunner() {
        }

        public void fling(MotionEvent motionEvent, float f, float f2) {
            this.mScroller.fling(0, 0, - (int)(f * 0.15f), - (int)(f2 * 0.15f), 0, 0, -100, 100);
            this.mLastY = 0;
            this.mMotionEvent = motionEvent;
            EmulatorView.this.post((Runnable)this);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (this.mScroller.isFinished()) {
                return;
            }
            if (!EmulatorView.this.isMouseTrackingActive()) return;
            boolean bl = this.mScroller.computeScrollOffset();
            int n = this.mScroller.getCurrY();
            while (this.mLastY < n) {
                EmulatorView.this.sendMouseEventCode(this.mMotionEvent, 65);
                ++this.mLastY;
            }
            do {
                if (this.mLastY <= n) {
                    if (!bl) return;
                    EmulatorView.this.post((Runnable)this);
                    return;
                }
                EmulatorView.this.sendMouseEventCode(this.mMotionEvent, 64);
                --this.mLastY;
            } while (true);
        }
    }

}

