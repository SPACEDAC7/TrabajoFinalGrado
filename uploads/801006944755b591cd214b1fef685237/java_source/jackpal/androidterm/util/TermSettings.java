/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.SharedPreferences
 *  android.content.res.Resources
 */
package jackpal.androidterm.util;

import android.content.SharedPreferences;
import android.content.res.Resources;

public class TermSettings {
    private static final String ACTIONBAR_KEY = "actionbar";
    public static final int ACTION_BAR_MODE_ALWAYS_VISIBLE = 1;
    public static final int ACTION_BAR_MODE_HIDES = 2;
    private static final int ACTION_BAR_MODE_MAX = 2;
    public static final int ACTION_BAR_MODE_NONE = 0;
    private static final String ALT_SENDS_ESC = "alt_sends_esc";
    public static final int AMBER = -18863;
    private static final String BACKACTION_KEY = "backaction";
    public static final int BACK_KEY_CLOSES_ACTIVITY = 2;
    public static final int BACK_KEY_CLOSES_WINDOW = 1;
    private static final int BACK_KEY_MAX = 4;
    public static final int BACK_KEY_SENDS_ESC = 3;
    public static final int BACK_KEY_SENDS_TAB = 4;
    public static final int BACK_KEY_STOPS_SERVICE = 0;
    public static final int BLACK = -16777216;
    public static final int BLUE = -13349187;
    private static final String CLOSEONEXIT_KEY = "close_window_on_process_exit";
    private static final String COLOR_KEY = "color";
    public static final int[][] COLOR_SCHEMES;
    private static final String CONTROLKEY_KEY = "controlkey";
    public static final int CONTROL_KEY_ID_NONE = 7;
    public static final int[] CONTROL_KEY_SCHEMES;
    private static final String FNKEY_KEY = "fnkey";
    public static final int FN_KEY_ID_NONE = 7;
    public static final int[] FN_KEY_SCHEMES;
    private static final String FONTSIZE_KEY = "fontsize";
    public static final int GREEN = -16711936;
    public static final int HOLO_BLUE = -13388315;
    private static final String HOMEPATH_KEY = "home_path";
    private static final String IME_KEY = "ime";
    private static final String INITIALCOMMAND_KEY = "initialcommand";
    public static final int KEYCODE_NONE = -1;
    public static final int LINUX_CONSOLE_WHITE = -5592406;
    private static final String MOUSE_TRACKING = "mouse_tracking";
    private static final String ORIENTATION_KEY = "orientation";
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int ORIENTATION_UNSPECIFIED = 0;
    private static final String PATHEXTENSIONS_KEY = "do_path_extensions";
    private static final String PATHPREPEND_KEY = "allow_prepend_path";
    public static final int RED = -65261;
    private static final String SHELL_KEY = "shell";
    public static final int SOLARIZED_BG = -133405;
    public static final int SOLARIZED_DARK_BG = -16766154;
    public static final int SOLARIZED_DARK_FG = -8153962;
    public static final int SOLARIZED_FG = -10126461;
    private static final String STATUSBAR_KEY = "statusbar";
    private static final String TERMTYPE_KEY = "termtype";
    private static final String USE_KEYBOARD_SHORTCUTS = "use_keyboard_shortcuts";
    private static final String UTF8_KEY = "utf8_by_default";
    private static final String VERIFYPATH_KEY = "verify_path";
    public static final int WHITE = -1;
    private int mActionBarMode;
    private boolean mAllowPathPrepend;
    private boolean mAltSendsEsc;
    private String mAppendPath = null;
    private int mBackKeyAction;
    private boolean mCloseOnExit;
    private int mColorId;
    private int mControlKeyId;
    private int mCursorBlink;
    private int mCursorStyle;
    private boolean mDoPathExtensions;
    private String mFailsafeShell;
    private int mFnKeyId;
    private int mFontSize;
    private String mHomePath;
    private String mInitialCommand;
    private boolean mMouseTracking;
    private int mOrientation;
    private SharedPreferences mPrefs;
    private String mPrependPath = null;
    private String mShell;
    private int mStatusBar;
    private String mTermType;
    private boolean mUTF8ByDefault;
    private int mUseCookedIME;
    private boolean mUseKeyboardShortcuts;
    private boolean mVerifyPath;

    static {
        int[] arrn = new int[]{-16777216, -1};
        int[] arrn2 = new int[]{-1, -13349187};
        int[] arrn3 = new int[]{-16711936, -16777216};
        int[] arrn4 = new int[]{-18863, -16777216};
        int[] arrn5 = new int[]{-65261, -16777216};
        int[] arrn6 = new int[]{-13388315, -16777216};
        COLOR_SCHEMES = new int[][]{arrn, {-1, -16777216}, arrn2, arrn3, arrn4, arrn5, arrn6, {-10126461, -133405}, {-8153962, -16766154}, {-5592406, -16777216}};
        CONTROL_KEY_SCHEMES = new int[]{23, 77, 57, 58, 24, 25, 27, -1};
        FN_KEY_SCHEMES = new int[]{23, 77, 57, 58, 24, 25, 27, -1};
    }

    public TermSettings(Resources resources, SharedPreferences sharedPreferences) {
        this.readDefaultPrefs(resources);
        this.readPrefs(sharedPreferences);
    }

    private boolean readBooleanPref(String string2, boolean bl) {
        return this.mPrefs.getBoolean(string2, bl);
    }

    private void readDefaultPrefs(Resources resources) {
        this.mStatusBar = Integer.parseInt(resources.getString(2131296335));
        this.mActionBarMode = resources.getInteger(2131230720);
        this.mOrientation = resources.getInteger(2131230721);
        this.mCursorStyle = Integer.parseInt(resources.getString(2131296329));
        this.mCursorBlink = Integer.parseInt(resources.getString(2131296328));
        this.mFontSize = Integer.parseInt(resources.getString(2131296331));
        this.mColorId = Integer.parseInt(resources.getString(2131296326));
        this.mUTF8ByDefault = resources.getBoolean(2131099654);
        this.mBackKeyAction = Integer.parseInt(resources.getString(2131296325));
        this.mControlKeyId = Integer.parseInt(resources.getString(2131296327));
        this.mFnKeyId = Integer.parseInt(resources.getString(2131296330));
        this.mUseCookedIME = Integer.parseInt(resources.getString(2131296332));
        this.mShell = this.mFailsafeShell = resources.getString(2131296334);
        this.mInitialCommand = resources.getString(2131296333);
        this.mTermType = resources.getString(2131296336);
        this.mCloseOnExit = resources.getBoolean(2131099650);
        this.mVerifyPath = resources.getBoolean(2131099655);
        this.mDoPathExtensions = resources.getBoolean(2131099651);
        this.mAllowPathPrepend = resources.getBoolean(2131099648);
        this.mAltSendsEsc = resources.getBoolean(2131099649);
        this.mMouseTracking = resources.getBoolean(2131099652);
        this.mUseKeyboardShortcuts = resources.getBoolean(2131099653);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int readIntPref(String string2, int n, int n2) {
        try {
            int n3;
            n = n3 = Integer.parseInt(this.mPrefs.getString(string2, Integer.toString(n)));
        }
        catch (NumberFormatException var1_2) {
            return Math.max(0, Math.min(n, n2));
        }
        do {
            return Math.max(0, Math.min(n, n2));
            break;
        } while (true);
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

    public boolean getAltSendsEscFlag() {
        return this.mAltSendsEsc;
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
        return COLOR_SCHEMES[this.mColorId];
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

    public String getHomePath() {
        return this.mHomePath;
    }

    public String getInitialCommand() {
        return this.mInitialCommand;
    }

    public boolean getMouseTrackingFlag() {
        return this.mMouseTracking;
    }

    public String getPrependPath() {
        return this.mPrependPath;
    }

    public int getScreenOrientation() {
        return this.mOrientation;
    }

    public String getShell() {
        return this.mShell;
    }

    public String getTermType() {
        return this.mTermType;
    }

    public boolean getUseKeyboardShortcutsFlag() {
        return this.mUseKeyboardShortcuts;
    }

    public void readPrefs(SharedPreferences sharedPreferences) {
        this.mPrefs = sharedPreferences;
        this.mStatusBar = this.readIntPref("statusbar", this.mStatusBar, 1);
        this.mActionBarMode = this.readIntPref("actionbar", this.mActionBarMode, 2);
        this.mOrientation = this.readIntPref("orientation", this.mOrientation, 2);
        this.mFontSize = this.readIntPref("fontsize", this.mFontSize, 288);
        this.mColorId = this.readIntPref("color", this.mColorId, COLOR_SCHEMES.length - 1);
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
        this.mHomePath = this.readStringPref("home_path", this.mHomePath);
        this.mAltSendsEsc = this.readBooleanPref("alt_sends_esc", this.mAltSendsEsc);
        this.mMouseTracking = this.readBooleanPref("mouse_tracking", this.mMouseTracking);
        this.mUseKeyboardShortcuts = this.readBooleanPref("use_keyboard_shortcuts", this.mUseKeyboardShortcuts);
        this.mPrefs = null;
    }

    public void setAppendPath(String string2) {
        this.mAppendPath = string2;
    }

    public void setHomePath(String string2) {
        this.mHomePath = string2;
    }

    public void setPrependPath(String string2) {
        this.mPrependPath = string2;
    }

    public boolean showStatusBar() {
        if (this.mStatusBar != 0) {
            return true;
        }
        return false;
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

