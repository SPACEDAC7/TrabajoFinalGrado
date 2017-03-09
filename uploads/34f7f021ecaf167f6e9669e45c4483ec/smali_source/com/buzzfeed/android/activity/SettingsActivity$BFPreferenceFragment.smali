.class public Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BFPreferenceFragment"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 133
    const-class v1, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->TAG:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_19

    .line 141
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    :cond_19
    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setEdition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setAutoplayMode(Ljava/lang/String;)V

    return-void
.end method

.method private findPreference(I)Landroid/preference/Preference;
    .registers 4
    .param p1, "keyResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getKey(I)Ljava/lang/String;

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
    .line 151
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setAutoplayMode(Ljava/lang/String;)V
    .registers 5
    .param p1, "autoplayMode"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, "preference":Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;
    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/data/preferences/AutoPlayPreference;->setValue(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setEdition(Ljava/lang/String;)V
    .registers 5
    .param p1, "edition"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/buzzfeed/android/data/preferences/EditionPreference;

    invoke-direct {v1, v0}, Lcom/buzzfeed/android/data/preferences/EditionPreference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "preference":Lcom/buzzfeed/android/data/preferences/EditionPreference;
    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/data/preferences/EditionPreference;->setValue(Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public initPreferences()V
    .registers 28

    .prologue
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v21

    .line 196
    .local v21, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 199
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const v2, 0x7f090299

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v25

    .line 200
    .local v25, "quantcastPreference":Landroid/preference/Preference;
    if-eqz v25, :cond_23

    .line 201
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$1;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    :cond_23
    const v2, 0x7f09028f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getKey(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "editionKey":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 213
    .local v4, "editionPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_a4

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "editions":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "editionValues":[Ljava/lang/String;
    const v2, 0x7f09023d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 219
    .local v18, "initValue":Ljava/lang/String;
    const v2, 0x7f09024e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 220
    const v2, 0x7f090242

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 241
    :cond_71
    :goto_71
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 242
    .local v17, "indexOfInitValue":I
    if-gez v17, :cond_8e

    .line 245
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f09023d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 247
    :cond_8e
    aget-object v2, v5, v17

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    aget-object v2, v6, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setEdition(Ljava/lang/String;)V

    .line 249
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$2;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Landroid/preference/Preference;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 282
    .end local v5    # "editions":[Ljava/lang/String;
    .end local v6    # "editionValues":[Ljava/lang/String;
    .end local v17    # "indexOfInitValue":I
    .end local v18    # "initValue":Ljava/lang/String;
    :cond_a4
    const v2, 0x7f09028a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getKey(I)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "autoPlayKey":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 284
    .local v15, "autoplayPreference":Landroid/preference/Preference;
    if-eqz v15, :cond_e8

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "autoplayModes":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 287
    .local v14, "autoplayLabels":[Ljava/lang/String;
    const-string v2, "Always"

    invoke-interface {v7, v13, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 288
    .restart local v18    # "initValue":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->setAutoplayMode(Ljava/lang/String;)V

    .line 291
    new-instance v9, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;

    move-object/from16 v10, p0

    move-object v12, v7

    invoke-direct/range {v9 .. v14}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$3;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;[Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    .end local v11    # "autoplayModes":[Ljava/lang/String;
    .end local v14    # "autoplayLabels":[Ljava/lang/String;
    .end local v18    # "initValue":Ljava/lang/String;
    :cond_e8
    const v2, 0x7f090296

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getKey(I)Ljava/lang/String;

    move-result-object v23

    .line 328
    .local v23, "pushNotificationKey":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    .line 329
    .local v24, "pushNotificationsPreference":Landroid/preference/SwitchPreference;
    if-eqz v24, :cond_115

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 331
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$4;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    :cond_115
    const v2, 0x7f090292

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getKey(I)Ljava/lang/String;

    move-result-object v20

    .line 346
    .local v20, "limitMobileDataUsageKey":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 347
    .local v19, "limitMobileDataPreference":Landroid/preference/Preference;
    if-eqz v19, :cond_136

    .line 348
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$5;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    :cond_136
    const v2, 0x7f0902a0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v22

    .line 364
    .local v22, "pref":Landroid/preference/Preference;
    if-eqz v22, :cond_14d

    .line 365
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$6;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    :cond_14d
    const v2, 0x7f090295

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v22

    .line 377
    if-eqz v22, :cond_164

    .line 378
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$7;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    :cond_164
    const v2, 0x7f090289

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v22

    .line 390
    if-eqz v22, :cond_17b

    .line 391
    new-instance v2, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment$8;-><init>(Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 402
    :cond_17b
    const v2, 0x7f0902a2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->findPreference(I)Landroid/preference/Preference;

    move-result-object v22

    .line 403
    if-eqz v22, :cond_18f

    .line 405
    :try_start_186
    const-string v26, "5.2 (502002)"

    .line 406
    .local v26, "summary":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18f} :catch_28c

    .line 411
    .end local v26    # "summary":Ljava/lang/String;
    :cond_18f
    :goto_18f
    return-void

    .line 221
    .end local v13    # "autoPlayKey":Ljava/lang/String;
    .end local v15    # "autoplayPreference":Landroid/preference/Preference;
    .end local v19    # "limitMobileDataPreference":Landroid/preference/Preference;
    .end local v20    # "limitMobileDataUsageKey":Ljava/lang/String;
    .end local v22    # "pref":Landroid/preference/Preference;
    .end local v23    # "pushNotificationKey":Ljava/lang/String;
    .end local v24    # "pushNotificationsPreference":Landroid/preference/SwitchPreference;
    .restart local v5    # "editions":[Ljava/lang/String;
    .restart local v6    # "editionValues":[Ljava/lang/String;
    .restart local v18    # "initValue":Ljava/lang/String;
    :cond_190
    const v2, 0x7f09024d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 222
    const v2, 0x7f090241

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 223
    :cond_1ac
    const v2, 0x7f090238

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 224
    const v2, 0x7f09023e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 225
    :cond_1c8
    const v2, 0x7f090239

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 226
    const v2, 0x7f09024c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 227
    :cond_1e4
    const v2, 0x7f09023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 228
    const v2, 0x7f09023f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 229
    :cond_200
    const v2, 0x7f09023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 230
    const v2, 0x7f09023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 231
    :cond_21c
    const v2, 0x7f090246

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 232
    const v2, 0x7f090247

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 233
    :cond_238
    const v2, 0x7f090248

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_254

    .line 234
    const v2, 0x7f090240

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 235
    :cond_254
    const v2, 0x7f09024a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 236
    const v2, 0x7f090245

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 237
    :cond_270
    const v2, 0x7f09024b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 238
    const v2, 0x7f09024c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_71

    .line 407
    .end local v5    # "editions":[Ljava/lang/String;
    .end local v6    # "editionValues":[Ljava/lang/String;
    .end local v18    # "initValue":Ljava/lang/String;
    .restart local v13    # "autoPlayKey":Ljava/lang/String;
    .restart local v15    # "autoplayPreference":Landroid/preference/Preference;
    .restart local v19    # "limitMobileDataPreference":Landroid/preference/Preference;
    .restart local v20    # "limitMobileDataUsageKey":Ljava/lang/String;
    .restart local v22    # "pref":Landroid/preference/Preference;
    .restart local v23    # "pushNotificationKey":Ljava/lang/String;
    .restart local v24    # "pushNotificationsPreference":Landroid/preference/SwitchPreference;
    :catch_28c
    move-exception v16

    .line 408
    .local v16, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v3, "initPreferences() error"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "paramLayoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "paramViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->initPreferences()V

    .line 161
    return-object v0
.end method

.method public setAppShouldReset(Z)V
    .registers 4
    .param p1, "reset"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset_app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method public shouldAppReset()Z
    .registers 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/SettingsActivity$BFPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset_app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
