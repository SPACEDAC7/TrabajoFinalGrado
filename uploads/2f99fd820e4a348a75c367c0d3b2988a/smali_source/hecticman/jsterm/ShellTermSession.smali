.class public Lhecticman/jsterm/ShellTermSession;
.super Lhecticman/jsterm/emulatorview/TermSession;
.source "ShellTermSession.java"


# static fields
.field private static final PROCESS_EXITED:I = 0x1

.field public static final PROCESS_EXIT_DISPLAYS_MESSAGE:I = 0x1

.field public static final PROCESS_EXIT_FINISHES_SESSION:I


# instance fields
.field private mHandle:Ljava/lang/String;

.field private mInitialCommand:Ljava/lang/String;

.field private mMsgHandler:Landroid/os/Handler;

.field private mProcId:I

.field private mProcessExitBehavior:I

.field private mProcessExitMessage:Ljava/lang/String;

.field private mSettings:Lhecticman/jsterm/util/TermSettings;

.field private mTermFd:Ljava/io/FileDescriptor;

.field private mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

.field private mWatcherThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)V
    .registers 5
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;
    .param p2, "initialCommand"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TermSession;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/ShellTermSession;->mProcessExitBehavior:I

    .line 63
    new-instance v0, Lhecticman/jsterm/ShellTermSession$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/ShellTermSession$1;-><init>(Lhecticman/jsterm/ShellTermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lhecticman/jsterm/ShellTermSession$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/ShellTermSession$2;-><init>(Lhecticman/jsterm/ShellTermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 84
    invoke-virtual {p0, p1}, Lhecticman/jsterm/ShellTermSession;->updatePrefs(Lhecticman/jsterm/util/TermSettings;)V

    .line 86
    invoke-direct {p0}, Lhecticman/jsterm/ShellTermSession;->initializeSession()V

    .line 87
    iput-object p2, p0, Lhecticman/jsterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    .line 89
    new-instance v0, Lhecticman/jsterm/ShellTermSession$3;

    invoke-direct {v0, p0}, Lhecticman/jsterm/ShellTermSession$3;-><init>(Lhecticman/jsterm/ShellTermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    .line 98
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    const-string v1, "Process watcher"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/ShellTermSession;I)V
    .registers 2

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lhecticman/jsterm/ShellTermSession;->onProcessExit(I)V

    return-void
.end method

.method static synthetic access$1(Lhecticman/jsterm/ShellTermSession;)Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$2(Lhecticman/jsterm/ShellTermSession;)I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lhecticman/jsterm/ShellTermSession;->mProcId:I

    return v0
.end method

.method static synthetic access$3(Lhecticman/jsterm/ShellTermSession;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 141
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "dirs":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v0, "checkedPath":Ljava/lang/StringBuilder;
    array-length v6, v3

    move v4, v5

    :goto_12
    if-lt v4, v6, :cond_1f

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 143
    :cond_1f
    aget-object v2, v3, v4

    .line 144
    .local v2, "dirname":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-static {v1}, Lhecticman/jsterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method

.method private createSubprocess([ILjava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .param p1, "processId"    # [I
    .param p2, "shell"    # Ljava/lang/String;
    .param p3, "env"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    invoke-direct {p0, p2}, Lhecticman/jsterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    .local v1, "argList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "arg0":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_58

    .line 183
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Shell "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_38

    .line 190
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catch_38
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lhecticman/jsterm/ShellTermSession;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getFailsafeShell()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lhecticman/jsterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .restart local v0    # "arg0":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    .local v2, "args":[Ljava/lang/String;
    :goto_51
    invoke-static {v0, v2, p3, p1}, Lhecticman/jsterm/Exec;->createSubprocess(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    .line 197
    return-void

    .line 185
    .end local v2    # "args":[Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :cond_58
    :try_start_58
    invoke-static {v4}, Lhecticman/jsterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 186
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Shell "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not executable!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_7e
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_87} :catch_38

    .restart local v2    # "args":[Ljava/lang/String;
    goto :goto_51
.end method

.method private initializeSession()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    iget-object v5, p0, Lhecticman/jsterm/ShellTermSession;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 110
    .local v5, "settings":Lhecticman/jsterm/util/TermSettings;
    new-array v4, v9, [I

    .line 112
    .local v4, "processId":[I
    const-string v6, "PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->doPathExtensions()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 114
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getAppendPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "appendPath":Ljava/lang/String;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_35
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->allowPathPrepend()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 120
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getPrependPath()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "prependPath":Ljava/lang/String;
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5e

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .end local v0    # "appendPath":Ljava/lang/String;
    .end local v3    # "prependPath":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->verifyPath()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 127
    invoke-direct {p0, v2}, Lhecticman/jsterm/ShellTermSession;->checkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_68
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 130
    .local v1, "env":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TERM="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getTermType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PATH="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    .line 133
    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getShell()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Lhecticman/jsterm/ShellTermSession;->createSubprocess([ILjava/lang/String;[Ljava/lang/String;)V

    .line 134
    aget v6, v4, v8

    iput v6, p0, Lhecticman/jsterm/ShellTermSession;->mProcId:I

    .line 136
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v6}, Lhecticman/jsterm/ShellTermSession;->setTermOut(Ljava/io/OutputStream;)V

    .line 137
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v6}, Lhecticman/jsterm/ShellTermSession;->setTermIn(Ljava/io/InputStream;)V

    .line 138
    return-void
.end method

.method private onProcessExit(I)V
    .registers 5
    .param p1, "result"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lhecticman/jsterm/ShellTermSession;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v1}, Lhecticman/jsterm/util/TermSettings;->closeWindowOnProcessExit()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 262
    invoke-virtual {p0}, Lhecticman/jsterm/ShellTermSession;->finish()V

    .line 272
    :cond_b
    :goto_b
    return-void

    .line 263
    :cond_c
    iget-object v1, p0, Lhecticman/jsterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 265
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhecticman/jsterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 266
    .local v0, "msg":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lhecticman/jsterm/ShellTermSession;->appendToEmulator([BII)V

    .line 267
    invoke-virtual {p0}, Lhecticman/jsterm/ShellTermSession;->notifyUpdate()V
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_35} :catch_36

    goto :goto_b

    .line 268
    .end local v0    # "msg":[B
    :catch_36
    move-exception v1

    goto :goto_b
.end method

.method private parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x22

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "PLAIN":I
    const/4 v2, 0x1

    .line 202
    .local v2, "WHITESPACE":I
    const/4 v0, 0x2

    .line 203
    .local v0, "INQUOTE":I
    const/4 v8, 0x1

    .line 204
    .local v8, "state":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 206
    .local v5, "cmdLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    if-lt v6, v5, :cond_25

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_24

    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_24
    return-object v7

    .line 208
    :cond_25
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 209
    .local v4, "c":C
    if-nez v8, :cond_4c

    .line 210
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 213
    const/4 v8, 0x1

    .line 207
    :cond_41
    :goto_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 214
    :cond_44
    if-ne v4, v11, :cond_48

    .line 215
    const/4 v8, 0x2

    goto :goto_41

    .line 217
    :cond_48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 219
    :cond_4c
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5e

    .line 220
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_41

    .line 222
    if-ne v4, v11, :cond_59

    .line 223
    const/4 v8, 0x2

    goto :goto_41

    .line 225
    :cond_59
    const/4 v8, 0x0

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 228
    :cond_5e
    const/4 v9, 0x2

    if-ne v8, v9, :cond_41

    .line 229
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_73

    .line 230
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_41

    .line 231
    add-int/lit8 v6, v6, 0x1

    .line 232
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 234
    :cond_73
    if-ne v4, v11, :cond_77

    .line 235
    const/4 v8, 0x0

    goto :goto_41

    .line 237
    :cond_77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method private sendInitialCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "initialCommand"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/ShellTermSession;->write(Ljava/lang/String;)V

    .line 168
    :cond_1c
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lhecticman/jsterm/ShellTermSession;->mProcId:I

    invoke-static {v0}, Lhecticman/jsterm/Exec;->hangupProcessGroup(I)V

    .line 277
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lhecticman/jsterm/Exec;->close(Ljava/io/FileDescriptor;)V

    .line 278
    invoke-super {p0}, Lhecticman/jsterm/emulatorview/TermSession;->finish()V

    .line 279
    return-void
.end method

.method public getEnvPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lhecticman/jsterm/Exec;->getEnvPath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public initializeEmulator(II)V
    .registers 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lhecticman/jsterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 157
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lhecticman/jsterm/ShellTermSession;->getUTF8Mode()Z

    move-result v1

    invoke-static {v0, v1}, Lhecticman/jsterm/Exec;->setPtyUTF8Mode(Ljava/io/FileDescriptor;Z)V

    .line 158
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    invoke-virtual {p0, v0}, Lhecticman/jsterm/ShellTermSession;->setUTF8ModeUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 160
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhecticman/jsterm/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public sendInitialCommand()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhecticman/jsterm/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setEnvPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lhecticman/jsterm/Exec;->setEnvPath(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setHandle(Ljava/lang/String;)V
    .registers 4
    .param p1, "handle"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mHandle:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change handle once set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_c
    iput-object p1, p0, Lhecticman/jsterm/ShellTermSession;->mHandle:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setProcessExitMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lhecticman/jsterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public updatePrefs(Lhecticman/jsterm/util/TermSettings;)V
    .registers 4
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;

    .prologue
    .line 102
    iput-object p1, p0, Lhecticman/jsterm/ShellTermSession;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 103
    new-instance v0, Lhecticman/jsterm/emulatorview/ColorScheme;

    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getColorScheme()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lhecticman/jsterm/emulatorview/ColorScheme;-><init>([I)V

    invoke-virtual {p0, v0}, Lhecticman/jsterm/ShellTermSession;->setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 104
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->defaultToUTF8Mode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/ShellTermSession;->setDefaultUTF8Mode(Z)V

    .line 105
    return-void
.end method

.method public updateSize(II)V
    .registers 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-object v0, p0, Lhecticman/jsterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1, v1, v1}, Lhecticman/jsterm/Exec;->setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V

    .line 251
    invoke-super {p0, p1, p2}, Lhecticman/jsterm/emulatorview/TermSession;->updateSize(II)V

    .line 252
    return-void
.end method
