.class public Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/compat/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinuxPRNGSecureRandom"
.end annotation


# static fields
.field private static final URANDOM_FILE:Ljava/io/File;

.field private static final sLock:Ljava/lang/Object;

.field private static sUrandomIn:Ljava/io/DataInputStream;

.field private static sUrandomOut:Ljava/io/OutputStream;


# instance fields
.field private mSeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method private getUrandomInputStream()Ljava/io/DataInputStream;
    .registers 6

    .prologue
    .line 265
    sget-object v2, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_3
    sget-object v1, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3b

    if-nez v1, :cond_15

    .line 272
    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_19
    .catchall {:try_start_7 .. :try_end_15} :catchall_3b

    .line 279
    :cond_15
    :try_start_15
    sget-object v1, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;

    monitor-exit v2

    return-object v1

    .line 274
    :catch_19
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private getUrandomOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v1, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_3
    sget-object v0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    if-nez v0, :cond_10

    .line 286
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v2, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    .line 288
    :cond_10
    sget-object v0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    monitor-exit v1

    return-object v0

    .line 289
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 259
    new-array v0, p1, [B

    .line 260
    .local v0, "seed":[B
    invoke-virtual {p0, v0}, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->engineNextBytes([B)V

    .line 261
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .registers 7
    .param p1, "bytes"    # [B

    .prologue
    .line 238
    iget-boolean v2, p0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-nez v2, :cond_b

    .line 240
    # invokes: Ljackpal/androidterm/compat/PRNGFixes;->generateSeed()[B
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->access$000()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->engineSetSeed([B)V

    .line 245
    :cond_b
    :try_start_b
    sget-object v3, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1c

    .line 246
    :try_start_e
    invoke-direct {p0}, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    .line 247
    .local v1, "in":Ljava/io/DataInputStream;
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_19

    .line 248
    :try_start_13
    monitor-enter v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_14} :catch_1c

    .line 249
    :try_start_14
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 250
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_38

    .line 255
    return-void

    .line 247
    .end local v1    # "in":Ljava/io/DataInputStream;
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 251
    :catch_1c
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_1c
.end method

.method protected engineSetSeed([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 221
    :try_start_1
    sget-object v3, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_15
    .catchall {:try_start_1 .. :try_end_4} :catchall_37

    .line 222
    :try_start_4
    invoke-direct {p0}, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 223
    .local v1, "out":Ljava/io/OutputStream;
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_12

    .line 224
    :try_start_9
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 225
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_15
    .catchall {:try_start_9 .. :try_end_f} :catchall_37

    .line 232
    iput-boolean v5, p0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    .line 234
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_11
    return-void

    .line 223
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_15} :catch_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_37

    .line 226
    :catch_15
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    :try_start_16
    const-class v2, Ljackpal/androidterm/compat/PRNGFixes;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mix seed into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_37

    .line 232
    iput-boolean v5, p0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    goto :goto_11

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_37
    move-exception v2

    iput-boolean v5, p0, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    throw v2
.end method
