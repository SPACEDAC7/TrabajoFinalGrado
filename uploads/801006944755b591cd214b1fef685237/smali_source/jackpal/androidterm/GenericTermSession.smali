.class Ljackpal/androidterm/GenericTermSession;
.super Ljackpal/androidterm/emulatorview/TermSession;
.source "GenericTermSession.java"


# static fields
.field public static final PROCESS_EXIT_DISPLAYS_MESSAGE:I = 0x1

.field public static final PROCESS_EXIT_FINISHES_SESSION:I

.field private static final VTTEST_MODE:Z

.field private static descriptorField:Ljava/lang/reflect/Field;


# instance fields
.field private final createdAt:J

.field private mHandle:Ljava/lang/String;

.field private mProcessExitMessage:Ljava/lang/String;

.field mSettings:Ljackpal/androidterm/util/TermSettings;

.field final mTermFd:Landroid/os/ParcelFileDescriptor;

.field private mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/util/TermSettings;Z)V
    .registers 6
    .param p1, "mTermFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settings"    # Ljackpal/androidterm/util/TermSettings;
    .param p3, "exitOnEOF"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p3}, Ljackpal/androidterm/emulatorview/TermSession;-><init>(Z)V

    .line 60
    new-instance v0, Ljackpal/androidterm/GenericTermSession$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/GenericTermSession$1;-><init>(Ljackpal/androidterm/GenericTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/GenericTermSession;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 69
    iput-object p1, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljackpal/androidterm/GenericTermSession;->createdAt:J

    .line 73
    invoke-virtual {p0, p2}, Ljackpal/androidterm/GenericTermSession;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 74
    return-void
.end method

.method private static cacheDescField()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Ljackpal/androidterm/GenericTermSession;->descriptorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    .line 221
    :goto_4
    return-void

    .line 219
    :cond_5
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljackpal/androidterm/GenericTermSession;->descriptorField:Ljava/lang/reflect/Field;

    .line 220
    sget-object v0, Ljackpal/androidterm/GenericTermSession;->descriptorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_4
.end method

.method private static getIntFd(Landroid/os/ParcelFileDescriptor;)I
    .registers 5
    .param p0, "parcelFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_b

    .line 225
    invoke-static {p0}, Ljackpal/androidterm/FdHelperHoneycomb;->getFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    .line 230
    :goto_a
    return v1

    .line 228
    :cond_b
    :try_start_b
    invoke-static {}, Ljackpal/androidterm/GenericTermSession;->cacheDescField()V

    .line 230
    sget-object v1, Ljackpal/androidterm/GenericTermSession;->descriptorField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    move-result v1

    goto :goto_a

    .line 231
    :catch_19
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain file descriptor on this OS version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 134
    :goto_5
    invoke-super {p0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 135
    return-void

    .line 130
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public getHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Ljackpal/androidterm/GenericTermSession;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultTitle"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 150
    .end local v0    # "title":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "title":Ljava/lang/String;
    :cond_d
    move-object v0, p1

    goto :goto_c
.end method

.method public initializeEmulator(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 90
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->getUTF8Mode()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/GenericTermSession;->setPtyUTF8Mode(Z)V

    .line 91
    iget-object v0, p0, Ljackpal/androidterm/GenericTermSession;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/GenericTermSession;->setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 92
    return-void
.end method

.method isFailFast()Z
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method protected onProcessExit()V
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v1}, Ljackpal/androidterm/util/TermSettings;->closeWindowOnProcessExit()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 114
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->finish()V

    .line 124
    :cond_b
    :goto_b
    return-void

    .line 115
    :cond_c
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mProcessExitMessage:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 117
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/GenericTermSession;->mProcessExitMessage:Ljava/lang/String;

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

    .line 118
    .local v0, "msg":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/GenericTermSession;->appendToEmulator([BII)V

    .line 119
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->notifyUpdate()V
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_39} :catch_3a

    goto :goto_b

    .line 120
    .end local v0    # "msg":[B
    :catch_3a
    move-exception v1

    goto :goto_b
.end method

.method public setHandle(Ljava/lang/String;)V
    .registers 4
    .param p1, "handle"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Ljackpal/androidterm/GenericTermSession;->mHandle:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change handle once set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_c
    iput-object p1, p0, Ljackpal/androidterm/GenericTermSession;->mHandle:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setProcessExitMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Ljackpal/androidterm/GenericTermSession;->mProcessExitMessage:Ljava/lang/String;

    .line 109
    return-void
.end method

.method setPtyUTF8Mode(Z)V
    .registers 6
    .param p1, "utf8Mode"    # Z

    .prologue
    .line 195
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_d

    .line 206
    :cond_c
    :goto_c
    return-void

    .line 199
    :cond_d
    :try_start_d
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Ljackpal/androidterm/GenericTermSession;->getIntFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    invoke-static {v1, p1}, Ljackpal/androidterm/Exec;->setPtyUTF8ModeInternal(IZ)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_c

    .line 200
    :catch_17
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "exec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set UTF mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->isFailFast()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setPtyWindowSize(IIII)V
    .registers 9
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "xpixel"    # I
    .param p4, "ypixel"    # I

    .prologue
    .line 176
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_d

    .line 187
    :cond_c
    :goto_c
    return-void

    .line 180
    :cond_d
    :try_start_d
    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mTermFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Ljackpal/androidterm/GenericTermSession;->getIntFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    invoke-static {v1, p1, p2, p3, p4}, Ljackpal/androidterm/Exec;->setPtyWindowSizeInternal(IIIII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_c

    .line 181
    :catch_17
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "exec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set window size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Ljackpal/androidterm/GenericTermSession;->isFailFast()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljackpal/androidterm/GenericTermSession;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/GenericTermSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 4
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;

    .prologue
    .line 77
    iput-object p1, p0, Ljackpal/androidterm/GenericTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 78
    new-instance v0, Ljackpal/androidterm/emulatorview/ColorScheme;

    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v1

    invoke-direct {v0, v1}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>([I)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/GenericTermSession;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 79
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->defaultToUTF8Mode()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/GenericTermSession;->setDefaultUTF8Mode(Z)V

    .line 80
    return-void
.end method

.method public updateSize(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p2, p1, v0, v0}, Ljackpal/androidterm/GenericTermSession;->setPtyWindowSize(IIII)V

    .line 102
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->updateSize(II)V

    .line 103
    return-void
.end method
