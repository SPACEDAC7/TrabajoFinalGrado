.class public Ljackpal/androidterm/ShellTermSession;
.super Ljackpal/androidterm/GenericTermSession;
.source "ShellTermSession.java"


# static fields
.field private static final PROCESS_EXITED:I = 0x1


# instance fields
.field private mInitialCommand:Ljava/lang/String;

.field private mMsgHandler:Landroid/os/Handler;

.field private mProcId:I

.field private mWatcherThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V
    .registers 5
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;
    .param p2, "initialCommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/ptmx"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x30000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljackpal/androidterm/GenericTermSession;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/util/TermSettings;Z)V

    .line 41
    new-instance v0, Ljackpal/androidterm/ShellTermSession$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/ShellTermSession$1;-><init>(Ljackpal/androidterm/ShellTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Ljackpal/androidterm/ShellTermSession;->initializeSession()V

    .line 59
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->setTermOut(Ljava/io/OutputStream;)V

    .line 60
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->setTermIn(Ljava/io/InputStream;)V

    .line 62
    iput-object p2, p0, Ljackpal/androidterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    .line 64
    new-instance v0, Ljackpal/androidterm/ShellTermSession$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/ShellTermSession$2;-><init>(Ljackpal/androidterm/ShellTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    const-string v1, "Process watcher"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/ShellTermSession;I)V
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/ShellTermSession;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljackpal/androidterm/ShellTermSession;->onProcessExit(I)V

    return-void
.end method

.method static synthetic access$100(Ljackpal/androidterm/ShellTermSession;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/ShellTermSession;

    .prologue
    .line 34
    iget v0, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    return v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/ShellTermSession;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/ShellTermSession;

    .prologue
    .line 34
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "dirs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v1, "checkedPath":Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_12
    if-ge v5, v6, :cond_32

    aget-object v3, v0, v5

    .line 108
    .local v3, "dirname":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {v2}, Ljackpal/androidterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 114
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "dirname":Ljava/lang/String;
    :cond_32
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private createSubprocess(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "env"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    invoke-direct {p0, p1}, Ljackpal/androidterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    .local v1, "argList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "arg0":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 140
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3c

    .line 147
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :catch_3c
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    iget-object v5, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getFailsafeShell()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljackpal/androidterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .restart local v0    # "arg0":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    .local v2, "args":[Ljava/lang/String;
    :goto_55
    iget-object v5, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v5, v0, v2, p2}, Ljackpal/androidterm/TermExec;->createSubprocess(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 142
    .end local v2    # "args":[Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :cond_5c
    :try_start_5c
    invoke-static {v4}, Ljackpal/androidterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 143
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not executable!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_86
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8f} :catch_3c

    .restart local v2    # "args":[Ljava/lang/String;
    goto :goto_55
.end method

.method private initializeSession()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v4, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 79
    .local v4, "settings":Ljackpal/androidterm/util/TermSettings;
    const-string v5, "PATH"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->doPathExtensions()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 81
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->getAppendPath()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appendPath":Ljava/lang/String;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_31

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_31
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->allowPathPrepend()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 87
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->getPrependPath()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "prependPath":Ljava/lang/String;
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5a

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .end local v0    # "appendPath":Ljava/lang/String;
    .end local v3    # "prependPath":Ljava/lang/String;
    :cond_5a
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->verifyPath()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 94
    invoke-direct {p0, v2}, Ljackpal/androidterm/ShellTermSession;->checkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_64
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    .line 97
    .local v1, "env":[Ljava/lang/String;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->getTermType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 98
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 99
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOME="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->getHomePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 101
    invoke-virtual {v4}, Ljackpal/androidterm/util/TermSettings;->getShell()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Ljackpal/androidterm/ShellTermSession;->createSubprocess(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    .line 102
    return-void
.end method

.method private onProcessExit(I)V
    .registers 2
    .param p1, "result"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Ljackpal/androidterm/ShellTermSession;->onProcessExit()V

    .line 206
    return-void
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

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "PLAIN":I
    const/4 v2, 0x1

    .line 159
    .local v2, "WHITESPACE":I
    const/4 v0, 0x2

    .line 160
    .local v0, "INQUOTE":I
    const/4 v8, 0x1

    .line 161
    .local v8, "state":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 163
    .local v5, "cmdLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    if-ge v6, v5, :cond_6d

    .line 165
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 166
    .local v4, "c":C
    if-nez v8, :cond_3e

    .line 167
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 170
    const/4 v8, 0x1

    .line 164
    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 171
    :cond_36
    if-ne v4, v11, :cond_3a

    .line 172
    const/4 v8, 0x2

    goto :goto_33

    .line 174
    :cond_3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 176
    :cond_3e
    const/4 v9, 0x1

    if-ne v8, v9, :cond_50

    .line 177
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_33

    .line 179
    if-ne v4, v11, :cond_4b

    .line 180
    const/4 v8, 0x2

    goto :goto_33

    .line 182
    :cond_4b
    const/4 v8, 0x0

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 185
    :cond_50
    const/4 v9, 0x2

    if-ne v8, v9, :cond_33

    .line 186
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_65

    .line 187
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_33

    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 191
    :cond_65
    if-ne v4, v11, :cond_69

    .line 192
    const/4 v8, 0x0

    goto :goto_33

    .line 194
    :cond_69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 198
    .end local v4    # "c":C
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7a

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_7a
    return-object v7
.end method

.method private sendInitialCommand(Ljava/lang/String;)V
    .registers 4
    .param p1, "initialCommand"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->write(Ljava/lang/String;)V

    .line 129
    :cond_1c
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 210
    invoke-virtual {p0}, Ljackpal/androidterm/ShellTermSession;->hangupProcessGroup()V

    .line 211
    invoke-super {p0}, Ljackpal/androidterm/GenericTermSession;->finish()V

    .line 212
    return-void
.end method

.method public bridge synthetic getHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Ljackpal/androidterm/GenericTermSession;->getHandle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljackpal/androidterm/GenericTermSession;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hangupProcessGroup()V
    .registers 3

    .prologue
    .line 220
    iget v0, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    neg-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljackpal/androidterm/TermExec;->sendSignal(II)V

    .line 221
    return-void
.end method

.method public initializeEmulator(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/GenericTermSession;->initializeEmulator(II)V

    .line 121
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljackpal/androidterm/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public bridge synthetic setHandle(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljackpal/androidterm/GenericTermSession;->setHandle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setProcessExitMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljackpal/androidterm/GenericTermSession;->setProcessExitMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Ljackpal/androidterm/GenericTermSession;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 2
    .param p1, "x0"    # Ljackpal/androidterm/util/TermSettings;

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljackpal/androidterm/GenericTermSession;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    return-void
.end method

.method public bridge synthetic updateSize(II)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/GenericTermSession;->updateSize(II)V

    return-void
.end method
