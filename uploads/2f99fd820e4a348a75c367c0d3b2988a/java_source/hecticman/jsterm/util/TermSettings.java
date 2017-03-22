/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.SharedPreferences
 *  android.content.res.Resources
 */
package hecticman.jsterm.util;

import android.content.SharedPreferences;
import android.content.res.Resources;

public class TermSettings {
    private static final String ACTIONBAR_KEY = "actionbar";
    public static final int ACTION_BAR_MODE_ALWAYS_HIDES = 3;
    public static final int ACTION_BAR_MODE_ALWAYS_VISIBLE = 1;
    public static final int ACTION_BAR_MODE_HIDES = 2;
    private static final int ACTION_BAR_MODE_MAX = 3;
    public static final int ACTION_BAR_MODE_NONE = 0;
    public static final int AMBER = -18863;
    private static final String BACKACTION_KEY = "backaction";
    public static final int BACK_KEY_CLOSES_ACTIVITY = 2;
    public static final int BACK_KEY_CLOSES_WINDOW = 1;
    private static final int BACK_KEY_MAX = 4;
    public static final int BACK_KEY_SENDS_ESC = 3;
    public static final int BACK_KEY_SENDS_TAB = 4;
    public static final int BACK_KEY_STOPS_SERVICE = 0;
    private static final String BASIC_COLOR_KEY = "basic_color";
    public static final int BLACK = -16777216;
    public static final int BLUE = -13349187;
    private static final String CLOSEONEXIT_KEY = "close_window_on_process_exit";
    public static final int[][] COLOR_SCHEMES;
    private static final String CONTROLKEY_KEY = "controlkey";
    public static final int CONTROL_KEY_ID_NONE = 7;
    public static final int[] CONTROL_KEY_SCHEMES;
    private static final String CURSORBLINK_KEY = "cursorblink";
    private static final String CURSORSTYLE_KEY = "cursorstyle";
    private static final String FNKEY_KEY = "fnkey";
    public static final int FN_KEY_ID_NONE = 7;
    public static final int[] FN_KEY_SCHEMES;
    private static final String FONTSIZE_KEY = "fontsize";
    public static final int GREEN = -16711936;
    public static final int HOLO_BLUE = -13388315;
    private static final String IME_KEY = "ime";
    private static final String INITIALCOMMAND_KEY = "initialcommand";
    public static final int KEYCODE_NONE = -1;
    private static final String PATHEXTENSIONS_KEY = "do_path_extensions";
    private static final String PATHPREPEND_KEY = "allow_prepend_path";
    public static final int RED = -65261;
    private static final String SDCARD_KEY = "sdcard";
    private static final String SHELL_KEY = "shell";
    private static final String SPECIFIC_BACK_COLOR_KEY = "specific_back_color";
    public static int[] SPECIFIC_COLOR_SCHEMES;
    private static final String SPECIFIC_FORE_COLOR_KEY = "specific_fore_color";
    private static final String STATUSBAR_KEY = "statusbar";
    private static final String TERMTYPE_KEY = "termtype";
    private static final String USE_SPECIFIC_COLOR_KEY = "use_specific_color";
    private static final String UTF8_KEY = "utf8_by_default";
    private static final String VERIFYPATH_KEY = "verify_path";
    private static final String WAKELOCK_KEY = "wakelock";
    public static final int WHITE = -1;
    private static final String WIFILOCK_KEY = "wifilock";
    private int mActionBarMode;
    private boolean mAllowPathPrepend;
    private String mAppendPath = null;
    private int mBackKeyAction;
    private int mBasicColorId;
    private boolean mCloseOnExit;
    private SharedPreferences mColorPrefs;
    private int mControlKeyId;
    private int mCursorBlink;
    private int mCursorStyle;
    private boolean mDoPathExtensions;
    private String mFailsafeShell;
    private int mFnKeyId;
    private int mFontSize;
    private String mInitialCommand;
    private SharedPreferences mPrefs;
    private String mPrependPath = null;
    private int mSDCard;
    private String mShell;
    private int mSpecificBackColorId;
    private int mSpecificForeColorId;
    private boolean mStatusBar;
    private String mTermType;
    private boolean mUTF8ByDefault;
    private int mUseCookedIME;
    private boolean mUseSpecificColor;
    private boolean mVerifyPath;
    private boolean mWakeLock;
    private boolean mWifiLock;

    static {
        int[] arrn = new int[4];
        arrn[1] = -16777216;
        arrn[2] = 7;
        arrn[3] = -1;
        int[] arrn2 = new int[4];
        arrn2[0] = 7;
        arrn2[1] = -1;
        arrn2[3] = -16777216;
        int[] arrn3 = new int[]{7, -1, 4, -13349187};
        int[] arrn4 = new int[4];
        arrn4[0] = 2;
        arrn4[1] = -16711936;
        arrn4[3] = -16777216;
        int[] arrn5 = new int[4];
        arrn5[0] = 3;
        arrn5[1] = -18863;
        arrn5[3] = -16777216;
        int[] arrn6 = new int[4];
        arrn6[0] = 1;
        arrn6[1] = -65261;
        arrn6[3] = -16777216;
        int[] arrn7 = new int[4];
        arrn7[0] = 4;
        arrn7[1] = -13388315;
        arrn7[3] = -16777216;
        COLOR_SCHEMES = new int[][]{arrn, arrn2, arrn3, arrn4, arrn5, arrn6, arrn7};
        SPECIFIC_COLOR_SCHEMES = new int[4];
        CONTROL_KEY_SCHEMES = new int[]{23, 77, 57, 58, 24, 25, 27, -1};
        FN_KEY_SCHEMES = new int[]{23, 77, 57, 58, 24, 25, 27, -1};
    }

    public TermSettings(Resources resources, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        this.mColorPrefs = sharedPreferences2;
        this.readDefaultPrefs(resources);
        this.readPrefs(sharedPreferences);
    }

    private boolean readBooleanPref(String string2, boolean bl) {
        if (!string2.equals("use_specific_color")) {
            return this.mPrefs.getBoolean(string2, bl);
        }
        return this.mColorPrefs.getBoolean(string2, bl);
    }

    private void readDefaultPrefs(Resources resources) {
        this.mSDCard = Integer.parseInt(resources.getString(2131165184));
        this.mWakeLock = resources.getBoolean(2131230720);
        this.mWifiLock = resources.getBoolean(2131230721);
        this.mStatusBar = resources.getBoolean(2131230722);
        this.mActionBarMode = resources.getInteger(2131296256);
        this.mCursorStyle = Integer.parseInt(resources.getString(2131165185));
        this.mCursorBlink = Integer.parseInt(resources.getString(2131165186));
        this.mFontSize = Integer.parseInt(resources.getString(2131165187));
        this.mBasicColorId = Integer.parseInt(resources.getString(2131165188));
        this.mSpecificForeColorId = (int)Long.parseLong(resources.getString(2131165189), 16);
        this.mSpecificBackColorId = (int)Long.parseLong(resources.getString(2131165190), 16);
        this.mUseSpecificColor = resources.getBoolean(2131230723);
        this.mUTF8ByDefault = resources.getBoolean(2131230724);
        this.mBackKeyAction = Integer.parseInt(resources.getString(2131165191));
        this.mControlKeyId = Integer.parseInt(resources.getString(2131165192));
        this.mFnKeyId = Integer.parseInt(resources.getString(2131165193));
        this.mUseCookedIME = Integer.parseInt(resources.getString(2131165194));
        this.mShell = this.mFailsafeShell = resources.getString(2131165195);
        this.mInitialCommand = resources.getString(2131165196);
        this.mTermType = resources.getString(2131165197);
        this.mCloseOnExit = resources.getBoolean(2131230725);
        this.mVerifyPath = resources.getBoolean(2131230726);
        this.mDoPathExtensions = resources.getBoolean(2131230727);
        this.mAllowPathPrepend = resources.getBoolean(2131230728);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private int readIntPref(String string2, int n, int n2) {
        int n3;
        block5 : {
            long l;
            try {
                if (!string2.equals("specific_fore_color") && !string2.equals("specific_back_color")) {
                    n = n3 = Integer.parseInt(this.mPrefs.getString(string2, Integer.toString(n)));
                    break block5;
                }
                if (string2.equals("basic_color")) {
                    n = n3 = Integer.parseInt(this.mColorPrefs.getString(string2, Integer.toString(n)));
                    break block5;
                }
                l = Long.parseLong(this.mColorPrefs.getString(string2, Integer.toString(n)), 16);
            }
            catch (NumberFormatException var4_6) {}
            n = (int)l;
        }
        n3 = n;
        if (string2.equals("specific_fore_color")) return n3;
        n3 = n;
        if (string2.equals("specific_back_color")) return n3;
        return Math.max(0, Math.min(n, n2));
    }

    private String readStringPref(String string2, String string3) {
        return this.mPrefs.getString(string2, string3);
    }

    public int actionBarMode() {
        return this.mActionBarMode;
    }

    public boolean allowPathPrepend() {
        return this.mAllowPathPrepend;
    }

    public boolean backKeySendsCharacter() {
        if (this.mBackKeyAction >= 3) {
            return true;
        }
        return false;
    }

    public boolean closeWindowOnProcessExit() {
        return this.mCloseOnExit;
    }

    public boolean defaultToUTF8Mode() {
        return this.mUTF8ByDefault;
    }

    public boolean doPathExtensions() {
        return this.mDoPathExtensions;
    }

    public String getAppendPath() {
        return this.mAppendPath;
    }

    public int getBackKeyAction() {
        return this.mBackKeyAction;
    }

    public int getBackKeyCharacter() {
        switch (this.mBackKeyAction) {
            default: {
                return 0;
            }
            case 3: {
                return 27;
            }
            case 4: 
        }
        return 9;
    }

    public int[] getColorScheme() {
        if (this.mUseSpecificColor) {
            TermSettings.SPECIFIC_COLOR_SCHEMES[0] = 7;
            TermSettings.SPECIFIC_COLOR_SCHEMES[1] = this.mSpecificForeColorId;
            TermSettings.SPECIFIC_COLOR_SCHEMES[2] = 7;
            TermSettings.SPECIFIC_COLOR_SCHEMES[3] = this.mSpecificBackColorId;
            return SPECIFIC_COLOR_SCHEMES;
        }
        return COLOR_SCHEMES[this.mBasicColorId];
    }

    public int getControlKeyCode() {
        return CONTROL_KEY_SCHEMES[this.mControlKeyId];
    }

    public int getControlKeyId() {
        return this.mControlKeyId;
    }

    public int getCursorBlink() {
        return this.mCursorBlink;
    }

    public int getCursorStyle() {
        return this.mCursorStyle;
    }

    public String getFailsafeShell() {
        return this.mFailsafeShell;
    }

    public int getFnKeyCode() {
        return FN_KEY_SCHEMES[this.mFnKeyId];
    }

    public int getFnKeyId() {
        return this.mFnKeyId;
    }

    public int getFontSize() {
        return this.mFontSize;
    }

    public String getInitialCommand() {
        return this.mInitialCommand;
    }

    public String getPrependPath() {
        return this.mPrependPath;
    }

    public String getShell() {
        return this.mShell;
    }

    public int getStoreLocation() {
        return this.mSDCard;
    }

    public String getTermType() {
        return this.mTermType;
    }

    public boolean isWakeLock() {
        return this.mWakeLock;
    }

    public boolean isWifiLock() {
        return this.mWifiLock;
    }

    public void readPrefs(SharedPreferences sharedPreferences) {
        this.mPrefs = sharedPreferences;
        this.mSDCard = this.readIntPref("sdcard", this.mSDCard, 1);
        this.mWakeLock = this.readBooleanPref("wakelock", this.mWakeLock);
        this.mWifiLock = this.readBooleanPref("wifilock", this.mWifiLock);
        this.mStatusBar = this.readBooleanPref("statusbar", this.mStatusBar);
        this.mActionBarMode = this.readIntPref("actionbar", this.mActionBarMode, 3);
        this.mFontSize = this.readIntPref("fontsize", this.mFontSize, 20);
        this.mBasicColorId = this.readIntPref("basic_color", this.mBasicColorId, COLOR_SCHEMES.length - 1);
        this.mSpecificForeColorId = this.readIntPref("specific_fore_color", this.mSpecificForeColorId, -1);
        this.mSpecificBackColorId = this.readIntPref("specific_back_color", this.mSpecificBackColorId, -1);
        this.mUseSpecificColor = this.readBooleanPref("use_specific_color", this.mUseSpecificColor);
        this.mUTF8ByDefault = this.readBooleanPref("utf8_by_default", this.mUTF8ByDefault);
        this.mBackKeyAction = this.readIntPref("backaction", this.mBackKeyAction, 4);
        this.mControlKeyId = this.readIntPref("controlkey", this.mControlKeyId, CONTROL_KEY_SCHEMES.length - 1);
        this.mFnKeyId = this.readIntPref("fnkey", this.mFnKeyId, FN_KEY_SCHEMES.length - 1);
        this.mUseCookedIME = this.readIntPref("ime", this.mUseCookedIME, 1);
        this.mShell = this.readStringPref("shell", this.mShell);
        this.mInitialCommand = this.readStringPref("initialcommand", this.mInitialCommand);
        this.mTermType = this.readStringPref("termtype", this.mTermType);
        this.mCloseOnExit = this.readBooleanPref("close_window_on_process_exit", this.mCloseOnExit);
        this.mVerifyPath = this.readBooleanPref("verify_path", this.mVerifyPath);
        this.mDoPathExtensions = this.readBooleanPref("do_path_extensions", this.mDoPathExtensions);
        this.mAllowPathPrepend = this.readBooleanPref("allow_prepend_path", this.mAllowPathPrepend);
        this.mPrefs = null;
    }

    public void setAppendPath(String string2) {
        this.mAppendPath = string2;
    }

    public void setPrependPath(String string2) {
        this.mPrependPath = string2;
    }

    public boolean showStatusBar() {
        return this.mStatusBar;
    }

    public boolean useCookedIME() {
        if (this.mUseCookedIME != 0) {
            return true;
        }
        return false;
    }

    public boolean verifyPath() {
        return this.mVerifyPath;
    }
}

