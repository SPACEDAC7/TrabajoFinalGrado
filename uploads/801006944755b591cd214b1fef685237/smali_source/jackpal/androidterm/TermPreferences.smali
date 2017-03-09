.class public Ljackpal/androidterm/TermPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TermPreferences.java"


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"

.field private static final CATEGORY_SCREEN_KEY:Ljava/lang/String; = "screen"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v3, 0x7f040000

    invoke-virtual {p0, v3}, Ljackpal/androidterm/TermPreferences;->addPreferencesFromResource(I)V

    .line 40
    sget v3, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_24

    .line 41
    const-string v3, "actionbar"

    invoke-virtual {p0, v3}, Ljackpal/androidterm/TermPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 42
    .local v0, "actionBarPref":Landroid/preference/Preference;
    const-string v3, "screen"

    invoke-virtual {p0, v3}, Ljackpal/androidterm/TermPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 44
    .local v2, "screenCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    .line 45
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    .end local v0    # "actionBarPref":Landroid/preference/Preference;
    .end local v2    # "screenCategory":Landroid/preference/PreferenceCategory;
    :cond_24
    sget-boolean v3, Ljackpal/androidterm/compat/AndroidCompat;->V11ToV20:Z

    if-eqz v3, :cond_31

    .line 51
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v1

    .line 52
    .local v1, "bar":Ljackpal/androidterm/compat/ActionBarCompat;
    if-eqz v1, :cond_31

    .line 53
    invoke-virtual {v1, v5, v5}, Ljackpal/androidterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 56
    .end local v1    # "bar":Ljackpal/androidterm/compat/ActionBarCompat;
    :cond_31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 63
    :pswitch_c
    invoke-virtual {p0}, Ljackpal/androidterm/TermPreferences;->finish()V

    .line 64
    const/4 v0, 0x1

    goto :goto_b

    .line 60
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
