.class public Lhecticman/jsterm/TermColorPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TermColorPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"


# instance fields
.field private back_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

.field private fore_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

.field private initialBackColor:I

.field private initialForeColor:I

.field private prefBackColor:Landroid/preference/Preference;

.field private prefForeColor:Landroid/preference/Preference;

.field private prefUseSpecColor:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lhecticman/jsterm/TermColorPreferences;->initialForeColor:I

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lhecticman/jsterm/TermColorPreferences;->initialBackColor:I

    .line 24
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x10

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v4, 0x7f040000

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->addPreferencesFromResource(I)V

    .line 42
    sget v4, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1b

    .line 43
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    .line 44
    .local v0, "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    if-eqz v0, :cond_1b

    .line 45
    invoke-virtual {v0, v8, v8}, Lhecticman/jsterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 50
    .end local v0    # "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    :cond_1b
    const-string v4, "use_specific_color"

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefUseSpecColor:Landroid/preference/Preference;

    .line 51
    const-string v4, "specific_fore_color"

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefForeColor:Landroid/preference/Preference;

    .line 52
    const-string v4, "specific_back_color"

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefBackColor:Landroid/preference/Preference;

    .line 53
    iget-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefUseSpecColor:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    iget-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefForeColor:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    iget-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefBackColor:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    const-string v4, "color_preferences"

    invoke-virtual {p0, v4, v7}, Lhecticman/jsterm/TermColorPreferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 60
    .local v3, "pref":Landroid/content/SharedPreferences;
    :try_start_48
    const-string v4, "specific_fore_color"

    iget v5, p0, Lhecticman/jsterm/TermColorPreferences;->initialForeColor:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lhecticman/jsterm/TermColorPreferences;->initialForeColor:I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_5d} :catch_9f

    .line 66
    :goto_5d
    :try_start_5d
    const-string v4, "specific_back_color"

    iget v5, p0, Lhecticman/jsterm/TermColorPreferences;->initialBackColor:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lhecticman/jsterm/TermColorPreferences;->initialBackColor:I
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_72} :catch_af

    .line 74
    :goto_72
    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog;

    iget v5, p0, Lhecticman/jsterm/TermColorPreferences;->initialForeColor:I

    new-instance v6, Lhecticman/jsterm/TermColorPreferences$1;

    invoke-direct {v6, p0}, Lhecticman/jsterm/TermColorPreferences$1;-><init>(Lhecticman/jsterm/TermColorPreferences;)V

    invoke-direct {v4, p0, v5, v6}, Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    iput-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->fore_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 94
    new-instance v4, Lyuku/ambilwarna/AmbilWarnaDialog;

    iget v5, p0, Lhecticman/jsterm/TermColorPreferences;->initialBackColor:I

    new-instance v6, Lhecticman/jsterm/TermColorPreferences$2;

    invoke-direct {v6, p0}, Lhecticman/jsterm/TermColorPreferences$2;-><init>(Lhecticman/jsterm/TermColorPreferences;)V

    invoke-direct {v4, p0, v5, v6}, Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    iput-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->back_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 115
    const-string v4, "use_specific_color"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 116
    .local v2, "isEnabled":Z
    iget-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefForeColor:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 117
    iget-object v4, p0, Lhecticman/jsterm/TermColorPreferences;->prefBackColor:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    return-void

    .line 62
    .end local v2    # "isEnabled":Z
    :catch_9f
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NumberFormatException;
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lhecticman/jsterm/TermColorPreferences;->initialForeColor:I

    goto :goto_5d

    .line 68
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_af
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermColorPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lhecticman/jsterm/TermColorPreferences;->initialBackColor:I

    goto :goto_72
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 125
    :pswitch_c
    invoke-virtual {p0}, Lhecticman/jsterm/TermColorPreferences;->finish()V

    .line 126
    const/4 v0, 0x1

    goto :goto_b

    .line 122
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "use_specific_color"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 135
    const-string v3, "color_preferences"

    invoke-virtual {p0, v3, v4}, Lhecticman/jsterm/TermColorPreferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "use_specific_color"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 137
    .local v1, "isEnabled":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "use_specific_color"

    if-eqz v1, :cond_3a

    move v3, v4

    :goto_23
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    iget-object v6, p0, Lhecticman/jsterm/TermColorPreferences;->prefForeColor:Landroid/preference/Preference;

    if-eqz v1, :cond_3c

    move v3, v4

    :goto_2e
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    iget-object v3, p0, Lhecticman/jsterm/TermColorPreferences;->prefBackColor:Landroid/preference/Preference;

    if-eqz v1, :cond_36

    move v5, v4

    :cond_36
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isEnabled":Z
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_39
    :goto_39
    return v4

    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "isEnabled":Z
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_3a
    move v3, v5

    .line 138
    goto :goto_23

    :cond_3c
    move v3, v5

    .line 140
    goto :goto_2e

    .line 143
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isEnabled":Z
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_3e
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "specific_fore_color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 144
    iget-object v3, p0, Lhecticman/jsterm/TermColorPreferences;->fore_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaDialog;->show()V

    goto :goto_39

    .line 146
    :cond_50
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "specific_back_color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 147
    iget-object v3, p0, Lhecticman/jsterm/TermColorPreferences;->back_dialog:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaDialog;->show()V

    goto :goto_39
.end method
