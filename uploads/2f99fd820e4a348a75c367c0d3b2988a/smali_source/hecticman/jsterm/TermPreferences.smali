.class public Lhecticman/jsterm/TermPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TermPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"

.field private static final INPUT_METHOD_SEPARATER:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'

.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private prefIme:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 53
    sput-object v0, Lhecticman/jsterm/TermPreferences;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 55
    sput-object v0, Lhecticman/jsterm/TermPreferences;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x4

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermPreferences;->addPreferencesFromResource(I)V

    .line 68
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    if-ge v1, v4, :cond_1e

    .line 69
    invoke-virtual {p0}, Lhecticman/jsterm/TermPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "actionbar"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 73
    :cond_1e
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    if-lt v1, v4, :cond_2b

    .line 74
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    .line 75
    .local v0, "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    if-eqz v0, :cond_2b

    .line 76
    invoke-virtual {v0, v3, v3}, Lhecticman/jsterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 81
    .end local v0    # "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    :cond_2b
    const-string v1, "ime"

    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/TermPreferences;->prefIme:Landroid/preference/Preference;

    .line 82
    iget-object v1, p0, Lhecticman/jsterm/TermPreferences;->prefIme:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 123
    :pswitch_c
    invoke-virtual {p0}, Lhecticman/jsterm/TermPreferences;->finish()V

    .line 124
    const/4 v0, 0x1

    goto :goto_b

    .line 120
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exportpath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 133
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermPreferences;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 137
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exportpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    const/4 v1, 0x0

    return v1
.end method
