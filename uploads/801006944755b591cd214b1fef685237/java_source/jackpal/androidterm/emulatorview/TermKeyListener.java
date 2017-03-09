/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.KeyCharacterMap
 *  android.view.KeyEvent
 */
package jackpal.androidterm.emulatorview;

import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import jackpal.androidterm.emulatorview.TermSession;
import jackpal.androidterm.emulatorview.compat.AndroidCompat;
import jackpal.androidterm.emulatorview.compat.KeyCharacterMapCompat;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

class TermKeyListener {
    public static final int KEYCODE_OFFSET = 10485760;
    private static final int KEYMOD_ALT = Integer.MIN_VALUE;
    private static final int KEYMOD_CTRL = 1073741824;
    private static final int KEYMOD_SCAN = 268435456;
    private static final int KEYMOD_SHIFT = 536870912;
    private static final boolean LOG_COMBINING_ACCENT = false;
    private static final boolean LOG_KEYS = false;
    private static final boolean LOG_MISC = false;
    private static final boolean SUPPORT_8_BIT_META = false;
    private static final String TAG = "TermKeyListener";
    private static Map<Integer, String> mKeyMap;
    private ModifierKey mAltKey;
    private boolean mAltSendsEsc;
    private String[] mAppKeyCodes = new String[256];
    private int mBackKeyCode;
    private ModifierKey mCapKey;
    private int mCombiningAccent;
    private ModifierKey mControlKey;
    private int mCursorMode;
    private ModifierKey mFnKey;
    private boolean mHardwareControlKey;
    private String[] mKeyCodes = new String[256];
    private TermSession mTermSession;

    public TermKeyListener(TermSession termSession) {
        this.mAltKey = new ModifierKey();
        this.mCapKey = new ModifierKey();
        this.mControlKey = new ModifierKey();
        this.mFnKey = new ModifierKey();
        this.mTermSession = termSession;
        this.initKeyCodes();
        this.updateCursorMode();
    }

    private static int getCursorModeHelper(ModifierKey modifierKey, int n) {
        return modifierKey.getUIMode() << n;
    }

    private void initKeyCodes() {
        mKeyMap = new HashMap<Integer, String>();
        mKeyMap.put(536870933, "\u001b[1;2D");
        mKeyMap.put(-2147483627, "\u001b[1;3D");
        mKeyMap.put(-1610612715, "\u001b[1;4D");
        mKeyMap.put(1073741845, "\u001b[1;5D");
        mKeyMap.put(1610612757, "\u001b[1;6D");
        mKeyMap.put(-1073741803, "\u001b[1;7D");
        mKeyMap.put(-536870891, "\u001b[1;8D");
        mKeyMap.put(536870934, "\u001b[1;2C");
        mKeyMap.put(-2147483626, "\u001b[1;3C");
        mKeyMap.put(-1610612714, "\u001b[1;4C");
        mKeyMap.put(1073741846, "\u001b[1;5C");
        mKeyMap.put(1610612758, "\u001b[1;6C");
        mKeyMap.put(-1073741802, "\u001b[1;7C");
        mKeyMap.put(-536870890, "\u001b[1;8C");
        mKeyMap.put(536870931, "\u001b[1;2A");
        mKeyMap.put(-2147483629, "\u001b[1;3A");
        mKeyMap.put(-1610612717, "\u001b[1;4A");
        mKeyMap.put(1073741843, "\u001b[1;5A");
        mKeyMap.put(1610612755, "\u001b[1;6A");
        mKeyMap.put(-1073741805, "\u001b[1;7A");
        mKeyMap.put(-536870893, "\u001b[1;8A");
        mKeyMap.put(536870932, "\u001b[1;2B");
        mKeyMap.put(-2147483628, "\u001b[1;3B");
        mKeyMap.put(-1610612716, "\u001b[1;4B");
        mKeyMap.put(1073741844, "\u001b[1;5B");
        mKeyMap.put(1610612756, "\u001b[1;6B");
        mKeyMap.put(-1073741804, "\u001b[1;7B");
        mKeyMap.put(-536870892, "\u001b[1;8B");
        mKeyMap.put(536871024, "\u001b[3;2~");
        mKeyMap.put(-2147483536, "\u001b[3;3~");
        mKeyMap.put(1073741936, "\u001b[3;5~");
        mKeyMap.put(536871036, "\u001b[2;2~");
        mKeyMap.put(-2147483524, "\u001b[2;3~");
        mKeyMap.put(1073741948, "\u001b[2;5~");
        mKeyMap.put(1073741946, "\u001b[1;5H");
        mKeyMap.put(1073741947, "\u001b[1;5F");
        mKeyMap.put(-2147483582, "\u001b\r");
        mKeyMap.put(1073741890, "\n");
        mKeyMap.put(1073741886, "\u0000");
        mKeyMap.put(536871043, "\u001b[1;2P");
        mKeyMap.put(536871044, "\u001b[1;2Q");
        mKeyMap.put(536871045, "\u001b[1;2R");
        mKeyMap.put(536871046, "\u001b[1;2S");
        mKeyMap.put(536871047, "\u001b[15;2~");
        mKeyMap.put(536871048, "\u001b[17;2~");
        mKeyMap.put(536871049, "\u001b[18;2~");
        mKeyMap.put(536871050, "\u001b[19;2~");
        mKeyMap.put(536871051, "\u001b[20;2~");
        mKeyMap.put(536871052, "\u001b[21;2~");
        this.mKeyCodes[23] = "\r";
        this.mKeyCodes[19] = "\u001b[A";
        this.mKeyCodes[20] = "\u001b[B";
        this.mKeyCodes[22] = "\u001b[C";
        this.mKeyCodes[21] = "\u001b[D";
        this.setFnKeys("vt100");
        this.mKeyCodes[120] = "\u001b[32~";
        this.mKeyCodes[121] = "\u001b[34~";
        this.mKeyCodes[61] = "\t";
        this.mKeyCodes[66] = "\r";
        this.mKeyCodes[111] = "\u001b";
        this.mKeyCodes[124] = "\u001b[2~";
        this.mKeyCodes[112] = "\u001b[3~";
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
        this.mKeyCodes[159] = ",";
        this.mKeyCodes[158] = this.mKeyCodes[112];
        this.mKeyCodes[144] = this.mKeyCodes[124];
        this.mKeyCodes[145] = this.mKeyCodes[123];
        this.mKeyCodes[146] = this.mKeyCodes[20];
        this.mKeyCodes[147] = this.mKeyCodes[93];
        this.mKeyCodes[148] = this.mKeyCodes[21];
        this.mKeyCodes[149] = "5";
        this.mKeyCodes[150] = this.mKeyCodes[22];
        this.mKeyCodes[151] = this.mKeyCodes[122];
        this.mKeyCodes[152] = this.mKeyCodes[19];
        this.mKeyCodes[153] = this.mKeyCodes[92];
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
    static boolean isEventFromToggleDevice(KeyEvent keyEvent) {
        if (AndroidCompat.SDK < 11 || KeyCharacterMapCompat.wrap((Object)KeyCharacterMap.load((int)keyEvent.getDeviceId())).getModifierBehaviour() == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setFnKeys(String string2) {
        if (string2.equals("xterm")) {
            String[] arrstring = this.mKeyCodes;
            this.mKeyCodes[122] = "\u001bOH";
            arrstring[151] = "\u001bOH";
            arrstring = this.mKeyCodes;
            this.mKeyCodes[123] = "\u001bOF";
            arrstring[145] = "\u001bOF";
        } else {
            String[] arrstring = this.mKeyCodes;
            this.mKeyCodes[122] = "\u001b[1~";
            arrstring[151] = "\u001b[1~";
            arrstring = this.mKeyCodes;
            this.mKeyCodes[123] = "\u001b[4~";
            arrstring[145] = "\u001b[4~";
        }
        if (string2.equals("vt100")) {
            this.mKeyCodes[131] = "\u001bOP";
            this.mKeyCodes[132] = "\u001bOQ";
            this.mKeyCodes[133] = "\u001bOR";
            this.mKeyCodes[134] = "\u001bOS";
            this.mKeyCodes[135] = "\u001bOt";
            this.mKeyCodes[136] = "\u001bOu";
            this.mKeyCodes[137] = "\u001bOv";
            this.mKeyCodes[138] = "\u001bOl";
            this.mKeyCodes[139] = "\u001bOw";
            this.mKeyCodes[140] = "\u001bOx";
            this.mKeyCodes[141] = "\u001b[23~";
            this.mKeyCodes[142] = "\u001b[24~";
            return;
        }
        if (string2.startsWith("linux")) {
            this.mKeyCodes[131] = "\u001b[[A";
            this.mKeyCodes[132] = "\u001b[[B";
            this.mKeyCodes[133] = "\u001b[[C";
            this.mKeyCodes[134] = "\u001b[[D";
            this.mKeyCodes[135] = "\u001b[[E";
            this.mKeyCodes[136] = "\u001b[17~";
            this.mKeyCodes[137] = "\u001b[18~";
            this.mKeyCodes[138] = "\u001b[19~";
            this.mKeyCodes[139] = "\u001b[20~";
            this.mKeyCodes[140] = "\u001b[21~";
            this.mKeyCodes[141] = "\u001b[23~";
            this.mKeyCodes[142] = "\u001b[24~";
            return;
        }
        this.mKeyCodes[131] = "\u001bOP";
        this.mKeyCodes[132] = "\u001bOQ";
        this.mKeyCodes[133] = "\u001bOR";
        this.mKeyCodes[134] = "\u001bOS";
        this.mKeyCodes[135] = "\u001b[15~";
        this.mKeyCodes[136] = "\u001b[17~";
        this.mKeyCodes[137] = "\u001b[18~";
        this.mKeyCodes[138] = "\u001b[19~";
        this.mKeyCodes[139] = "\u001b[20~";
        this.mKeyCodes[140] = "\u001b[21~";
        this.mKeyCodes[141] = "\u001b[23~";
        this.mKeyCodes[142] = "\u001b[24~";
    }

    private void updateCursorMode() {
        this.mCursorMode = TermKeyListener.getCursorModeHelper(this.mCapKey, 0) | TermKeyListener.getCursorModeHelper(this.mAltKey, 2) | TermKeyListener.getCursorModeHelper(this.mControlKey, 4) | TermKeyListener.getCursorModeHelper(this.mFnKey, 6);
    }

    public boolean getAltSendsEsc() {
        return this.mAltSendsEsc;
    }

    public int getCombiningAccent() {
        return this.mCombiningAccent;
    }

    public int getCursorMode() {
        return this.mCursorMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void handleControlKey(boolean bl) {
        if (bl) {
            this.mControlKey.onPress();
        } else {
            this.mControlKey.onRelease();
        }
        this.updateCursorMode();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void handleFnKey(boolean bl) {
        if (bl) {
            this.mFnKey.onPress();
        } else {
            this.mFnKey.onRelease();
        }
        this.updateCursorMode();
    }

    public void handleHardwareControlKey(boolean bl) {
        this.mHardwareControlKey = bl;
    }

    public boolean handleKeyCode(int n, KeyEvent object, boolean bl) throws IOException {
        Object object2 = null;
        if (object != null) {
            int n2 = 0;
            if (this.mHardwareControlKey || this.mControlKey.isActive()) {
                n2 = 0 | 1073741824;
            }
            int n3 = n2;
            if ((object.getMetaState() & 2) != 0) {
                n3 = n2 | Integer.MIN_VALUE;
            }
            n2 = n3;
            if ((object.getMetaState() & 1) != 0) {
                n2 = n3 | 536870912;
            }
            object2 = object = mKeyMap.get(object.getScanCode() | 268435456 | n2);
            if (object == null) {
                object2 = mKeyMap.get(n | n2);
            }
        }
        object = object2;
        if (object2 == null) {
            object = object2;
            if (n >= 0) {
                object = object2;
                if (n < this.mKeyCodes.length) {
                    if (bl) {
                        object2 = this.mAppKeyCodes[n];
                    }
                    object = object2;
                    if (object2 == null) {
                        object = this.mKeyCodes[n];
                    }
                }
            }
        }
        if (object != null) {
            this.mTermSession.write((String)object);
            return true;
        }
        return false;
    }

    public boolean isAltActive() {
        return this.mAltKey.isActive();
    }

    public boolean isCtrlActive() {
        return this.mControlKey.isActive();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void keyDown(int var1_1, KeyEvent var2_2, boolean var3_3, boolean var4_4) throws IOException {
        if (this.handleKeyCode(var1_1, var2_2, var3_3)) {
            return;
        }
        var7_5 = -1;
        var5_6 = 0;
        switch (var1_1) {
            case 113: 
            case 114: 
            case 115: 
            case 119: {
                return;
            }
            default: {
                var9_7 = var2_2.getMetaState();
                var5_6 = (var9_7 & 4096) != 0 ? 1 : 0;
            }
            case 57: 
            case 58: {
                var6_9 = var5_6;
                var1_1 = var7_5;
                if (var4_4) {
                    this.mAltKey.onPress();
                    this.updateCursorMode();
                    var1_1 = var7_5;
                    var6_9 = var5_6;
                }
                ** GOTO lbl65
            }
            case 59: 
            case 60: {
                var6_9 = var5_6;
                var1_1 = var7_5;
                if (var4_4) {
                    this.mCapKey.onPress();
                    this.updateCursorMode();
                    var6_9 = var5_6;
                    var1_1 = var7_5;
                }
                ** GOTO lbl65
            }
            case 4: {
                var1_1 = this.mBackKeyCode;
                var6_9 = var5_6;
                ** GOTO lbl65
            }
        }
        var7_5 = var4_4 != false && this.mCapKey.isActive() != false ? 1 : 0;
        var1_1 = var4_4 != false && this.mAltKey.isActive() != false ? 1 : 0;
        var6_9 = var8_8 = var9_7 & -28673;
        if (var7_5 != 0) {
            var6_9 = var8_8 | 1;
        }
        var7_5 = var1_1;
        if (!var4_4) {
            var7_5 = var1_1;
            if ((var6_9 & 2) != 0) {
                var7_5 = 1;
            }
        }
        var1_1 = var6_9;
        if (var7_5 != 0) {
            if (this.mAltSendsEsc) {
                this.mTermSession.write(new byte[]{27}, 0, 1);
                var1_1 = var6_9 & -51;
            } else {
                var1_1 = var6_9 | 2;
            }
        }
        var6_9 = var1_1;
        if ((65536 & var9_7) != 0) {
            var6_9 = var1_1;
            if (this.mAltSendsEsc) {
                this.mTermSession.write(new byte[]{27}, 0, 1);
                var6_9 = var1_1 & -458753;
            }
        }
        if ((Integer.MIN_VALUE & (var7_5 = var2_2.getUnicodeChar(var6_9))) != 0) {
            this.mCombiningAccent = Integer.MAX_VALUE & var7_5;
            return;
        }
        var6_9 = var5_6;
        var1_1 = var7_5;
        if (this.mCombiningAccent != 0) {
            var1_1 = KeyCharacterMap.getDeadChar((int)this.mCombiningAccent, (int)var7_5);
            this.mCombiningAccent = 0;
            var6_9 = var5_6;
        }
lbl65: // 6 sources:
        var10_10 = var6_9 != 0 || this.mHardwareControlKey != false || var4_4 != false && this.mControlKey.isActive() != false;
        var4_4 = var4_4 != false && this.mFnKey.isActive() != false;
        var5_6 = this.mapControlChar(var10_10, var4_4, var1_1);
        if (var5_6 >= 10485760) {
            this.handleKeyCode(var5_6 - 10485760, null, var3_3);
            return;
        }
        if (var5_6 < 0) return;
        var1_1 = var5_6;
        if (false) {
            var1_1 = var5_6 | 128;
        }
        this.mTermSession.write(var1_1);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void keyUp(int n, KeyEvent keyEvent) {
        boolean bl = TermKeyListener.isEventFromToggleDevice(keyEvent);
        switch (n) {
            case 57: 
            case 58: {
                if (!bl) return;
                {
                    this.mAltKey.onRelease();
                    this.updateCursorMode();
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
            this.updateCursorMode();
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int mapControlChar(int n) {
        boolean bl;
        if (this.mHardwareControlKey || this.mControlKey.isActive()) {
            bl = true;
            do {
                return this.mapControlChar(bl, this.mFnKey.isActive(), n);
                break;
            } while (true);
        }
        bl = false;
        return this.mapControlChar(bl, this.mFnKey.isActive(), n);
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
        this.updateCursorMode();
        return var3_3;
    }

    public void onPause() {
        this.mHardwareControlKey = false;
    }

    public void onResume() {
    }

    public void setAltSendsEsc(boolean bl) {
        this.mAltSendsEsc = bl;
    }

    public void setBackKeyCharacter(int n) {
        this.mBackKeyCode = n;
    }

    public void setCursorKeysApplicationMode(boolean bl) {
        if (bl) {
            String[] arrstring = this.mKeyCodes;
            this.mKeyCodes[19] = "\u001bOA";
            arrstring[152] = "\u001bOA";
            arrstring = this.mKeyCodes;
            this.mKeyCodes[20] = "\u001bOB";
            arrstring[146] = "\u001bOB";
            arrstring = this.mKeyCodes;
            this.mKeyCodes[22] = "\u001bOC";
            arrstring[150] = "\u001bOC";
            arrstring = this.mKeyCodes;
            this.mKeyCodes[21] = "\u001bOD";
            arrstring[148] = "\u001bOD";
            return;
        }
        String[] arrstring = this.mKeyCodes;
        this.mKeyCodes[19] = "\u001b[A";
        arrstring[152] = "\u001b[A";
        arrstring = this.mKeyCodes;
        this.mKeyCodes[20] = "\u001b[B";
        arrstring[146] = "\u001b[B";
        arrstring = this.mKeyCodes;
        this.mKeyCodes[22] = "\u001b[C";
        arrstring[150] = "\u001b[C";
        arrstring = this.mKeyCodes;
        this.mKeyCodes[21] = "\u001b[D";
        arrstring[148] = "\u001b[D";
    }

    public void setTermType(String string2) {
        this.setFnKeys(string2);
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

        public int getUIMode() {
            switch (this.mState) {
                default: {
                    return 0;
                }
                case 1: 
                case 2: 
                case 3: {
                    return 1;
                }
                case 4: 
            }
            return 2;
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

