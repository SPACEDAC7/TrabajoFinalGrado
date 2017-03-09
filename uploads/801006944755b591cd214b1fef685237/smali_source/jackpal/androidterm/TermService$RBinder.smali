.class final Ljackpal/androidterm/TermService$RBinder;
.super Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;
.source "TermService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/TermService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RBinder"
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/TermService;


# direct methods
.method private constructor <init>(Ljackpal/androidterm/TermService;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljackpal/androidterm/TermService;Ljackpal/androidterm/TermService$1;)V
    .registers 3
    .param p1, "x0"    # Ljackpal/androidterm/TermService;
    .param p2, "x1"    # Ljackpal/androidterm/TermService$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Ljackpal/androidterm/TermService$RBinder;-><init>(Ljackpal/androidterm/TermService;)V

    return-void
.end method


# virtual methods
.method public startSession(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;
    .registers 22
    .param p1, "pseudoTerminalMultiplexerFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/ResultReceiver;

    .prologue
    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "sessionHandle":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "jackpal.androidterm.private.target_window"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 144
    .local v17, "switchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-virtual {v1}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 147
    .local v6, "result":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-virtual {v1}, Ljackpal/androidterm/TermService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 148
    .local v16, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Ljackpal/androidterm/TermService$RBinder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "pkgs":[Ljava/lang/String;
    if-eqz v15, :cond_53

    array-length v1, v15

    if-nez v1, :cond_55

    .line 150
    :cond_53
    const/4 v1, 0x0

    .line 197
    :goto_54
    return-object v1

    .line 152
    :cond_55
    move-object v9, v15

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_58
    if-ge v10, v12, :cond_9a

    aget-object v13, v9, v10

    .line 154
    .local v13, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5d
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 156
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_6a

    .line 152
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_67
    :goto_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    .line 160
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6a
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 162
    .local v11, "label":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 163
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "niceName":Ljava/lang/String;
    new-instance v18, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljackpal/androidterm/TermService$RBinder$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Ljackpal/androidterm/TermService$RBinder$1;-><init>(Ljackpal/androidterm/TermService$RBinder;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_98} :catch_9c

    move-result-object v1

    goto :goto_54

    .line 197
    .end local v4    # "niceName":Ljava/lang/String;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_9a
    const/4 v1, 0x0

    goto :goto_54

    .line 194
    .restart local v13    # "packageName":Ljava/lang/String;
    :catch_9c
    move-exception v1

    goto :goto_67
.end method
