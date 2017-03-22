/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package hecticman.jsterm.emulatorview;

import android.util.Log;
import hecticman.jsterm.emulatorview.ColorScheme;
import hecticman.jsterm.emulatorview.Screen;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.UnicodeTranscript;
import hecticman.jsterm.emulatorview.UpdateCallback;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

class TerminalEmulator {
    private static final int ESC = 1;
    private static final int ESC_LEFT_SQUARE_BRACKET = 5;
    private static final int ESC_LEFT_SQUARE_BRACKET_QUESTION_MARK = 6;
    private static final int ESC_NONE = 0;
    private static final int ESC_PERCENT = 7;
    private static final int ESC_POUND = 2;
    private static final int ESC_SELECT_LEFT_PAREN = 3;
    private static final int ESC_SELECT_RIGHT_PAREN = 4;
    private static final int K_132_COLUMN_MODE_MASK = 8;
    private static final int K_ORIGIN_MODE_MASK = 64;
    private static final int K_WRAPAROUND_MODE_MASK = 128;
    private static final int MAX_ESCAPE_PARAMETERS = 16;
    private static final int UNICODE_REPLACEMENT_CHAR = 65533;
    private static final char[] mSpecialGraphicsCharMap = new char[128];
    private boolean mAboutToAutoWrap;
    private boolean mAlternateCharSet;
    private int mArgIndex;
    private int[] mArgs = new int[16];
    private boolean mAutomaticNewlineMode;
    private int mBackColor;
    private int mBottomMargin;
    private int mColumns;
    private boolean mContinueSequence;
    private int mCursorCol;
    private int mCursorRow;
    private int mDecFlags;
    private int mDefaultBackColor;
    private int mDefaultForeColor;
    private boolean mDefaultUTF8Mode = false;
    private int mEscapeState;
    private int mForeColor;
    private CharBuffer mInputCharBuffer;
    private boolean mInsertMode;
    private boolean mInverseColors;
    private boolean mJustWrapped = false;
    private int mLastEmittedCharWidth = 0;
    private int mProcessedCharCount;
    private int mRows;
    private int mSavedCursorCol;
    private int mSavedCursorRow;
    private int mSavedDecFlags;
    private Screen mScreen;
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
    private boolean mbKeypadApplicationMode;

    static {
        int n = 0;
        do {
            if (n >= 128) {
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
                return;
            }
            TerminalEmulator.mSpecialGraphicsCharMap[n] = n;
            n = (char)(n + 1);
        } while (true);
    }

    public TerminalEmulator(TermSession termSession, Screen screen, int n, int n2, ColorScheme colorScheme) {
        this.mSession = termSession;
        this.mScreen = screen;
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
        return true;
    }

    private void blockClear(int n, int n2, int n3) {
        this.blockClear(n, n2, n3, 1);
    }

    private void blockClear(int n, int n2, int n3, int n4) {
        this.mScreen.blockSet(n, n2, n3, n4, 32, this.getForeColor(), this.getBackColor());
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
                return;
            }
            case 56: {
                this.setCursorRowCol(this.mSavedCursorRow, this.mSavedCursorCol);
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
            case 62: 
        }
        this.mbKeypadApplicationMode = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void doEscLSBQuest(byte by) {
        int n = this.getDecFlagsMask(this.getArg0(0));
        switch (by) {
            default: {
                this.parseArg(by);
                break;
            }
            case 104: {
                this.mDecFlags |= n;
                break;
            }
            case 108: {
                this.mDecFlags &= ~ n;
                break;
            }
            case 114: {
                this.mDecFlags = this.mDecFlags & ~ n | this.mSavedDecFlags & n;
                break;
            }
            case 115: {
                this.mSavedDecFlags = this.mSavedDecFlags & ~ n | this.mDecFlags & n;
            }
        }
        if ((n & 8) != 0) {
            this.blockClear(0, 0, this.mColumns, this.mRows);
            this.setCursorRowCol(0, 0);
        }
        if ((n & 64) != 0) {
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
                        this.blockClear(0, this.mCursorRow + 1, this.mColumns, this.mBottomMargin - (this.mCursorRow + 1));
                        return;
                    }
                    case 1: {
                        this.blockClear(0, this.mTopMargin, this.mColumns, this.mCursorRow - this.mTopMargin);
                        this.blockClear(0, this.mCursorRow, this.mCursorCol + 1);
                        return;
                    }
                    case 2: 
                }
                this.blockClear(0, this.mTopMargin, this.mColumns, this.mBottomMargin - this.mTopMargin);
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
        this.mScreen.blockSet(0, 0, this.mColumns, this.mRows, 69, this.getForeColor(), this.getBackColor());
    }

    private void doEscSelectLeftParen(byte by) {
        this.doSelectCharSet(true, by);
    }

    private void doEscSelectRightParen(byte by) {
        this.doSelectCharSet(false, by);
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

    private void doSelectCharSet(boolean bl, byte by) {
        switch (by) {
            default: {
                this.unknownSequence(by);
            }
            case 48: 
            case 49: 
            case 50: 
            case 65: 
            case 66: 
        }
    }

    private void doSetMode(boolean bl) {
        int n = this.getArg0(0);
        switch (n) {
            default: {
                this.unknownParameter(n);
                return;
            }
            case 4: {
                this.mInsertMode = bl;
                return;
            }
            case 20: 
        }
        this.mAutomaticNewlineMode = bl;
    }

    private void emit(byte by) {
        if (this.mAlternateCharSet && by < 128) {
            this.emit(mSpecialGraphicsCharMap[by]);
            return;
        }
        this.emit((int)by);
    }

    private void emit(int n) {
        this.emit(n, this.getForeColor(), this.getBackColor());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void emit(int n, int n2, int n3) {
        boolean bl = this.autoWrapEnabled();
        int n4 = UnicodeTranscript.charWidth(n);
        if (bl && this.mCursorCol == this.mColumns - 1 && (this.mAboutToAutoWrap || n4 == 2)) {
            this.mScreen.setLineWrap(this.mCursorRow);
            this.mCursorCol = 0;
            this.mJustWrapped = true;
            if (this.mCursorRow + 1 < this.mBottomMargin) {
                ++this.mCursorRow;
            } else {
                this.scroll();
            }
        }
        boolean bl2 = this.mInsertMode;
        int n5 = n4 != 0 ? 1 : 0;
        if (n5 & bl2 && (n5 = this.mCursorCol + n4) < this.mColumns) {
            this.mScreen.blockCopy(this.mCursorCol, this.mCursorRow, this.mColumns - n5, 1, n5, this.mCursorRow);
        }
        if (n4 == 0) {
            if (this.mJustWrapped) {
                this.mScreen.set(this.mColumns - this.mLastEmittedCharWidth, this.mCursorRow - 1, n, n2, n3);
            } else {
                this.mScreen.set(this.mCursorCol - this.mLastEmittedCharWidth, this.mCursorRow, n, n2, n3);
            }
        } else {
            this.mScreen.set(this.mCursorCol, this.mCursorRow, n, n2, n3);
            this.mJustWrapped = false;
        }
        if (bl) {
            bl = this.mCursorCol == this.mColumns - 1;
            this.mAboutToAutoWrap = bl;
        }
        this.mCursorCol = Math.min(this.mCursorCol + n4, this.mColumns - 1);
        if (n4 > 0) {
            this.mLastEmittedCharWidth = n4;
        }
    }

    private void emit(char[] arrc) {
        if (Character.isHighSurrogate(arrc[0])) {
            this.emit(Character.toCodePoint(arrc[0], arrc[1]));
            return;
        }
        this.emit(arrc[0]);
    }

    private void emit(char[] arrc, int n, int n2) {
        this.emit(arrc, n, n2, this.getForeColor(), this.getBackColor());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void emit(char[] arrc, int n, int n2, int n3, int n4) {
        while (n < n2 && arrc[n] != '\u0000') {
            if (Character.isHighSurrogate(arrc[n])) {
                this.emit(Character.toCodePoint(arrc[n], arrc[n + 1]), n3, n4);
                ++n;
            } else {
                this.emit(arrc[n], n3, n4);
            }
            ++n;
        }
        return;
    }

    private void finishSequence() {
        this.mEscapeState = 0;
    }

    private int getArg(int n, int n2) {
        int n3;
        n = n3 = this.mArgs[n];
        if (n3 < 0) {
            n = n2;
        }
        return n;
    }

    private int getArg0(int n) {
        return this.getArg(0, n);
    }

    private int getArg1(int n) {
        return this.getArg(1, n);
    }

    private int getBackColor() {
        if (this.mInverseColors) {
            return this.mForeColor & 7 | this.mBackColor & 8;
        }
        return this.mBackColor;
    }

    private int getDecFlagsMask(int n) {
        if (n >= 1 && n <= 9) {
            return 1 << n;
        }
        return 0;
    }

    private int getForeColor() {
        if (this.mInverseColors) {
            return this.mBackColor & 7 | this.mForeColor & 8;
        }
        return this.mForeColor;
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
                return true;
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

    private void logError(String string2) {
        this.finishSequence();
    }

    private void logError(String string2, byte by) {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int nextTabStop(int n) {
        ++n;
        while (n < this.mColumns) {
            int n2 = n;
            if (this.mTabStop[n]) return n2;
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

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int prevTabStop(int n) {
        --n;
        while (n >= 0) {
            int n2 = n;
            if (this.mTabStop[n]) return n2;
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
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [2[CASE]], but top level block is 11[SWITCH]
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
        this.mScreen.scroll(this.mTopMargin, this.mBottomMargin);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void selectGraphicRendition() {
        var1_1 = 0;
        do {
            if (var1_1 > this.mArgIndex) {
                return;
            }
            var2_2 = var3_3 = this.mArgs[var1_1];
            if (var3_3 >= 0) ** GOTO lbl9
            if (this.mArgIndex <= 0) {
                var2_2 = 0;
lbl9: // 2 sources:
                if (var2_2 == 0) {
                    this.mInverseColors = false;
                    this.mForeColor = this.mDefaultForeColor;
                    this.mBackColor = this.mDefaultBackColor;
                } else if (var2_2 == 1) {
                    this.mForeColor |= 8;
                } else if (var2_2 == 3) {
                    this.mInverseColors = true;
                } else if (var2_2 == 4) {
                    this.mBackColor |= 8;
                } else if (var2_2 == 7) {
                    this.mInverseColors = true;
                } else if (var2_2 == 10) {
                    this.setAltCharSet(false);
                } else if (var2_2 == 11) {
                    this.setAltCharSet(true);
                } else if (var2_2 == 22) {
                    this.mForeColor &= 7;
                } else if (var2_2 == 23) {
                    this.mInverseColors = false;
                } else if (var2_2 == 24) {
                    this.mBackColor &= 7;
                } else if (var2_2 == 27) {
                    this.mInverseColors = false;
                } else if (var2_2 >= 30 && var2_2 <= 37) {
                    this.mForeColor = this.mForeColor & 8 | var2_2 - 30;
                } else if (var2_2 == 39) {
                    this.mForeColor = this.mDefaultForeColor | this.mForeColor & 8;
                    this.mBackColor &= 7;
                } else if (var2_2 >= 40 && var2_2 <= 47) {
                    this.mBackColor = this.mBackColor & 8 | var2_2 - 40;
                } else if (var2_2 == 49) {
                    this.mBackColor = this.mDefaultBackColor | this.mBackColor & 8;
                }
            }
            ++var1_1;
        } while (true);
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
        return;
    }

    private void setHorizontalVerticalPosition() {
        this.setCursorPosition(this.getArg1(1) - 1, this.getArg0(1) - 1);
    }

    private void startEscapeSequence(int n) {
        this.mEscapeState = n;
        this.mArgIndex = 0;
        n = 0;
        while (n < 16) {
            this.mArgs[n] = -1;
            ++n;
        }
        return;
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
        return;
    }

    public void clearScrollCounter() {
        this.mScrollCounter = 0;
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

    public int getScrollCounter() {
        return this.mScrollCounter;
    }

    public String getSelectedText(int n, int n2, int n3, int n4) {
        return this.mScreen.getSelectedText(n, n2, n3, n4);
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
        this.mDecFlags = 0;
        this.mSavedDecFlags = 0;
        this.mInsertMode = false;
        this.mAutomaticNewlineMode = false;
        this.mTopMargin = 0;
        this.mBottomMargin = this.mRows;
        this.mAboutToAutoWrap = false;
        this.mForeColor = this.mDefaultForeColor;
        this.mBackColor = this.mDefaultBackColor;
        this.mInverseColors = false;
        this.mbKeypadApplicationMode = false;
        this.mAlternateCharSet = false;
        this.setDefaultTabStops();
        this.blockClear(0, 0, this.mColumns, this.mRows);
        this.setUTF8Mode(this.mDefaultUTF8Mode);
        this.mUTF8EscapeUsed = false;
        this.mUTF8ToFollow = 0;
        this.mUTF8ByteBuffer.clear();
        this.mInputCharBuffer.clear();
    }

    public void setColorScheme(ColorScheme colorScheme) {
        this.mDefaultForeColor = colorScheme.getForeColorIndex();
        this.mDefaultBackColor = colorScheme.getBackColorIndex();
        this.mForeColor = this.mDefaultForeColor;
        this.mBackColor = this.mDefaultBackColor;
    }

    public void setDefaultUTF8Mode(boolean bl) {
        this.mDefaultUTF8Mode = bl;
        if (!this.mUTF8EscapeUsed) {
            this.setUTF8Mode(bl);
        }
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
     */
    public void updateSize(int n, int n2) {
        if (this.mRows == n2 && this.mColumns == n) return;
        if (n <= 0) {
            throw new IllegalArgumentException("rows:" + n);
        }
        if (n2 <= 0) {
            throw new IllegalArgumentException("rows:" + n2);
        }
        int[] arrn = new int[]{this.mCursorCol, this.mCursorRow};
        boolean bl = this.mScreen.fastResize(n, n2, arrn);
        StringBuilder stringBuilder = null;
        String string2 = null;
        StringBuilder stringBuilder2 = null;
        String string3 = null;
        if (!bl) {
            stringBuilder = new StringBuilder(1);
            string2 = this.mScreen.getSelectedText(stringBuilder, this.mCursorCol, this.mCursorRow, this.mCursorCol, this.mCursorRow);
            this.mScreen.set(this.mCursorCol, this.mCursorRow, 27, 0, 0);
            stringBuilder2 = new StringBuilder();
            string3 = this.mScreen.getTranscriptText(stringBuilder2);
            this.mScreen.resize(n, n2, this.mForeColor, this.mBackColor);
        }
        if (this.mRows != n2) {
            this.mRows = n2;
            this.mTopMargin = 0;
            this.mBottomMargin = this.mRows;
        }
        if (this.mColumns != n) {
            n2 = this.mColumns;
            this.mColumns = n;
            boolean[] arrbl = this.mTabStop;
            this.mTabStop = new boolean[this.mColumns];
            n = Math.min(n2, n);
            System.arraycopy(arrbl, 0, this.mTabStop, 0, n);
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
        int n3 = -1;
        int n4 = -1;
        int n5 = -1;
        n2 = string3.length() - 1;
        do {
            if (n2 < 0 || string3.charAt(n2) != '\n') break;
            --n2;
        } while (true);
        int n6 = 0;
        n = 0;
        do {
            int n7;
            if (n > n2) {
                if (n3 == -1 || n4 == -1) return;
                {
                    this.mCursorRow = n3;
                    this.mCursorCol = n4;
                    n = this.mScreen.getActiveRows() - n5;
                    if (n <= 0 || n > n3) break;
                    this.mCursorRow -= n;
                    return;
                }
            }
            char c = string3.charAt(n);
            int n8 = stringBuilder2.charAt(n - n6) >> 4 & 15;
            int n9 = stringBuilder2.charAt(n - n6) & 15;
            if (Character.isHighSurrogate(c)) {
                n7 = n + 1;
                this.emit(Character.toCodePoint(c, string3.charAt(n7)), n8, n9);
                n8 = n6 + 1;
            } else if (c == '\n') {
                this.setCursorCol(0);
                this.doLinefeed();
                n8 = n6;
                n7 = n;
            } else if (c == '\u001b') {
                n9 = this.mCursorRow;
                int n10 = this.mCursorCol;
                int n11 = this.mScreen.getActiveRows();
                n8 = n6;
                n7 = n;
                n4 = n10;
                n3 = n9;
                n5 = n11;
                if (string2 != null) {
                    n8 = n6;
                    n7 = n;
                    n4 = n10;
                    n3 = n9;
                    n5 = n11;
                    if (string2.length() > 0) {
                        n3 = stringBuilder.charAt(0);
                        n5 = stringBuilder.charAt(0);
                        this.emit(string2.toCharArray(), 0, string2.length(), n3 >> 4 & 15, n5 & 15);
                        n8 = n6;
                        n7 = n;
                        n4 = n10;
                        n3 = n9;
                        n5 = n11;
                    }
                }
            } else {
                this.emit(c, n8, n9);
                n8 = n6;
                n7 = n;
            }
            n = n7 + 1;
            n6 = n8;
        } while (true);
        if (n <= n3) {
            return;
        }
        this.mCursorRow = 0;
        this.mCursorCol = 0;
    }
}

