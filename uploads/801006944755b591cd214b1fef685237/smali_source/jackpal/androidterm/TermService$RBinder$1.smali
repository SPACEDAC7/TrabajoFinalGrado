.class Ljackpal/androidterm/TermService$RBinder$1;
.super Ljava/lang/Object;
.source "TermService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/TermService$RBinder;->startSession(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljackpal/androidterm/TermService$RBinder;

.field final synthetic val$callback:Landroid/os/ResultReceiver;

.field final synthetic val$niceName:Ljava/lang/String;

.field final synthetic val$pseudoTerminalMultiplexerFd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$result:Landroid/app/PendingIntent;

.field final synthetic val$sessionHandle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljackpal/androidterm/TermService$RBinder;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 7

    .prologue
    .line 165
    iput-object p1, p0, Ljackpal/androidterm/TermService$RBinder$1;->this$1:Ljackpal/androidterm/TermService$RBinder;

    iput-object p2, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$pseudoTerminalMultiplexerFd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$niceName:Ljava/lang/String;

    iput-object p4, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$sessionHandle:Ljava/lang/String;

    iput-object p5, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$result:Landroid/app/PendingIntent;

    iput-object p6, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$callback:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "session":Ljackpal/androidterm/GenericTermSession;
    :try_start_1
    new-instance v2, Ljackpal/androidterm/util/TermSettings;

    iget-object v4, p0, Ljackpal/androidterm/TermService$RBinder$1;->this$1:Ljackpal/androidterm/TermService$RBinder;

    iget-object v4, v4, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-virtual {v4}, Ljackpal/androidterm/TermService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Ljackpal/androidterm/TermService$RBinder$1;->this$1:Ljackpal/androidterm/TermService$RBinder;

    iget-object v5, v5, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    invoke-virtual {v5}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljackpal/androidterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 173
    .local v2, "settings":Ljackpal/androidterm/util/TermSettings;
    new-instance v1, Ljackpal/androidterm/BoundSession;

    iget-object v4, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$pseudoTerminalMultiplexerFd:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$niceName:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v5}, Ljackpal/androidterm/BoundSession;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_51

    .line 175
    .end local v0    # "session":Ljackpal/androidterm/GenericTermSession;
    .local v1, "session":Ljackpal/androidterm/GenericTermSession;
    :try_start_23
    iget-object v4, p0, Ljackpal/androidterm/TermService$RBinder$1;->this$1:Ljackpal/androidterm/TermService$RBinder;

    iget-object v4, v4, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    # getter for: Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;
    invoke-static {v4}, Ljackpal/androidterm/TermService;->access$100(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/util/SessionList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 177
    iget-object v4, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$sessionHandle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljackpal/androidterm/GenericTermSession;->setHandle(Ljava/lang/String;)V

    .line 178
    new-instance v4, Ljackpal/androidterm/TermService$RBinderCleanupCallback;

    iget-object v5, p0, Ljackpal/androidterm/TermService$RBinder$1;->this$1:Ljackpal/androidterm/TermService$RBinder;

    iget-object v5, v5, Ljackpal/androidterm/TermService$RBinder;->this$0:Ljackpal/androidterm/TermService;

    iget-object v6, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$result:Landroid/app/PendingIntent;

    iget-object v7, p0, Ljackpal/androidterm/TermService$RBinder$1;->val$callback:Landroid/os/ResultReceiver;

    invoke-direct {v4, v5, v6, v7}, Ljackpal/androidterm/TermService$RBinderCleanupCallback;-><init>(Ljackpal/androidterm/TermService;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    invoke-virtual {v1, v4}, Ljackpal/androidterm/GenericTermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 179
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljackpal/androidterm/GenericTermSession;->setTitle(Ljava/lang/String;)V

    .line 181
    const/16 v4, 0x50

    const/16 v5, 0x18

    invoke-virtual {v1, v4, v5}, Ljackpal/androidterm/GenericTermSession;->initializeEmulator(II)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4f} :catch_74

    move-object v0, v1

    .line 189
    .end local v1    # "session":Ljackpal/androidterm/GenericTermSession;
    .end local v2    # "settings":Ljackpal/androidterm/util/TermSettings;
    .restart local v0    # "session":Ljackpal/androidterm/GenericTermSession;
    :cond_50
    :goto_50
    return-void

    .line 182
    :catch_51
    move-exception v3

    .line 183
    .local v3, "whatWentWrong":Ljava/lang/Exception;
    :goto_52
    const-string v4, "TermService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bootstrap AIDL session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz v0, :cond_50

    .line 187
    invoke-virtual {v0}, Ljackpal/androidterm/GenericTermSession;->finish()V

    goto :goto_50

    .line 182
    .end local v0    # "session":Ljackpal/androidterm/GenericTermSession;
    .end local v3    # "whatWentWrong":Ljava/lang/Exception;
    .restart local v1    # "session":Ljackpal/androidterm/GenericTermSession;
    .restart local v2    # "settings":Ljackpal/androidterm/util/TermSettings;
    :catch_74
    move-exception v3

    move-object v0, v1

    .end local v1    # "session":Ljackpal/androidterm/GenericTermSession;
    .restart local v0    # "session":Ljackpal/androidterm/GenericTermSession;
    goto :goto_52
.end method
