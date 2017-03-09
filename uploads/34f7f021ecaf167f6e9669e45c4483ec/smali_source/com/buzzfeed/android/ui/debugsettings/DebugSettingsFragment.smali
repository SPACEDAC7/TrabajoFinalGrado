.class public Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DebugSettingsFragment.java"


# static fields
.field public static final SAVE_STATE_TAG_RESET_APP:Ljava/lang/String; = "reset_app"


# instance fields
.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private final mResetOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 49
    new-instance v1, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$1;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mResetOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 59
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_18

    .line 61
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    :cond_18
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAdTest(I)V

    return-void
.end method

.method private findPreference(I)Landroid/preference/Preference;
    .registers 4
    .param p1, "keyResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private getKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "keyResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restartAppOrFinish()V
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->shouldAppReset()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 88
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    .line 92
    :goto_d
    return-void

    .line 90
    :cond_e
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_d
.end method

.method private setAdTest(I)V
    .registers 6
    .param p1, "adTest"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 97
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const v3, 0x7f09029c

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "adTestKey":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    return-void
.end method


# virtual methods
.method public initPreferences()V
    .registers 29

    .prologue
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    .line 114
    .local v22, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 117
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const v2, 0x7f09029a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "serverKey":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 119
    .local v4, "serverPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_59

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "servers":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "serverValues":[Ljava/lang/String;
    const v2, 0x7f0901a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "initValue":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 124
    .local v19, "indexOfInitValue":I
    aget-object v2, v5, v19

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$2;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/preference/Preference;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    .end local v5    # "servers":[Ljava/lang/String;
    .end local v6    # "serverValues":[Ljava/lang/String;
    .end local v19    # "indexOfInitValue":I
    .end local v20    # "initValue":Ljava/lang/String;
    :cond_59
    const v2, 0x7f09029f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 156
    .local v24, "preference":Landroid/preference/Preference;
    if-eqz v24, :cond_73

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mResetOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    :cond_73
    const v2, 0x7f090288

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 161
    if-eqz v24, :cond_8d

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mResetOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    :cond_8d
    const v2, 0x7f090287

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 166
    if-eqz v24, :cond_a7

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->mResetOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    :cond_a7
    const v2, 0x7f09029d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v25

    .line 172
    .local v25, "trackingLogPreference":Landroid/preference/Preference;
    if-eqz v25, :cond_be

    .line 173
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$3;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    :cond_be
    const v2, 0x7f09028e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v18

    .line 216
    .local v18, "debuggingPreference":Landroid/preference/Preference;
    if-eqz v18, :cond_d5

    .line 217
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$4;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    :cond_d5
    const v2, 0x7f090291

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v21

    .line 228
    .local v21, "leakCanaryPreference":Landroid/preference/Preference;
    if-eqz v21, :cond_ec

    .line 229
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$5;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    :cond_ec
    const v2, 0x7f09028d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 240
    .local v17, "debugTrackerPreference":Landroid/preference/Preference;
    if-eqz v17, :cond_103

    .line 241
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$6;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    :cond_103
    const v2, 0x7f0902a1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v27

    .line 252
    .local v27, "vcrDebugPreference":Landroid/preference/Preference;
    if-eqz v27, :cond_11a

    .line 253
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$7;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    :cond_11a
    const v2, 0x7f09029c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getKey(I)Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "adTestKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 265
    .local v11, "testAdPreference":Landroid/preference/Preference;
    if-eqz v11, :cond_16b

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, "testAdTypes":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, "testAdTypesValues":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v15, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 269
    .restart local v20    # "initValue":Ljava/lang/String;
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 270
    .restart local v19    # "indexOfInitValue":I
    aget-object v2, v12, v19

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->setAdTest(I)V

    .line 272
    new-instance v9, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;

    move-object/from16 v10, p0

    move-object v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$8;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;Landroid/preference/Preference;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    .end local v12    # "testAdTypes":[Ljava/lang/String;
    .end local v13    # "testAdTypesValues":[Ljava/lang/String;
    .end local v19    # "indexOfInitValue":I
    .end local v20    # "initValue":Ljava/lang/String;
    :cond_16b
    const v2, 0x7f09028c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 304
    .local v16, "crashlyticsPreference":Landroid/preference/Preference;
    if-eqz v16, :cond_182

    .line 305
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$9;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 315
    :cond_182
    const v2, 0x7f09029e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v26

    .line 316
    .local v26, "triggerRatingPromptPref":Landroid/preference/Preference;
    if-eqz v26, :cond_199

    .line 317
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$10;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    :cond_199
    const v2, 0x7f090286

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v23

    .line 328
    .local v23, "pref":Landroid/preference/Preference;
    if-eqz v23, :cond_1b0

    .line 329
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$11;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 345
    :cond_1b0
    const v2, 0x7f090290

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v23

    .line 346
    if-eqz v23, :cond_1c7

    .line 347
    new-instance v2, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment$12;-><init>(Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 354
    :cond_1c7
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->restartAppOrFinish()V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->initPreferences()V

    .line 109
    return-object v0
.end method

.method public setAppShouldReset(Z)V
    .registers 4
    .param p1, "reset"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset_app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public shouldAppReset()Z
    .registers 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/DebugSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
