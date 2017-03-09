.class public Ljackpal/androidterm/shortcuts/AddShortcut;
.super Landroid/app/Activity;
.source "AddShortcut.java"


# instance fields
.field private final ARGS:I

.field private final NAME:I

.field private final OP_MAKE_SHORTCUT:I

.field private final PATH:I

.field private SP:Landroid/content/SharedPreferences;

.field private final context:Landroid/content/Context;

.field private final et:[Landroid/widget/EditText;

.field private iconText:[Ljava/lang/String;

.field private ix:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->OP_MAKE_SHORTCUT:I

    .line 38
    iput-object p0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    .line 40
    iput v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    .line 41
    iget v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    iput v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->PATH:I

    iget v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    iput v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I

    iget v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ix:I

    iput v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->name:Ljava/lang/String;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    iput-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/shortcuts/AddShortcut;)[Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/shortcuts/AddShortcut;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    return v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/shortcuts/AddShortcut;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I

    return v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/shortcuts/AddShortcut;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->SP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/shortcuts/AddShortcut;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Ljackpal/androidterm/shortcuts/AddShortcut;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Ljackpal/androidterm/shortcuts/AddShortcut;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/shortcuts/AddShortcut;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method buildShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/String;
    .param p3, "shortcutName"    # Ljava/lang/String;
    .param p4, "shortcutText"    # Ljava/lang/String;
    .param p5, "shortcutColor"    # I

    .prologue
    .line 227
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->apply()V

    .line 228
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-static {v7}, Ljackpal/androidterm/util/ShortcutEncryption;->getKeys(Landroid/content/Context;)Ljackpal/androidterm/util/ShortcutEncryption$Keys;

    move-result-object v4

    .line 229
    .local v4, "keys":Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    if-nez v4, :cond_14

    .line 233
    :try_start_b
    invoke-static {}, Ljackpal/androidterm/util/ShortcutEncryption;->generateKeys()Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_e} :catch_b1

    move-result-object v4

    .line 240
    iget-object v7, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-static {v7, v4}, Ljackpal/androidterm/util/ShortcutEncryption;->saveKeys(Landroid/content/Context;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)V

    .line 242
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "cmd":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2a

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-static {p1}, Ljackpal/androidterm/RemoteInterface;->quoteForBash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_2a
    if-eqz p2, :cond_4a

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "cmdStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "cmdEnc":Ljava/lang/String;
    :try_start_4f
    invoke-static {v2, v4}, Ljackpal/androidterm/util/ShortcutEncryption;->encrypt(Ljava/lang/String;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)Ljava/lang/String;
    :try_end_52
    .catch Ljava/security/GeneralSecurityException; {:try_start_4f .. :try_end_52} :catch_d4

    move-result-object v1

    .line 256
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    const-class v9, Ljackpal/androidterm/RunShortcut;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 257
    .local v5, "target":Landroid/content/Intent;
    const-string v7, "jackpal.androidterm.RUN_SHORTCUT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v7, "jackpal.androidterm.iShortcutCommand"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v7, "jackpal.androidterm.window_handle"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v6, "wrapper":Landroid/content/Intent;
    const-string v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    if-eqz p3, :cond_92

    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 266
    const-string v7, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v6, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_92
    if-eqz p4, :cond_f7

    const-string v7, ""

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f7

    .line 270
    const-string v7, "android.intent.extra.shortcut.ICON"

    const/16 v8, 0x60

    const/16 v9, 0x60

    invoke-static {p4, p5, v8, v9}, Ljackpal/androidterm/shortcuts/TextIcon;->getTextIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    :goto_a9
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v6}, Ljackpal/androidterm/shortcuts/AddShortcut;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/AddShortcut;->finish()V

    .line 289
    return-void

    .line 235
    .end local v0    # "cmd":Ljava/lang/StringBuilder;
    .end local v1    # "cmdEnc":Ljava/lang/String;
    .end local v2    # "cmdStr":Ljava/lang/String;
    .end local v5    # "target":Landroid/content/Intent;
    .end local v6    # "wrapper":Landroid/content/Intent;
    :catch_b1
    move-exception v3

    .line 237
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v7, "Term"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Generating shortcut encryption keys failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 251
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "cmd":Ljava/lang/StringBuilder;
    .restart local v1    # "cmdEnc":Ljava/lang/String;
    .restart local v2    # "cmdStr":Ljava/lang/String;
    :catch_d4
    move-exception v3

    .line 253
    .restart local v3    # "e":Ljava/security/GeneralSecurityException;
    const-string v7, "Term"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Shortcut encryption failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 282
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v5    # "target":Landroid/content/Intent;
    .restart local v6    # "wrapper":Landroid/content/Intent;
    :cond_f7
    const-string v7, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    const v9, 0x7f020006

    invoke-static {v8, v9}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_a9
.end method

.method layoutTextViewH(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "vw"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutTextViewH(Ljava/lang/String;Landroid/view/View;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method layoutTextViewH(Ljava/lang/String;Landroid/view/View;Z)Landroid/widget/LinearLayout;
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "vw"    # Landroid/view/View;
    .param p3, "attributes"    # Z

    .prologue
    const/16 v6, 0xa

    .line 195
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 196
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    if-eqz p3, :cond_1c

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    :cond_1c
    if-eqz p3, :cond_23

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    :cond_23
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 201
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "lh":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 203
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    if-eqz p2, :cond_41

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_41
    return-object v0
.end method

.method layoutViewViewH(Landroid/view/View;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 8
    .param p1, "vw1"    # Landroid/view/View;
    .param p2, "vw2"    # Landroid/view/View;

    .prologue
    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 211
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "lh":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    if-eqz p2, :cond_1c

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :cond_1c
    return-object v0
.end method

.method makeShortcut()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x64

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 61
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    if-nez v8, :cond_d

    const-string v8, ""

    iput-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    .line 62
    :cond_d
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    sget v9, Ljackpal/androidterm/compat/AlertDialogCompat;->THEME_HOLO_DARK:I

    invoke-static {v8, v9}, Ljackpal/androidterm/compat/AlertDialogCompat;->newInstanceBuilder(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v5, "lv":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    array-length v6, v8

    .local v6, "n":I
    :goto_23
    if-ge v3, v6, :cond_3a

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    new-instance v9, Landroid/widget/EditText;

    iget-object v10, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    aget-object v8, v8, v3

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 67
    :cond_3a
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    aget-object v8, v8, v12

    iget-object v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_4d
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->PATH:I

    aget-object v8, v8, v9

    const v9, 0x7f090005

    invoke-virtual {p0, v9}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    aget-object v8, v8, v9

    iget-object v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I

    aget-object v8, v8, v9

    const v9, 0x7f090007

    invoke-virtual {p0, v9}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I

    aget-object v8, v8, v9

    new-instance v9, Ljackpal/androidterm/shortcuts/AddShortcut$1;

    invoke-direct {v9, p0}, Ljackpal/androidterm/shortcuts/AddShortcut$1;-><init>(Ljackpal/androidterm/shortcuts/AddShortcut;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    new-instance v2, Landroid/widget/Button;

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, "btn_path":Landroid/widget/Button;
    const v8, 0x7f090003

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v8, Ljackpal/androidterm/shortcuts/AddShortcut$2;

    invoke-direct {v8, p0}, Ljackpal/androidterm/shortcuts/AddShortcut$2;-><init>(Ljackpal/androidterm/shortcuts/AddShortcut;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v8, 0x7f090006

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v14, v12}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutTextViewH(Ljava/lang/String;Landroid/view/View;Z)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->PATH:I

    aget-object v8, v8, v9

    invoke-virtual {p0, v2, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutViewViewH(Landroid/view/View;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    const v8, 0x7f090002

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v10, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->ARGS:I

    aget-object v9, v9, v10

    invoke-virtual {p0, v8, v9}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutTextViewH(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    const v8, 0x7f09000a

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v10, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    aget-object v9, v9, v10

    invoke-virtual {p0, v8, v9}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutTextViewH(Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v4, Landroid/widget/ImageView;

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v4, "img":Landroid/widget/ImageView;
    const v8, 0x7f020006

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 131
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 133
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 134
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    new-instance v1, Landroid/widget/Button;

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "btn_color":Landroid/widget/Button;
    const v8, 0x7f090004

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v8, Ljackpal/androidterm/shortcuts/AddShortcut$3;

    invoke-direct {v8, p0, v4}, Ljackpal/androidterm/shortcuts/AddShortcut$3;-><init>(Ljackpal/androidterm/shortcuts/AddShortcut;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v8, 0x7f09000b

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v14, v12}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutTextViewH(Ljava/lang/String;Landroid/view/View;Z)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0, v1, v4}, Ljackpal/androidterm/shortcuts/AddShortcut;->layoutViewViewH(Landroid/view/View;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v7, Landroid/widget/ScrollView;

    iget-object v8, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v7, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v7, v11}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 156
    invoke-virtual {v7, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v8, 0x7f09000c

    invoke-virtual {p0, v8}, Ljackpal/androidterm/shortcuts/AddShortcut;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const v8, 0x1040013

    new-instance v9, Ljackpal/androidterm/shortcuts/AddShortcut$4;

    invoke-direct {v9, p0, v4}, Ljackpal/androidterm/shortcuts/AddShortcut$4;-><init>(Ljackpal/androidterm/shortcuts/AddShortcut;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    const/high16 v8, 0x1040000

    new-instance v9, Ljackpal/androidterm/shortcuts/AddShortcut$5;

    invoke-direct {v9, p0}, Ljackpal/androidterm/shortcuts/AddShortcut$5;-><init>(Ljackpal/androidterm/shortcuts/AddShortcut;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    .line 296
    packed-switch p1, :pswitch_data_82

    .line 310
    :cond_b
    :goto_b
    return-void

    .line 299
    :pswitch_c
    if-eqz p3, :cond_7e

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    if-eqz v1, :cond_7e

    .line 301
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->SP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastPath"

    iget-object v3, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->PATH:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->path:Ljava/lang/String;

    const-string v2, ".*/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->name:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->et:[Landroid/widget/EditText;

    iget v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->NAME:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_65
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->iconText:[Ljava/lang/String;

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_b

    .line 307
    :cond_7e
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/AddShortcut;->finish()V

    goto :goto_b

    .line 296
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/shortcuts/AddShortcut;->SP:Landroid/content/SharedPreferences;

    .line 54
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/AddShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/AddShortcut;->makeShortcut()V

    .line 57
    :goto_20
    return-void

    .line 56
    :cond_21
    invoke-virtual {p0}, Ljackpal/androidterm/shortcuts/AddShortcut;->finish()V

    goto :goto_20
.end method
