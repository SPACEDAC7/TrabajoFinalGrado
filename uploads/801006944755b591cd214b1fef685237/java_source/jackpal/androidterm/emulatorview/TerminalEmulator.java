/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package jackpal.androidterm.emulatorview;

import android.util.Log;
import jackpal.androidterm.emulatorview.ColorScheme;
import jackpal.androidterm.emulatorview.GrowableIntArray;
import jackpal.androidterm.emulatorview.TermKeyListener;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.TextStyle;
import jackpal.androidterm.emulatorview.TranscriptScreen;
import jackpal.androidterm.emulatorview.UnicodeTranscript;
import jackpal.androidterm.emulatorview.UpdateCallback;
import java.io.UnsupportedEncodingException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Locale;

class TerminalEmulator {
    private static final int CHAR_SET_ALT_SPECIAL_GRAPICS = 4;
    private static final int CHAR_SET_ALT_STANDARD = 3;
    private static final int CHAR_SET_ASCII = 1;
    private static final int CHAR_SET_SPECIAL_GRAPHICS = 2;
    private static final int CHAR_SET_UK = 0;
    private static final boolean DEFAULT_TO_AUTOWRAP_ENABLED = true;
    private static final int ESC = 1;
    private static final int ESC_LEFT_SQUARE_BRACKET = 5;
    private static final int ESC_LEFT_SQUARE_BRACKET_QUESTION_MARK = 6;
    private static final int ESC_NONE = 0;
    private static final int ESC_PERCENT = 7;
    private static final int ESC_POUND = 2;
    private static final int ESC_RIGHT_SQUARE_BRACKET = 8;
    private static final int ESC_RIGHT_SQUARE_BRACKET_ESC = 9;
    private static final int ESC_SELECT_LEFT_PAREN = 3;
    private static final int ESC_SELECT_RIGHT_PAREN = 4;
    private static final int K_132_COLUMN_MODE_MASK = 8;
    private static final int K_DECSC_DECRC_MASK = 192;
    private static final int K_ORIGIN_MODE_MASK = 64;
    private static final int K_REVERSE_VIDEO_MASK = 32;
    private static final int K_SHOW_CURSOR_MASK = 33554432;
    private static final int K_WRAPAROUND_MODE_MASK = 128;
    private static final int MAX_ESCAPE_PARAMETERS = 16;
    private static final int MAX_OSC_STRING_LENGTH = 512;
    private static final int UNICODE_REPLACEMENT_CHAR = 65533;
    private static final char[] mSpecialGraphicsCharMap = new char[128];
    private boolean mAboutToAutoWrap;
    private TranscriptScreen mAltBuffer;
    private boolean mAlternateCharSet;
    private int mArgIndex;
    private int[] mArgs = new int[16];
    private int mBackColor;
    private int mBottomMargin;
    private int[] mCharSet = new int[2];
    private int mColumns;
    private boolean mContinueSequence;
    private int mCursorCol;
    private int mCursorRow;
    private int mDecFlags;
    private int mDefaultBackColor;
    private int mDefaultForeColor;
    private boolean mDefaultUTF8Mode = false;
    private int mEffect;
    private int mEscapeState;
    private int mForeColor;
    private CharBuffer mInputCharBuffer;
    private boolean mInsertMode;
    private boolean mJustWrapped = false;
    private TermKeyListener mKeyListener;
    private int mLastEmittedCharWidth = 0;
    private TranscriptScreen mMainBuffer;
    private int mMouseTrackingMode;
    private byte[] mOSCArg = new byte[512];
    private int mOSCArgLength;
    private int mOSCArgTokenizerIndex;
    private int mProcessedCharCount;
    private int mRows;
    private int mSavedCursorCol;
    private int mSavedCursorRow;
    private int mSavedDecFlags;
    private int mSavedDecFlags_DECSC_DECRC;
    private int mSavedEffect;
    private TranscriptScreen mScreen;
    private int mScrollCounter = 0;
    private TermSession mSession;
    private boolean[] mTabStop;
    private int mTopMargin;
    private ByteBuffer mUTF8ByteBuffer;
    private CharsetDecoder mUTF8Decoder;
    private boolean mUTF8EscapeUsed = false;
    private boolean mUTF8Mode = false;
    private UpdateCallback mUTF8ModeNotify;
    private int mUTF8ToFollow = 0;
    private boolean mUseAlternateCharSet;
    private boolean mbKeypadApplicationMode;

    static {
        for (int n = 0; n < 128; n = (int)((char)(n + 1))) {
            TerminalEmulator.mSpecialGraphicsCharMap[n] = n;
        }
        TerminalEmulator.mSpecialGraphicsCharMap[95] = 32;
        TerminalEmulator.mSpecialGraphicsCharMap[98] = 9225;
        TerminalEmulator.mSpecialGraphicsCharMap[99] = 9228;
        TerminalEmulator.mSpecialGraphicsCharMap[100] = 9229;
        TerminalEmulator.mSpecialGraphicsCharMap[101] = 9226;
        TerminalEmulator.mSpecialGraphicsCharMap[104] = 9252;
        TerminalEmulator.mSpecialGraphicsCharMap[105] = 9227;
        TerminalEmulator.mSpecialGraphicsCharMap[125] = 163;
        TerminalEmulator.mSpecialGraphicsCharMap[102] = 176;
        TerminalEmulator.mSpecialGraphicsCharMap[96] = 11045;
        TerminalEmulator.mSpecialGraphicsCharMap[126] = 8226;
        TerminalEmulator.mSpecialGraphicsCharMap[121] = 8804;
        TerminalEmulator.mSpecialGraphicsCharMap[124] = 8800;
        TerminalEmulator.mSpecialGraphicsCharMap[122] = 8805;
        TerminalEmulator.mSpecialGraphicsCharMap[103] = 177;
        TerminalEmulator.mSpecialGraphicsCharMap[123] = 960;
        TerminalEmulator.mSpecialGraphicsCharMap[46] = 9660;
        TerminalEmulator.mSpecialGraphicsCharMap[44] = 9664;
        TerminalEmulator.mSpecialGraphicsCharMap[43] = 9654;
        TerminalEmulator.mSpecialGraphicsCharMap[45] = 9650;
        TerminalEmulator.mSpecialGraphicsCharMap[104] = 35;
        TerminalEmulator.mSpecialGraphicsCharMap[97] = 9618;
        TerminalEmulator.mSpecialGraphicsCharMap[48] = 9608;
        TerminalEmulator.mSpecialGraphicsCharMap[113] = 9472;
        TerminalEmulator.mSpecialGraphicsCharMap[120] = 9474;
        TerminalEmulator.mSpecialGraphicsCharMap[109] = 9492;
        TerminalEmulator.mSpecialGraphicsCharMap[106] = 9496;
        TerminalEmulator.mSpecialGraphicsCharMap[108] = 9484;
        TerminalEmulator.mSpecialGraphicsCharMap[107] = 9488;
        TerminalEmulator.mSpecialGraphicsCharMap[119] = 9516;
        TerminalEmulator.mSpecialGraphicsCharMap[117] = 9508;
        TerminalEmulator.mSpecialGraphicsCharMap[116] = 9500;
        TerminalEmulator.mSpecialGraphicsCharMap[118] = 9524;
        TerminalEmulator.mSpecialGraphicsCharMap[110] = 9532;
        TerminalEmulator.mSpecialGraphicsCharMap[111] = 9146;
        TerminalEmulator.mSpecialGraphicsCharMap[112] = 9147;
        TerminalEmulator.mSpecialGraphicsCharMap[114] = 9148;
        TerminalEmulator.mSpecialGraphicsCharMap[115] = 9149;
    }

    public TerminalEmulator(TermSession termSession, TranscriptScreen transcriptScreen, int n, int n2, ColorScheme colorScheme) {
        this.mSession = termSession;
        this.mScreen = this.mMainBuffer = transcriptScreen;
        this.mAltBuffer = new TranscriptScreen(n, n2, n2, colorScheme);
        this.mRows = n2;
        this.mColumns = n;
        this.mTabStop = new boolean[this.mColumns];
        this.setColorScheme(colorScheme);
        this.mUTF8ByteBuffer = ByteBuffer.allocate(4);
        this.mInputCharBuffer = CharBuffer.allocate(2);
        this.mUTF8Decoder = Charset.forName("UTF-8").newDecoder();
        this.mUTF8Decoder.onMalformedInput(CodingErrorAction.REPLACE);
        this.mUTF8Decoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        this.reset();
    }

    private boolean autoWrapEnabled() {
        if ((this.mDecFlags & 128) != 0) {
            return true;
        }
        return false;
    }

    private void blockClear(int n, int n2, int n3) {
        this.blockClear(n, n2, n3, 1);
    }

    private void blockClear(int n, int n2, int n3, int n4) {
        this.mScreen.blockSet(n, n2, n3, n4, 32, this.getStyle());
    }

    private void changeTitle(int n, String string2) {
        if (n == 0 || n == 2) {
            this.mSession.setTitle(string2);
        }
    }

    private boolean checkColor(int n) {
        boolean bl = this.isValidColor(n);
        if (!bl) {
            // empty if block
        }
        return bl;
    }

    private void collectOSCArgs(byte by) {
        if (this.mOSCArgLength < 512) {
            byte[] arrby = this.mOSCArg;
            int n = this.mOSCArgLength;
            this.mOSCArgLength = n + 1;
            arrby[n] = by;
            this.continueSequence();
            return;
        }
        this.unknownSequence(by);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void computeEffectiveCharSet() {
        boolean bl = true;
        int[] arrn = this.mCharSet;
        int n = this.mAlternateCharSet ? 1 : 0;
        if (arrn[n] != 2) {
            bl = false;
        }
        this.mUseAlternateCharSet = bl;
    }

    private void continueSequence() {
        this.mContinueSequence = true;
    }

    private void continueSequence(int n) {
        this.mEscapeState = n;
        this.mContinueSequence = true;
    }

    private void doEsc(byte by) {
        switch (by) {
            default: {
                this.unknownSequence(by);
                return;
            }
            case 35: {
                this.continueSequence(2);
                return;
            }
            case 40: {
                this.continueSequence(3);
                return;
            }
            case 41: {
                this.continueSequence(4);
                return;
            }
            case 55: {
                this.mSavedCursorRow = this.mCursorRow;
                this.mSavedCursorCol = this.mCursorCol;
                this.mSavedEffect = this.mEffect;
                this.mSavedDecFlags_DECSC_DECRC = this.mDecFlags & 192;
                return;
            }
            case 56: {
                this.setCursorRowCol(this.mSavedCursorRow, this.mSavedCursorCol);
                this.mEffect = this.mSavedEffect;
                this.mDecFlags = this.mDecFlags & -193 | this.mSavedDecFlags_DECSC_DECRC;
                return;
            }
            case 68: {
                this.doLinefeed();
                return;
            }
            case 69: {
                this.setCursorCol(0);
                this.doLinefeed();
                return;
            }
            case 70: {
                this.setCursorRowCol(0, this.mBottomMargin - 1);
                return;
            }
            case 72: {
                this.mTabStop[this.mCursorCol] = true;
                return;
            }
            case 77: {
                if (this.mCursorRow <= this.mTopMargin) {
                    this.mScreen.blockCopy(0, this.mTopMargin, this.mColumns, this.mBottomMargin - (this.mTopMargin + 1), 0, this.mTopMargin + 1);
                    this.blockClear(0, this.mTopMargin, this.mColumns);
                    return;
                }
                --this.mCursorRow;
                return;
            }
            case 78: {
                this.unimplementedSequence(by);
                return;
            }
            case 48: {
                this.unimplementedSequence(by);
                return;
            }
            case 80: {
                this.unimplementedSequence(by);
                return;
            }
            case 90: {
                this.sendDeviceAttributes();
                return;
            }
            case 91: {
                this.continueSequence(5);
                return;
            }
            case 61: {
                this.mbKeypadApplicationMode = true;
                return;
            }
            case 93: {
                this.startCollectingOSCArgs();
                this.continueSequence(8);
                return;
            }
            case 62: 
        }
        this.mbKeypadApplicationMode = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doEscLSBQuest(byte by) {
        int n = this.getArg0(0);
        int n2 = this.getDecFlagsMask(n);
        int n3 = this.mDecFlags;
        switch (by) {
            default: {
                this.parseArg(by);
                break;
            }
            case 104: {
                this.mDecFlags |= n2;
                switch (n) {
                    case 1: {
                        this.mKeyListener.setCursorKeysApplicationMode(true);
                    }
                    default: {
                        break;
                    }
                    case 47: 
                    case 1047: 
                    case 1049: {
                        if (this.mAltBuffer == null) break;
                        this.mScreen = this.mAltBuffer;
                    }
                }
                if (n < 1000 || n > 1003) break;
                this.mMouseTrackingMode = n;
                break;
            }
            case 108: {
                this.mDecFlags &= ~ n2;
                switch (n) {
                    case 1: {
                        this.mKeyListener.setCursorKeysApplicationMode(false);
                    }
                    default: {
                        break;
                    }
                    case 47: 
                    case 1047: 
                    case 1049: {
                        this.mScreen = this.mMainBuffer;
                    }
                }
                if (n < 1000 || n > 1003) break;
                this.mMouseTrackingMode = 0;
                break;
            }
            case 114: {
                this.mDecFlags = this.mDecFlags & ~ n2 | this.mSavedDecFlags & n2;
                break;
            }
            case 115: {
                this.mSavedDecFlags = this.mSavedDecFlags & ~ n2 | this.mDecFlags & n2;
            }
        }
        n = this.mDecFlags;
        if (((n3 ^ this.mDecFlags) & 8) != 0) {
            this.blockClear(0, 0, this.mColumns, this.mRows);
            this.setCursorRowCol(0, 0);
        }
        if ((~ n3 & n & 64) != 0) {
            this.setCursorPosition(0, 0);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void doEscLeftSquareBracket(byte by) {
        switch (by) {
            default: {
                this.parseArg(by);
                return;
            }
            case 64: {
                int n = this.mColumns - this.mCursorCol;
                int n2 = Math.min(this.getArg0(1), n);
                this.mScreen.blockCopy(this.mCursorCol, this.mCursorRow, n - n2, 1, this.mCursorCol + n2, this.mCursorRow);
                this.blockClear(this.mCursorCol, this.mCursorRow, n2);
                return;
            }
            case 65: {
                this.setCursorRow(Math.max(this.mTopMargin, this.mCursorRow - this.getArg0(1)));
                return;
            }
            case 66: {
                this.setCursorRow(Math.min(this.mBottomMargin - 1, this.mCursorRow + this.getArg0(1)));
                return;
            }
            case 67: {
                this.setCursorCol(Math.min(this.mColumns - 1, this.mCursorCol + this.getArg0(1)));
                return;
            }
            case 68: {
                this.setCursorCol(Math.max(0, this.mCursorCol - this.getArg0(1)));
                return;
            }
            case 71: {
                this.setCursorCol(Math.min(Math.max(1, this.getArg0(1)), this.mColumns) - 1);
                return;
            }
            case 72: {
                this.setHorizontalVerticalPosition();
                return;
            }
            case 74: {
                switch (this.getArg0(0)) {
                    default: {
                        this.unknownSequence(by);
                        return;
                    }
                    case 0: {
                        this.blockClear(this.mCursorCol, this.mCursorRow, this.mColumns - this.mCursorCol);
                        this.blockClear(0, this.mCursorRow + 1, this.mColumns, this.mRows - (this.mCursorRow + 1));
                        return;
                    }
                    case 1: {
                        this.blockClear(0, 0, this.mColumns, this.mCursorRow);
                        this.blockClear(0, this.mCursorRow, this.mCursorCol + 1);
                        return;
                    }
                    case 2: 
                }
                this.blockClear(0, 0, this.mColumns, this.mRows);
                return;
            }
            case 75: {
                switch (this.getArg0(0)) {
                    default: {
                        this.unknownSequence(by);
                        return;
                    }
                    case 0: {
                        this.blockClear(this.mCursorCol, this.mCursorRow, this.mColumns - this.mCursorCol);
                        return;
                    }
                    case 1: {
                        this.blockClear(0, this.mCursorRow, this.mCursorCol + 1);
                        return;
                    }
                    case 2: 
                }
                this.blockClear(0, this.mCursorRow, this.mColumns);
                return;
            }
            case 76: {
                int n = this.mBottomMargin - this.mCursorRow;
                int n3 = Math.min(this.getArg0(1), n);
                this.mScreen.blockCopy(0, this.mCursorRow, this.mColumns, n - n3, 0, this.mCursorRow + n3);
                this.blockClear(0, this.mCursorRow, this.mColumns, n3);
                return;
            }
            case 77: {
                int n = this.mBottomMargin - this.mCursorRow;
                int n4 = Math.min(this.getArg0(1), n);
                this.mScreen.blockCopy(0, this.mCursorRow + n4, this.mColumns, n -= n4, 0, this.mCursorRow);
                this.blockClear(0, this.mCursorRow + n, this.mColumns, n4);
                return;
            }
            case 80: {
                int n = this.mColumns - this.mCursorCol;
                int n5 = Math.min(this.getArg0(1), n);
                this.mScreen.blockCopy(this.mCursorCol + n5, this.mCursorRow, n -= n5, 1, this.mCursorCol, this.mCursorRow);
                this.blockClear(this.mCursorCol + n, this.mCursorRow, n5);
                return;
            }
            case 84: {
                this.unimplementedSequence(by);
                return;
            }
            case 88: {
                this.blockClear(this.mCursorCol, this.mCursorRow, this.getArg0(0));
                return;
            }
            case 90: {
                this.setCursorCol(this.prevTabStop(this.mCursorCol));
                return;
            }
            case 63: {
                this.continueSequence(6);
                return;
            }
            case 99: {
                this.sendDeviceAttributes();
                return;
            }
            case 100: {
                this.setCursorRow(Math.min(Math.max(1, this.getArg0(1)), this.mRows) - 1);
                return;
            }
            case 102: {
                this.setHorizontalVerticalPosition();
                return;
            }
            case 103: {
                switch (this.getArg0(0)) {
                    default: {
                        return;
                    }
                    case 0: {
                        this.mTabStop[this.mCursorCol] = false;
                        return;
                    }
                    case 3: 
                }
                int n = 0;
                while (n < this.mColumns) {
                    this.mTabStop[n] = false;
                    ++n;
                }
                return;
            }
            case 104: {
                this.doSetMode(true);
                return;
            }
            case 108: {
                this.doSetMode(false);
                return;
            }
            case 109: {
                this.selectGraphicRendition();
                return;
            }
            case 110: {
                switch (this.getArg0(0)) {
                    default: {
                        return;
                    }
                    case 5: {
                        byte[] arrby;
                        byte[] arrby2 = arrby = new byte[4];
                        arrby2[0] = 27;
                        arrby2[1] = 91;
                        arrby2[2] = 48;
                        arrby2[3] = 110;
                        this.mSession.write(arrby, 0, arrby.length);
                        return;
                    }
                    case 6: 
                }
                byte[] arrby = String.format(Locale.US, "\u001b[%d;%dR", this.mCursorRow + 1, this.mCursorCol + 1).getBytes();
                this.mSession.write(arrby, 0, arrby.length);
                return;
            }
            case 114: 
        }
        int n = Math.max(0, Math.min(this.getArg0(1) - 1, this.mRows - 2));
        int n6 = Math.max(n + 2, Math.min(this.getArg1(this.mRows), this.mRows));
        this.mTopMargin = n;
        this.mBottomMargin = n6;
        this.setCursorRowCol(this.mTopMargin, 0);
    }

    private void doEscPercent(byte by) {
        switch (by) {
            default: {
                return;
            }
            case 64: {
                this.setUTF8Mode(false);
                this.mUTF8EscapeUsed = true;
                return;
            }
            case 71: 
        }
        this.setUTF8Mode(true);
        this.mUTF8EscapeUsed = true;
    }

    private void doEscPound(byte by) {
        switch (by) {
            default: {
                this.unknownSequence(by);
                return;
            }
            case 56: 
        }
        this.mScreen.blockSet(0, 0, this.mColumns, this.mRows, 69, this.getStyle());
    }

    private void doEscRightSquareBracket(byte by) {
        switch (by) {
            default: {
                this.collectOSCArgs(by);
                return;
            }
            case 7: {
                this.doOSC();
                return;
            }
            case 27: 
        }
        this.continueSequence(9);
    }

    private void doEscRightSquareBracketEsc(byte by) {
        switch (by) {
            default: {
                this.collectOSCArgs(27);
                this.collectOSCArgs(by);
                this.continueSequence(8);
                return;
            }
            case 92: 
        }
        this.doOSC();
    }

    private void doEscSelectLeftParen(byte by) {
        this.doSelectCharSet(0, by);
    }

    private void doEscSelectRightParen(byte by) {
        this.doSelectCharSet(1, by);
    }

    private void doLinefeed() {
        int n;
        int n2 = n = this.mCursorRow + 1;
        if (n >= this.mBottomMargin) {
            this.scroll();
            n2 = this.mBottomMargin - 1;
        }
        this.setCursorRow(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doOSC() {
        this.startTokenizingOSC();
        int n = this.nextOSCInt(59);
        switch (n) {
            default: {
                this.unknownParameter(n);
                break;
            }
            case 0: 
            case 1: 
            case 2: {
                this.changeTitle(n, this.nextOSCString(-1));
            }
        }
        this.finishSequence();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doSelectCharSet(int n, byte by) {
        int n2;
        switch (by) {
            default: {
                this.unknownSequence(by);
                return;
            }
            case 65: {
                n2 = 0;
                break;
            }
            case 66: {
                n2 = 1;
                break;
            }
            case 48: {
                n2 = 2;
                break;
            }
            case 49: {
                n2 = 3;
                break;
            }
            case 50: {
                n2 = 4;
            }
        }
        this.mCharSet[n] = n2;
        this.computeEffectiveCharSet();
    }

    private void doSetMode(boolean bl) {
        int n = this.getArg0(0);
        switch (n) {
            default: {
                this.unknownParameter(n);
                return;
            }
            case 4: 
        }
        this.mInsertMode = bl;
    }

    private void emit(byte by) {
        if (this.mUseAlternateCharSet && by < 128) {
            this.emit(mSpecialGraphicsCharMap[by]);
            return;
        }
        this.emit((int)by);
    }

    private void emit(int n) {
        this.emit(n, this.getStyle());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void emit(int n, int n2) {
        boolean bl = true;
        boolean bl2 = this.autoWrapEnabled();
        int n3 = UnicodeTranscript.charWidth(n);
        if (bl2 && this.mCursorCol == this.mColumns - 1 && (this.mAboutToAutoWrap || n3 == 2)) {
            this.mScreen.setLineWrap(this.mCursorRow);
            this.mCursorCol = 0;
            this.mJustWrapped = true;
            if (this.mCursorRow + 1 < this.mBottomMargin) {
                ++this.mCursorRow;
            } else {
                this.scroll();
            }
        }
        boolean bl3 = this.mInsertMode;
        int n4 = n3 != 0 ? 1 : 0;
        if (n4 & bl3 && (n4 = this.mCursorCol + n3) < this.mColumns) {
            this.mScreen.blockCopy(this.mCursorCol, this.mCursorRow, this.mColumns - n4, 1, n4, this.mCursorRow);
        }
        if (n3 == 0) {
            if (this.mJustWrapped) {
                this.mScreen.set(this.mColumns - this.mLastEmittedCharWidth, this.mCursorRow - 1, n, n2);
            } else {
                this.mScreen.set(this.mCursorCol - this.mLastEmittedCharWidth, this.mCursorRow, n, n2);
            }
        } else {
            this.mScreen.set(this.mCursorCol, this.mCursorRow, n, n2);
            this.mJustWrapped = false;
        }
        if (bl2) {
            if (this.mCursorCol != this.mColumns - 1) {
                bl = false;
            }
            this.mAboutToAutoWrap = bl;
            if (this.mAboutToAutoWrap) {
                this.mScreen.setLineWrap(this.mCursorRow);
            }
        }
        this.mCursorCol = Math.min(this.mCursorCol + n3, this.mColumns - 1);
        if (n3 > 0) {
            this.mLastEmittedCharWidth = n3;
        }
    }

    private void emit(char[] arrc) {
        if (Character.isHighSurrogate(arrc[0])) {
            this.emit(Character.toCodePoint(arrc[0], arrc[1]));
            return;
        }
        this.emit(arrc[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void emit(char[] arrc, int n, int n2, int n3) {
        while (n < n2 && arrc[n] != '\u0000') {
            if (Character.isHighSurrogate(arrc[n])) {
                this.emit(Character.toCodePoint(arrc[n], arrc[n + 1]), n3);
                ++n;
            } else {
                this.emit(arrc[n], n3);
            }
            ++n;
        }
        return;
    }

    private void finishSequence() {
        this.mEscapeState = 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getArg(int n, int n2, boolean bl) {
        int n3 = this.mArgs[n];
        if (n3 < 0) return n2;
        n = n3;
        if (n3 != 0) return n;
        n = n3;
        if (!bl) return n;
        return n2;
    }

    private int getArg0(int n) {
        return this.getArg(0, n, true);
    }

    private int getArg1(int n) {
        return this.getArg(1, n, true);
    }

    private int getBackColor() {
        return this.mBackColor;
    }

    private int getDecFlagsMask(int n) {
        if (n >= 1 && n <= 32) {
            return 1 << n;
        }
        return 0;
    }

    private int getEffect() {
        return this.mEffect;
    }

    private int getForeColor() {
        return this.mForeColor;
    }

    private int getStyle() {
        return TextStyle.encode(this.getForeColor(), this.getBackColor(), this.getEffect());
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean handleUTF8Sequence(byte by) {
        if (this.mUTF8ToFollow == 0 && (by & 128) == 0) {
            return false;
        }
        if (this.mUTF8ToFollow > 0) {
            int n;
            if ((by & 192) != 128) {
                this.mUTF8ToFollow = 0;
                this.mUTF8ByteBuffer.clear();
                this.emit(65533);
                return this.handleUTF8Sequence(by);
            }
            this.mUTF8ByteBuffer.put(by);
            this.mUTF8ToFollow = n = this.mUTF8ToFollow - 1;
            if (n != 0) return true;
            ByteBuffer byteBuffer = this.mUTF8ByteBuffer;
            CharBuffer charBuffer = this.mInputCharBuffer;
            char[] arrc = this.mUTF8Decoder;
            byteBuffer.rewind();
            arrc.reset();
            arrc.decode(byteBuffer, charBuffer, true);
            arrc.flush(charBuffer);
            arrc = charBuffer.array();
            if (arrc[0] >= '' && arrc[0] <= '\u009f') {
                this.process((byte)arrc[0], false);
            } else {
                this.emit(arrc);
            }
            byteBuffer.clear();
            charBuffer.clear();
            return true;
        }
        if ((by & 224) == 192) {
            this.mUTF8ToFollow = 1;
        } else if ((by & 240) == 224) {
            this.mUTF8ToFollow = 2;
        } else {
            if ((by & 248) != 240) {
                this.emit(65533);
                return true;
            }
            this.mUTF8ToFollow = 3;
        }
        this.mUTF8ByteBuffer.put(by);
        return true;
    }

    private boolean isValidColor(int n) {
        if (n >= 0 && n < 260) {
            return true;
        }
        return false;
    }

    private void logError(String string2) {
        this.finishSequence();
    }

    private void logError(String string2, byte by) {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int nextOSCInt(int n) {
        int n2 = -1;
        while (this.mOSCArgTokenizerIndex < this.mOSCArgLength) {
            byte[] arrby = this.mOSCArg;
            int n3 = this.mOSCArgTokenizerIndex;
            this.mOSCArgTokenizerIndex = n3 + 1;
            byte by = arrby[n3];
            if (by == n) {
                return n2;
            }
            if (by >= 48 && by <= 57) {
                n3 = n2;
                if (n2 < 0) {
                    n3 = 0;
                }
                n2 = n3 * 10 + by - 48;
                continue;
            }
            this.unknownSequence(by);
        }
        return n2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private String nextOSCString(int var1_1) {
        var3_3 = var4_2 = this.mOSCArgTokenizerIndex;
        do {
            if (this.mOSCArgTokenizerIndex >= this.mOSCArgLength) ** GOTO lbl-1000
            var2_4 = this.mOSCArg;
            var5_6 = this.mOSCArgTokenizerIndex;
            this.mOSCArgTokenizerIndex = var5_6 + 1;
            if (var2_4[var5_6] == var1_1) lbl-1000: // 2 sources:
            {
                if (var4_2 != var3_3) break;
                return "";
            }
            ++var3_3;
        } while (true);
        try {
            return new String(this.mOSCArg, var4_2, var3_3 - var4_2, "UTF-8");
        }
        catch (UnsupportedEncodingException var2_5) {
            return new String(this.mOSCArg, var4_2, var3_3 - var4_2);
        }
    }

    private int nextTabStop(int n) {
        ++n;
        while (n < this.mColumns) {
            if (this.mTabStop[n]) {
                return n;
            }
            ++n;
        }
        return this.mColumns - 1;
    }

    private void parseArg(byte by) {
        if (by >= 48 && by <= 57) {
            if (this.mArgIndex < this.mArgs.length) {
                int n = this.mArgs[this.mArgIndex];
                int n2 = by - 48;
                if (n >= 0) {
                    n2 = n * 10 + n2;
                }
                this.mArgs[this.mArgIndex] = n2;
            }
            this.continueSequence();
            return;
        }
        if (by == 59) {
            if (this.mArgIndex < this.mArgs.length) {
                ++this.mArgIndex;
            }
            this.continueSequence();
            return;
        }
        this.unknownSequence(by);
    }

    private int prevTabStop(int n) {
        --n;
        while (n >= 0) {
            if (this.mTabStop[n]) {
                return n;
            }
            --n;
        }
        return 0;
    }

    private void process(byte by) {
        this.process(by, true);
    }

    /*
     * Exception decompiling
     */
    private void process(byte var1_1, boolean var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [2[CASE]], but top level block is 12[SWITCH]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:394)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:446)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    private void scroll() {
        ++this.mScrollCounter;
        this.mScreen.scroll(this.mTopMargin, this.mBottomMargin, this.getStyle());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void selectGraphicRendition() {
        var1_1 = 0;
        while (var1_1 <= this.mArgIndex) {
            var3_3 = var2_2 = this.mArgs[var1_1];
            if (var2_2 >= 0) ** GOTO lbl9
            if (this.mArgIndex > 0) {
                var2_2 = var1_1;
            } else {
                var3_3 = 0;
lbl9: // 2 sources:
                if (var3_3 == 0) {
                    this.mForeColor = this.mDefaultForeColor;
                    this.mBackColor = this.mDefaultBackColor;
                    this.mEffect = 0;
                    var2_2 = var1_1;
                } else if (var3_3 == 1) {
                    this.mEffect |= 1;
                    var2_2 = var1_1;
                } else if (var3_3 == 3) {
                    this.mEffect |= 2;
                    var2_2 = var1_1;
                } else if (var3_3 == 4) {
                    this.mEffect |= 4;
                    var2_2 = var1_1;
                } else if (var3_3 == 5) {
                    this.mEffect |= 8;
                    var2_2 = var1_1;
                } else if (var3_3 == 7) {
                    this.mEffect |= 16;
                    var2_2 = var1_1;
                } else if (var3_3 == 8) {
                    this.mEffect |= 32;
                    var2_2 = var1_1;
                } else if (var3_3 == 10) {
                    this.setAltCharSet(false);
                    var2_2 = var1_1;
                } else if (var3_3 == 11) {
                    this.setAltCharSet(true);
                    var2_2 = var1_1;
                } else if (var3_3 == 22) {
                    this.mEffect &= -2;
                    var2_2 = var1_1;
                } else if (var3_3 == 23) {
                    this.mEffect &= -3;
                    var2_2 = var1_1;
                } else if (var3_3 == 24) {
                    this.mEffect &= -5;
                    var2_2 = var1_1;
                } else if (var3_3 == 25) {
                    this.mEffect &= -9;
                    var2_2 = var1_1;
                } else if (var3_3 == 27) {
                    this.mEffect &= -17;
                    var2_2 = var1_1;
                } else if (var3_3 == 28) {
                    this.mEffect &= -33;
                    var2_2 = var1_1;
                } else if (var3_3 >= 30 && var3_3 <= 37) {
                    this.mForeColor = var3_3 - 30;
                    var2_2 = var1_1;
                } else if (var3_3 == 38 && var1_1 + 2 <= this.mArgIndex && this.mArgs[var1_1 + 1] == 5) {
                    var2_2 = this.mArgs[var1_1 + 2];
                    if (this.checkColor(var2_2)) {
                        this.mForeColor = var2_2;
                    }
                    var2_2 = var1_1 + 2;
                } else if (var3_3 == 39) {
                    this.mForeColor = this.mDefaultForeColor;
                    var2_2 = var1_1;
                } else if (var3_3 >= 40 && var3_3 <= 47) {
                    this.mBackColor = var3_3 - 40;
                    var2_2 = var1_1;
                } else if (var3_3 == 48 && var1_1 + 2 <= this.mArgIndex && this.mArgs[var1_1 + 1] == 5) {
                    this.mBackColor = this.mArgs[var1_1 + 2];
                    var2_2 = this.mArgs[var1_1 + 2];
                    if (this.checkColor(var2_2)) {
                        this.mBackColor = var2_2;
                    }
                    var2_2 = var1_1 + 2;
                } else if (var3_3 == 49) {
                    this.mBackColor = this.mDefaultBackColor;
                    var2_2 = var1_1;
                } else if (var3_3 >= 90 && var3_3 <= 97) {
                    this.mForeColor = var3_3 - 90 + 8;
                    var2_2 = var1_1;
                } else {
                    var2_2 = var1_1;
                    if (var3_3 >= 100) {
                        var2_2 = var1_1;
                        if (var3_3 <= 107) {
                            this.mBackColor = var3_3 - 100 + 8;
                            var2_2 = var1_1;
                        }
                    }
                }
            }
            var1_1 = var2_2 + 1;
        }
    }

    private void sendDeviceAttributes() {
        byte[] arrby;
        byte[] arrby2 = arrby = new byte[7];
        arrby2[0] = 27;
        arrby2[1] = 91;
        arrby2[2] = 63;
        arrby2[3] = 49;
        arrby2[4] = 59;
        arrby2[5] = 50;
        arrby2[6] = 99;
        this.mSession.write(arrby, 0, arrby.length);
    }

    private void setAltCharSet(boolean bl) {
        this.mAlternateCharSet = bl;
        this.computeEffectiveCharSet();
    }

    private void setCursorCol(int n) {
        this.mCursorCol = n;
        this.mAboutToAutoWrap = false;
    }

    private void setCursorPosition(int n, int n2) {
        int n3 = 0;
        int n4 = this.mRows;
        if ((this.mDecFlags & 64) != 0) {
            n3 = this.mTopMargin;
            n4 = this.mBottomMargin;
        }
        this.setCursorRowCol(Math.max(n3, Math.min(n3 + n2, n4 - 1)), Math.max(0, Math.min(n, this.mColumns - 1)));
    }

    private void setCursorRow(int n) {
        this.mCursorRow = n;
        this.mAboutToAutoWrap = false;
    }

    private void setCursorRowCol(int n, int n2) {
        this.mCursorRow = Math.min(n, this.mRows - 1);
        this.mCursorCol = Math.min(n2, this.mColumns - 1);
        this.mAboutToAutoWrap = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setDefaultTabStops() {
        int n = 0;
        while (n < this.mColumns) {
            boolean[] arrbl = this.mTabStop;
            boolean bl = (n & 7) == 0 && n != 0;
            arrbl[n] = bl;
            ++n;
        }
    }

    private void setHorizontalVerticalPosition() {
        this.setCursorPosition(this.getArg1(1) - 1, this.getArg0(1) - 1);
    }

    private void startCollectingOSCArgs() {
        this.mOSCArgLength = 0;
    }

    private void startEscapeSequence(int n) {
        this.mEscapeState = n;
        this.mArgIndex = 0;
        for (n = 0; n < 16; ++n) {
            this.mArgs[n] = -1;
        }
    }

    private void startTokenizingOSC() {
        this.mOSCArgTokenizerIndex = 0;
    }

    private void unimplementedSequence(byte by) {
        this.finishSequence();
    }

    private void unknownParameter(int n) {
    }

    private void unknownSequence(byte by) {
        this.finishSequence();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void append(byte[] arrby, int n, int n2) {
        int n3 = 0;
        while (n3 < n2) {
            byte by = arrby[n + n3];
            try {
                this.process(by);
                ++this.mProcessedCharCount;
            }
            catch (Exception var5_6) {
                Log.e((String)"EmulatorView", (String)("Exception while processing character " + Integer.toString(this.mProcessedCharCount) + " code " + Integer.toString(by)), (Throwable)var5_6);
            }
            ++n3;
        }
    }

    public void clearScrollCounter() {
        this.mScrollCounter = 0;
    }

    public void finish() {
        if (this.mAltBuffer != null) {
            this.mAltBuffer.finish();
            this.mAltBuffer = null;
        }
    }

    public final int getCursorCol() {
        return this.mCursorCol;
    }

    public final int getCursorRow() {
        return this.mCursorRow;
    }

    public final boolean getKeypadApplicationMode() {
        return this.mbKeypadApplicationMode;
    }

    public final int getMouseTrackingMode() {
        return this.mMouseTrackingMode;
    }

    public final boolean getReverseVideo() {
        if ((this.mDecFlags & 32) != 0) {
            return true;
        }
        return false;
    }

    public TranscriptScreen getScreen() {
        return this.mScreen;
    }

    public int getScrollCounter() {
        return this.mScrollCounter;
    }

    public String getSelectedText(int n, int n2, int n3, int n4) {
        return this.mScreen.getSelectedText(n, n2, n3, n4);
    }

    public final boolean getShowCursor() {
        if ((this.mDecFlags & 33554432) != 0) {
            return true;
        }
        return false;
    }

    public boolean getUTF8Mode() {
        return this.mUTF8Mode;
    }

    public void reset() {
        this.mCursorRow = 0;
        this.mCursorCol = 0;
        this.mArgIndex = 0;
        this.mContinueSequence = false;
        this.mEscapeState = 0;
        this.mSavedCursorRow = 0;
        this.mSavedCursorCol = 0;
        this.mSavedEffect = 0;
        this.mSavedDecFlags_DECSC_DECRC = 0;
        this.mDecFlags = 0;
        this.mDecFlags |= 128;
        this.mDecFlags |= 33554432;
        this.mSavedDecFlags = 0;
        this.mInsertMode = false;
        this.mTopMargin = 0;
        this.mBottomMargin = this.mRows;
        this.mAboutToAutoWrap = false;
        this.mForeColor = this.mDefaultForeColor;
        this.mBackColor = this.mDefaultBackColor;
        this.mbKeypadApplicationMode = false;
        this.mAlternateCharSet = false;
        this.mCharSet[0] = 1;
        this.mCharSet[1] = 2;
        this.computeEffectiveCharSet();
        this.setDefaultTabStops();
        this.blockClear(0, 0, this.mColumns, this.mRows);
        this.setUTF8Mode(this.mDefaultUTF8Mode);
        this.mUTF8EscapeUsed = false;
        this.mUTF8ToFollow = 0;
        this.mUTF8ByteBuffer.clear();
        this.mInputCharBuffer.clear();
    }

    public void setColorScheme(ColorScheme colorScheme) {
        this.mDefaultForeColor = 256;
        this.mDefaultBackColor = 257;
        this.mMainBuffer.setColorScheme(colorScheme);
        if (this.mAltBuffer != null) {
            this.mAltBuffer.setColorScheme(colorScheme);
        }
    }

    public void setDefaultUTF8Mode(boolean bl) {
        this.mDefaultUTF8Mode = bl;
        if (!this.mUTF8EscapeUsed) {
            this.setUTF8Mode(bl);
        }
    }

    public void setKeyListener(TermKeyListener termKeyListener) {
        this.mKeyListener = termKeyListener;
    }

    public void setUTF8Mode(boolean bl) {
        if (bl && !this.mUTF8Mode) {
            this.mUTF8ToFollow = 0;
            this.mUTF8ByteBuffer.clear();
            this.mInputCharBuffer.clear();
        }
        this.mUTF8Mode = bl;
        if (this.mUTF8ModeNotify != null) {
            this.mUTF8ModeNotify.onUpdate();
        }
    }

    public void setUTF8ModeUpdateCallback(UpdateCallback updateCallback) {
        this.mUTF8ModeNotify = updateCallback;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void updateSize(int n, int n2) {
        int n3;
        char c;
        int n4;
        if (this.mRows == n2 && this.mColumns == n) {
            return;
        }
        if (n <= 0) {
            throw new IllegalArgumentException("rows:" + n);
        }
        if (n2 <= 0) {
            throw new IllegalArgumentException("rows:" + n2);
        }
        TranscriptScreen transcriptScreen = this.mScreen;
        TranscriptScreen transcriptScreen2 = transcriptScreen != this.mMainBuffer ? this.mMainBuffer : this.mAltBuffer;
        int[] arrn = new int[]{this.mCursorCol, this.mCursorRow};
        boolean bl = transcriptScreen.fastResize(n, n2, arrn);
        GrowableIntArray growableIntArray = null;
        String string2 = null;
        GrowableIntArray growableIntArray2 = null;
        String string3 = null;
        if (!bl) {
            growableIntArray = new GrowableIntArray(1);
            string2 = transcriptScreen.getSelectedText(growableIntArray, this.mCursorCol, this.mCursorRow, this.mCursorCol, this.mCursorRow);
            transcriptScreen.set(this.mCursorCol, this.mCursorRow, 27, 0);
            growableIntArray2 = new GrowableIntArray(1024);
            string3 = transcriptScreen.getTranscriptText(growableIntArray2);
            transcriptScreen.resize(n, n2, this.getStyle());
        }
        boolean bl2 = true;
        boolean[] arrbl = null;
        String string4 = null;
        Object object = arrbl;
        String string5 = string4;
        if (transcriptScreen2 != null) {
            boolean bl3 = transcriptScreen2.fastResize(n, n2, null);
            object = arrbl;
            bl2 = bl3;
            string5 = string4;
            if (!bl3) {
                object = new GrowableIntArray(1024);
                string5 = transcriptScreen2.getTranscriptText((GrowableIntArray)object);
                transcriptScreen2.resize(n, n2, this.getStyle());
                bl2 = bl3;
            }
        }
        if (this.mRows != n2) {
            this.mRows = n2;
            this.mTopMargin = 0;
            this.mBottomMargin = this.mRows;
        }
        if (this.mColumns != n) {
            n2 = this.mColumns;
            this.mColumns = n;
            arrbl = this.mTabStop;
            this.mTabStop = new boolean[this.mColumns];
            n = Math.min(n2, n);
            System.arraycopy(arrbl, 0, this.mTabStop, 0, n);
        }
        if (!bl2) {
            bl2 = this.mAboutToAutoWrap;
            this.mScreen = transcriptScreen2;
            this.mCursorRow = 0;
            this.mCursorCol = 0;
            this.mAboutToAutoWrap = false;
            n4 = string5.length();
            n2 = 0;
            for (n = 0; n <= n4 - 1; ++n) {
                c = string5.charAt(n);
                n3 = object.at(n - n2);
                if (Character.isHighSurrogate(c)) {
                    this.emit(Character.toCodePoint(c, string5.charAt(++n)), n3);
                    ++n2;
                    continue;
                }
                if (c == '\n') {
                    this.setCursorCol(0);
                    this.doLinefeed();
                    continue;
                }
                this.emit(c, n3);
            }
            this.mScreen = transcriptScreen;
            this.mAboutToAutoWrap = bl2;
        }
        if (bl) {
            if (arrn[0] >= 0 && arrn[1] >= 0) {
                this.mCursorCol = arrn[0];
                this.mCursorRow = arrn[1];
                return;
            }
            this.mCursorCol = 0;
            this.mCursorRow = 0;
            return;
        }
        this.mCursorRow = 0;
        this.mCursorCol = 0;
        this.mAboutToAutoWrap = false;
        n3 = -1;
        int n5 = -1;
        int n6 = -1;
        for (n2 = string3.length() - 1; n2 >= 0 && string3.charAt(n2) == '\n'; --n2) {
        }
        n4 = 0;
        n = 0;
        while (n <= n2) {
            int n7;
            c = string3.charAt(n);
            int n8 = growableIntArray2.at(n - n4);
            if (Character.isHighSurrogate(c)) {
                n7 = n + 1;
                this.emit(Character.toCodePoint(c, string3.charAt(n7)), n8);
                n8 = n4 + 1;
            } else if (c == '\n') {
                this.setCursorCol(0);
                this.doLinefeed();
                n8 = n4;
                n7 = n;
            } else if (c == '\u001b') {
                int n9 = this.mCursorRow;
                int n10 = this.mCursorCol;
                int n11 = transcriptScreen.getActiveRows();
                n8 = n4;
                n7 = n;
                n5 = n10;
                n3 = n9;
                n6 = n11;
                if (string2 != null) {
                    n8 = n4;
                    n7 = n;
                    n5 = n10;
                    n3 = n9;
                    n6 = n11;
                    if (string2.length() > 0) {
                        n3 = growableIntArray.at(0);
                        this.emit(string2.toCharArray(), 0, string2.length(), n3);
                        n8 = n4;
                        n7 = n;
                        n5 = n10;
                        n3 = n9;
                        n6 = n11;
                    }
                }
            } else {
                this.emit(c, n8);
                n8 = n4;
                n7 = n;
            }
            n = n7 + 1;
            n4 = n8;
        }
        if (n3 == -1) return;
        if (n5 == -1) return;
        this.mCursorRow = n3;
        this.mCursorCol = n5;
        n = transcriptScreen.getActiveRows() - n6;
        if (n > 0 && n <= n3) {
            this.mCursorRow -= n;
            return;
        }
        if (n <= n3) return;
        this.mCursorRow = 0;
        this.mCursorCol = 0;
    }
}

