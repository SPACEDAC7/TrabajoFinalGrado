/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.KeyCharacterMap
 *  android.view.KeyEvent
 */
package hecticman.jsterm.emulatorview;

import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import hecticman.jsterm.emulatorview.TermSession;
import hecticman.jsterm.emulatorview.compat.AndroidCompat;
import hecticman.jsterm.emulatorview.compat.KeyCharacterMapCompat;
import java.io.IOException;

class TermKeyListener {
    public static final int KEYCODE_0 = 7;
    public static final int KEYCODE_1 = 8;
    public static final int KEYCODE_2 = 9;
    public static final int KEYCODE_3 = 10;
    public static final int KEYCODE_4 = 11;
    public static final int KEYCODE_5 = 12;
    public static final int KEYCODE_6 = 13;
    public static final int KEYCODE_7 = 14;
    public static final int KEYCODE_8 = 15;
    public static final int KEYCODE_9 = 16;
    public static final int KEYCODE_A = 29;
    public static final int KEYCODE_ALT_LEFT = 57;
    public static final int KEYCODE_ALT_RIGHT = 58;
    public static final int KEYCODE_APOSTROPHE = 75;
    public static final int KEYCODE_AT = 77;
    public static final int KEYCODE_AVR_INPUT = 182;
    public static final int KEYCODE_AVR_POWER = 181;
    public static final int KEYCODE_B = 30;
    public static final int KEYCODE_BACK = 4;
    public static final int KEYCODE_BACKSLASH = 73;
    public static final int KEYCODE_BOOKMARK = 174;
    public static final int KEYCODE_BREAK = 121;
    public static final int KEYCODE_BUTTON_A = 96;
    public static final int KEYCODE_BUTTON_B = 97;
    public static final int KEYCODE_BUTTON_C = 98;
    public static final int KEYCODE_BUTTON_L1 = 102;
    public static final int KEYCODE_BUTTON_L2 = 104;
    public static final int KEYCODE_BUTTON_MODE = 110;
    public static final int KEYCODE_BUTTON_R1 = 103;
    public static final int KEYCODE_BUTTON_R2 = 105;
    public static final int KEYCODE_BUTTON_SELECT = 109;
    public static final int KEYCODE_BUTTON_START = 108;
    public static final int KEYCODE_BUTTON_THUMBL = 106;
    public static final int KEYCODE_BUTTON_THUMBR = 107;
    public static final int KEYCODE_BUTTON_X = 99;
    public static final int KEYCODE_BUTTON_Y = 100;
    public static final int KEYCODE_BUTTON_Z = 101;
    public static final int KEYCODE_C = 31;
    public static final int KEYCODE_CALL = 5;
    public static final int KEYCODE_CAMERA = 27;
    public static final int KEYCODE_CAPS_LOCK = 115;
    public static final int KEYCODE_CAPTIONS = 175;
    public static final int KEYCODE_CHANNEL_DOWN = 167;
    public static final int KEYCODE_CHANNEL_UP = 166;
    public static final int KEYCODE_CLEAR = 28;
    public static final int KEYCODE_COMMA = 55;
    public static final int KEYCODE_CTRL_LEFT = 113;
    public static final int KEYCODE_CTRL_RIGHT = 114;
    public static final int KEYCODE_D = 32;
    public static final int KEYCODE_DEL = 67;
    public static final int KEYCODE_DPAD_CENTER = 23;
    public static final int KEYCODE_DPAD_DOWN = 20;
    public static final int KEYCODE_DPAD_LEFT = 21;
    public static final int KEYCODE_DPAD_RIGHT = 22;
    public static final int KEYCODE_DPAD_UP = 19;
    public static final int KEYCODE_DVR = 173;
    public static final int KEYCODE_E = 33;
    public static final int KEYCODE_ENDCALL = 6;
    public static final int KEYCODE_ENTER = 66;
    public static final int KEYCODE_ENVELOPE = 65;
    public static final int KEYCODE_EQUALS = 70;
    public static final int KEYCODE_ESCAPE = 111;
    public static final int KEYCODE_EXPLORER = 64;
    public static final int KEYCODE_F = 34;
    public static final int KEYCODE_F1 = 131;
    public static final int KEYCODE_F10 = 140;
    public static final int KEYCODE_F11 = 141;
    public static final int KEYCODE_F12 = 142;
    public static final int KEYCODE_F2 = 132;
    public static final int KEYCODE_F3 = 133;
    public static final int KEYCODE_F4 = 134;
    public static final int KEYCODE_F5 = 135;
    public static final int KEYCODE_F6 = 136;
    public static final int KEYCODE_F7 = 137;
    public static final int KEYCODE_F8 = 138;
    public static final int KEYCODE_F9 = 139;
    public static final int KEYCODE_FOCUS = 80;
    public static final int KEYCODE_FORWARD = 125;
    public static final int KEYCODE_FORWARD_DEL = 112;
    public static final int KEYCODE_FUNCTION = 119;
    public static final int KEYCODE_G = 35;
    public static final int KEYCODE_GRAVE = 68;
    public static final int KEYCODE_GUIDE = 172;
    public static final int KEYCODE_H = 36;
    public static final int KEYCODE_HEADSETHOOK = 79;
    public static final int KEYCODE_HOME = 3;
    public static final int KEYCODE_I = 37;
    public static final int KEYCODE_INFO = 165;
    public static final int KEYCODE_INSERT = 124;
    public static final int KEYCODE_J = 38;
    public static final int KEYCODE_K = 39;
    public static final int KEYCODE_L = 40;
    public static final int KEYCODE_LEFT_BRACKET = 71;
    public static final int KEYCODE_M = 41;
    public static final int KEYCODE_MEDIA_CLOSE = 128;
    public static final int KEYCODE_MEDIA_EJECT = 129;
    public static final int KEYCODE_MEDIA_FAST_FORWARD = 90;
    public static final int KEYCODE_MEDIA_NEXT = 87;
    public static final int KEYCODE_MEDIA_PAUSE = 127;
    public static final int KEYCODE_MEDIA_PLAY = 126;
    public static final int KEYCODE_MEDIA_PLAY_PAUSE = 85;
    public static final int KEYCODE_MEDIA_PREVIOUS = 88;
    public static final int KEYCODE_MEDIA_RECORD = 130;
    public static final int KEYCODE_MEDIA_REWIND = 89;
    public static final int KEYCODE_MEDIA_STOP = 86;
    public static final int KEYCODE_MENU = 82;
    public static final int KEYCODE_META_LEFT = 117;
    public static final int KEYCODE_META_RIGHT = 118;
    public static final int KEYCODE_MINUS = 69;
    public static final int KEYCODE_MOVE_END = 123;
    public static final int KEYCODE_MOVE_HOME = 122;
    public static final int KEYCODE_MUTE = 91;
    public static final int KEYCODE_N = 42;
    public static final int KEYCODE_NOTIFICATION = 83;
    public static final int KEYCODE_NUM = 78;
    public static final int KEYCODE_NUMPAD_0 = 144;
    public static final int KEYCODE_NUMPAD_1 = 145;
    public static final int KEYCODE_NUMPAD_2 = 146;
    public static final int KEYCODE_NUMPAD_3 = 147;
    public static final int KEYCODE_NUMPAD_4 = 148;
    public static final int KEYCODE_NUMPAD_5 = 149;
    public static final int KEYCODE_NUMPAD_6 = 150;
    public static final int KEYCODE_NUMPAD_7 = 151;
    public static final int KEYCODE_NUMPAD_8 = 152;
    public static final int KEYCODE_NUMPAD_9 = 153;
    public static final int KEYCODE_NUMPAD_ADD = 157;
    public static final int KEYCODE_NUMPAD_COMMA = 159;
    public static final int KEYCODE_NUMPAD_DIVIDE = 154;
    public static final int KEYCODE_NUMPAD_DOT = 158;
    public static final int KEYCODE_NUMPAD_ENTER = 160;
    public static final int KEYCODE_NUMPAD_EQUALS = 161;
    public static final int KEYCODE_NUMPAD_LEFT_PAREN = 162;
    public static final int KEYCODE_NUMPAD_MULTIPLY = 155;
    public static final int KEYCODE_NUMPAD_RIGHT_PAREN = 163;
    public static final int KEYCODE_NUMPAD_SUBTRACT = 156;
    public static final int KEYCODE_NUM_LOCK = 143;
    public static final int KEYCODE_O = 43;
    public static final int KEYCODE_OFFSET = 10485760;
    public static final int KEYCODE_P = 44;
    public static final int KEYCODE_PAGE_DOWN = 93;
    public static final int KEYCODE_PAGE_UP = 92;
    public static final int KEYCODE_PERIOD = 56;
    public static final int KEYCODE_PICTSYMBOLS = 94;
    public static final int KEYCODE_PLUS = 81;
    public static final int KEYCODE_POUND = 18;
    public static final int KEYCODE_POWER = 26;
    public static final int KEYCODE_PROG_BLUE = 186;
    public static final int KEYCODE_PROG_GREEN = 184;
    public static final int KEYCODE_PROG_RED = 183;
    public static final int KEYCODE_PROG_YELLOW = 185;
    public static final int KEYCODE_Q = 45;
    public static final int KEYCODE_R = 46;
    public static final int KEYCODE_RIGHT_BRACKET = 72;
    public static final int KEYCODE_S = 47;
    public static final int KEYCODE_SCROLL_LOCK = 116;
    public static final int KEYCODE_SEARCH = 84;
    public static final int KEYCODE_SEMICOLON = 74;
    public static final int KEYCODE_SETTINGS = 176;
    public static final int KEYCODE_SHIFT_LEFT = 59;
    public static final int KEYCODE_SHIFT_RIGHT = 60;
    public static final int KEYCODE_SLASH = 76;
    public static final int KEYCODE_SOFT_LEFT = 1;
    public static final int KEYCODE_SOFT_RIGHT = 2;
    public static final int KEYCODE_SPACE = 62;
    public static final int KEYCODE_STAR = 17;
    public static final int KEYCODE_STB_INPUT = 180;
    public static final int KEYCODE_STB_POWER = 179;
    public static final int KEYCODE_SWITCH_CHARSET = 95;
    public static final int KEYCODE_SYM = 63;
    public static final int KEYCODE_SYSRQ = 120;
    public static final int KEYCODE_T = 48;
    public static final int KEYCODE_TAB = 61;
    public static final int KEYCODE_TV = 170;
    public static final int KEYCODE_TV_INPUT = 178;
    public static final int KEYCODE_TV_POWER = 177;
    public static final int KEYCODE_U = 49;
    public static final int KEYCODE_UNKNOWN = 0;
    public static final int KEYCODE_V = 50;
    public static final int KEYCODE_VOLUME_DOWN = 25;
    public static final int KEYCODE_VOLUME_MUTE = 164;
    public static final int KEYCODE_VOLUME_UP = 24;
    public static final int KEYCODE_W = 51;
    public static final int KEYCODE_WINDOW = 171;
    public static final int KEYCODE_X = 52;
    public static final int KEYCODE_Y = 53;
    public static final int KEYCODE_Z = 54;
    public static final int KEYCODE_ZOOM_IN = 168;
    public static final int KEYCODE_ZOOM_OUT = 169;
    private static final int LAST_KEYCODE = 186;
    private static final int META_ALT_ON = 2;
    private static final int META_CAPS_LOCK_ON = 1048576;
    private static final int META_CTRL_MASK = 28672;
    private static final int META_CTRL_ON = 4096;
    private static final int META_SHIFT_ON = 1;
    private ModifierKey mAltKey;
    private String[] mAppKeyCodes = new String[256];
    private int mBackKeyCode;
    private ModifierKey mCapKey;
    private ModifierKey mControlKey;
    private ModifierKey mFnKey;
    private String[] mKeyCodes = new String[256];
    private TermSession mTermSession;

    public TermKeyListener(TermSession termSession) {
        this.mAltKey = new ModifierKey();
        this.mCapKey = new ModifierKey();
        this.mControlKey = new ModifierKey();
        this.mFnKey = new ModifierKey();
        this.mTermSession = termSession;
        this.initKeyCodes();
    }

    private void initKeyCodes() {
        this.mKeyCodes[23] = "\r";
        this.mKeyCodes[19] = "\u001b[A";
        this.mKeyCodes[20] = "\u001b[B";
        this.mKeyCodes[22] = "\u001b[C";
        this.mKeyCodes[21] = "\u001b[D";
        this.mKeyCodes[131] = "\u001b[OP";
        this.mKeyCodes[132] = "\u001b[OQ";
        this.mKeyCodes[133] = "\u001b[OR";
        this.mKeyCodes[134] = "\u001b[OS";
        this.mKeyCodes[135] = "\u001b[15~";
        this.mKeyCodes[136] = "\u001b[17~";
        this.mKeyCodes[137] = "\u001b[18~";
        this.mKeyCodes[138] = "\u001b[19~";
        this.mKeyCodes[139] = "\u001b[20~";
        this.mKeyCodes[140] = "\u001b[21~";
        this.mKeyCodes[141] = "\u001b[23~";
        this.mKeyCodes[142] = "\u001b[24~";
        this.mKeyCodes[120] = "\u001b[32~";
        this.mKeyCodes[121] = "\u001b[34~";
        this.mKeyCodes[61] = "\t";
        this.mKeyCodes[66] = "\r";
        this.mKeyCodes[111] = "\u001b";
        this.mKeyCodes[124] = "\u001b[2~";
        this.mKeyCodes[112] = "\u001b[3~";
        this.mKeyCodes[122] = "\u001b[1~";
        this.mKeyCodes[123] = "\u001b[4~";
        this.mKeyCodes[92] = "\u001b[5~";
        this.mKeyCodes[93] = "\u001b[6~";
        this.mKeyCodes[67] = "";
        this.mKeyCodes[143] = "\u001bOP";
        this.mKeyCodes[154] = "/";
        this.mKeyCodes[155] = "*";
        this.mKeyCodes[156] = "-";
        this.mKeyCodes[157] = "+";
        this.mKeyCodes[160] = "\r";
        this.mKeyCodes[161] = "=";
        this.mKeyCodes[158] = ".";
        this.mKeyCodes[159] = ",";
        this.mKeyCodes[144] = "0";
        this.mKeyCodes[145] = "1";
        this.mKeyCodes[146] = "2";
        this.mKeyCodes[147] = "3";
        this.mKeyCodes[148] = "4";
        this.mKeyCodes[149] = "5";
        this.mKeyCodes[150] = "6";
        this.mKeyCodes[151] = "7";
        this.mKeyCodes[152] = "8";
        this.mKeyCodes[153] = "9";
        this.mAppKeyCodes[19] = "\u001bOA";
        this.mAppKeyCodes[20] = "\u001bOB";
        this.mAppKeyCodes[22] = "\u001bOC";
        this.mAppKeyCodes[21] = "\u001bOD";
        this.mAppKeyCodes[154] = "\u001bOo";
        this.mAppKeyCodes[155] = "\u001bOj";
        this.mAppKeyCodes[156] = "\u001bOm";
        this.mAppKeyCodes[157] = "\u001bOk";
        this.mAppKeyCodes[160] = "\u001bOM";
        this.mAppKeyCodes[161] = "\u001bOX";
        this.mAppKeyCodes[158] = "\u001bOn";
        this.mAppKeyCodes[159] = "\u001bOl";
        this.mAppKeyCodes[144] = "\u001bOp";
        this.mAppKeyCodes[145] = "\u001bOq";
        this.mAppKeyCodes[146] = "\u001bOr";
        this.mAppKeyCodes[147] = "\u001bOs";
        this.mAppKeyCodes[148] = "\u001bOt";
        this.mAppKeyCodes[149] = "\u001bOu";
        this.mAppKeyCodes[150] = "\u001bOv";
        this.mAppKeyCodes[151] = "\u001bOw";
        this.mAppKeyCodes[152] = "\u001bOx";
        this.mAppKeyCodes[153] = "\u001bOy";
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isEventFromToggleDevice(KeyEvent keyEvent) {
        if (AndroidCompat.SDK < 11 || KeyCharacterMapCompat.wrap((Object)KeyCharacterMap.load((int)keyEvent.getDeviceId())).getModifierBehaviour() == 1) {
            return true;
        }
        return false;
    }

    public void handleControlKey(boolean bl) {
        if (bl) {
            this.mControlKey.onPress();
            return;
        }
        this.mControlKey.onRelease();
    }

    public void handleFnKey(boolean bl) {
        if (bl) {
            this.mFnKey.onPress();
            return;
        }
        this.mFnKey.onRelease();
    }

    public boolean handleKeyCode(int n, boolean bl) throws IOException {
        if (n >= 0 && n < this.mKeyCodes.length) {
            String string2 = null;
            if (bl) {
                string2 = this.mAppKeyCodes[n];
            }
            String string3 = string2;
            if (string2 == null) {
                string3 = this.mKeyCodes[n];
            }
            if (string3 != null) {
                this.mTermSession.write(string3);
                return true;
            }
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void keyDown(int var1_1, KeyEvent var2_2, boolean var3_3) throws IOException {
        var9_4 = true;
        if (this.handleKeyCode(var1_1, var3_3)) {
            return;
        }
        var6_5 = -1;
        var10_6 = this.isEventFromToggleDevice(var2_2);
        var5_7 = 0;
        switch (var1_1) {
            case 113: 
            case 114: 
            case 115: {
                return;
            }
            default: {
                var4_8 = var2_2.getMetaState();
                var1_1 = (var4_8 & 4096) != 0 ? 1 : 0;
            }
            case 57: 
            case 58: {
                var1_1 = var5_7;
                var4_8 = var6_5;
                if (var10_6) {
                    this.mAltKey.onPress();
                    var1_1 = var5_7;
                    var4_8 = var6_5;
                }
                ** GOTO lbl42
            }
            case 59: 
            case 60: {
                var1_1 = var5_7;
                var4_8 = var6_5;
                if (var10_6) {
                    this.mCapKey.onPress();
                    var1_1 = var5_7;
                    var4_8 = var6_5;
                }
                ** GOTO lbl42
            }
            case 4: {
                var4_8 = this.mBackKeyCode;
                var1_1 = var5_7;
                ** GOTO lbl42
            }
        }
        var5_7 = var10_6 != false && this.mCapKey.isActive() != false ? 1 : 0;
        var6_5 = var10_6 != false && this.mAltKey.isActive() != false ? 1 : 0;
        var4_8 = var7_9 = var4_8 & -28673;
        if (var5_7 != 0) {
            var4_8 = var7_9 | 1;
        }
        var5_7 = var4_8;
        if (var6_5 != 0) {
            var5_7 = var4_8 | 2;
        }
        var4_8 = var2_2.getUnicodeChar(var5_7);
lbl42: // 4 sources:
        var8_10 = var1_1 != 0 || var10_6 != false && this.mControlKey.isActive() != false;
        if (!var10_6 || !this.mFnKey.isActive()) {
            var9_4 = false;
        }
        if ((var1_1 = this.mapControlChar(var8_10, var9_4, var4_8)) >= 10485760) {
            this.handleKeyCode(var1_1 - 10485760, var3_3);
            return;
        }
        if (var1_1 < 0) return;
        this.mTermSession.write(var1_1);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void keyUp(int n, KeyEvent keyEvent) {
        boolean bl = this.isEventFromToggleDevice(keyEvent);
        switch (n) {
            case 57: 
            case 58: {
                if (!bl) return;
                {
                    this.mAltKey.onRelease();
                    return;
                }
            }
            default: {
                return;
            }
            case 59: 
            case 60: 
        }
        if (!bl) return;
        {
            this.mCapKey.onRelease();
            return;
        }
    }

    public int mapControlChar(int n) {
        return this.mapControlChar(this.mControlKey.isActive(), this.mFnKey.isActive(), n);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int mapControlChar(boolean var1_1, boolean var2_2, int var3_3) {
        var4_4 = var3_3;
        if (!var1_1) ** GOTO lbl37
        if (var4_4 >= 97 && var4_4 <= 122) {
            var3_3 = (char)(var4_4 - 97 + 1);
        } else if (var4_4 >= 65 && var4_4 <= 90) {
            var3_3 = (char)(var4_4 - 65 + 1);
        } else if (var4_4 == 32 || var4_4 == 50) {
            var3_3 = 0;
        } else if (var4_4 == 91 || var4_4 == 51) {
            var3_3 = 27;
        } else if (var4_4 == 92 || var4_4 == 52) {
            var3_3 = 28;
        } else if (var4_4 == 93 || var4_4 == 53) {
            var3_3 = 29;
        } else if (var4_4 == 94 || var4_4 == 54) {
            var3_3 = 30;
        } else if (var4_4 == 95 || var4_4 == 55) {
            var3_3 = 31;
        } else if (var4_4 == 56) {
            var3_3 = 127;
        } else if (var4_4 == 57) {
            var3_3 = 10485901;
        } else {
            var3_3 = var4_4;
            if (var4_4 == 48) {
                var3_3 = 10485902;
            }
        }
        ** GOTO lbl91
lbl37: // 1 sources:
        var3_3 = var4_4;
        if (!var2_2) ** GOTO lbl91
        if (var4_4 != 119 && var4_4 != 87) ** GOTO lbl42
        var3_3 = 10485779;
        ** GOTO lbl91
lbl42: // 1 sources:
        if (var4_4 != 97 && var4_4 != 65) ** GOTO lbl45
        var3_3 = 10485781;
        ** GOTO lbl91
lbl45: // 1 sources:
        if (var4_4 != 115 && var4_4 != 83) ** GOTO lbl48
        var3_3 = 10485780;
        ** GOTO lbl91
lbl48: // 1 sources:
        if (var4_4 != 100 && var4_4 != 68) ** GOTO lbl51
        var3_3 = 10485782;
        ** GOTO lbl91
lbl51: // 1 sources:
        if (var4_4 != 112 && var4_4 != 80) ** GOTO lbl54
        var3_3 = 10485852;
        ** GOTO lbl91
lbl54: // 1 sources:
        if (var4_4 != 110 && var4_4 != 78) ** GOTO lbl57
        var3_3 = 10485853;
        ** GOTO lbl91
lbl57: // 1 sources:
        if (var4_4 != 116 && var4_4 != 84) ** GOTO lbl60
        var3_3 = 10485821;
        ** GOTO lbl91
lbl60: // 1 sources:
        if (var4_4 != 108 && var4_4 != 76) ** GOTO lbl63
        var3_3 = 124;
        ** GOTO lbl91
lbl63: // 1 sources:
        if (var4_4 != 117 && var4_4 != 85) ** GOTO lbl66
        var3_3 = 95;
        ** GOTO lbl91
lbl66: // 1 sources:
        if (var4_4 != 101 && var4_4 != 69) ** GOTO lbl69
        var3_3 = 27;
        ** GOTO lbl91
lbl69: // 1 sources:
        if (var4_4 != 46) ** GOTO lbl72
        var3_3 = 28;
        ** GOTO lbl91
lbl72: // 1 sources:
        if (var4_4 <= 48 || var4_4 > 57) ** GOTO lbl75
        var3_3 = (char)(10485760 + var4_4 + 131 - 1);
        ** GOTO lbl91
lbl75: // 1 sources:
        if (var4_4 != 48) ** GOTO lbl78
        var3_3 = 10485900;
        ** GOTO lbl91
lbl78: // 1 sources:
        if (var4_4 != 105 && var4_4 != 73) ** GOTO lbl81
        var3_3 = 10485884;
        ** GOTO lbl91
lbl81: // 1 sources:
        if (var4_4 != 120 && var4_4 != 88) ** GOTO lbl84
        var3_3 = 10485872;
        ** GOTO lbl91
lbl84: // 1 sources:
        if (var4_4 != 104 && var4_4 != 72) ** GOTO lbl87
        var3_3 = 10485882;
        ** GOTO lbl91
lbl87: // 1 sources:
        if (var4_4 == 102) ** GOTO lbl-1000
        var3_3 = var4_4;
        if (var4_4 == 70) lbl-1000: // 2 sources:
        {
            var3_3 = 10485883;
        }
lbl91: // 31 sources:
        if (var3_3 <= -1) return var3_3;
        this.mAltKey.adjustAfterKeypress();
        this.mCapKey.adjustAfterKeypress();
        this.mControlKey.adjustAfterKeypress();
        this.mFnKey.adjustAfterKeypress();
        return var3_3;
    }

    public void setBackKeyCharacter(int n) {
        this.mBackKeyCode = n;
    }

    private class ModifierKey {
        private static final int LOCKED = 4;
        private static final int PRESSED = 1;
        private static final int RELEASED = 2;
        private static final int UNPRESSED = 0;
        private static final int USED = 3;
        private int mState;

        public ModifierKey() {
            this.mState = 0;
        }

        public void adjustAfterKeypress() {
            switch (this.mState) {
                default: {
                    return;
                }
                case 1: {
                    this.mState = 3;
                    return;
                }
                case 2: 
            }
            this.mState = 0;
        }

        public boolean isActive() {
            if (this.mState != 0) {
                return true;
            }
            return false;
        }

        public void onPress() {
            switch (this.mState) {
                default: {
                    this.mState = 1;
                }
                case 1: 
                case 3: {
                    return;
                }
                case 2: {
                    this.mState = 4;
                    return;
                }
                case 4: 
            }
            this.mState = 0;
        }

        public void onRelease() {
            switch (this.mState) {
                default: {
                    return;
                }
                case 3: {
                    this.mState = 0;
                    return;
                }
                case 1: 
            }
            this.mState = 2;
        }
    }

}

