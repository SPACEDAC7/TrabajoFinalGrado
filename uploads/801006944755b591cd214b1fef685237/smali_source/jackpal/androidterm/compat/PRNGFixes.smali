.class public final Ljackpal/androidterm/compat/PRNGFixes;
.super Ljava/lang/Object;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandom;,
        Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

.field private static final VERSION_CODE_JELLY_BEAN:I = 0x10

.field private static final VERSION_CODE_JELLY_BEAN_MR2:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->getBuildFingerprintAndDeviceSerial()[B

    move-result-object v0

    sput-object v0, Ljackpal/androidterm/compat/PRNGFixes;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->generateSeed()[B

    move-result-object v0

    return-object v0
.end method

.method public static apply()V
    .registers 0

    .prologue
    .line 64
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->applyOpenSSLFix()V

    .line 65
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->installLinuxPRNGSecureRandom()V

    .line 66
    return-void
.end method

.method private static applyOpenSSLFix()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    .line 75
    sget v2, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_e

    sget v2, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_f

    .line 100
    .local v0, "bytesRead":I
    :cond_e
    return-void

    .line 83
    .end local v0    # "bytesRead":I
    :cond_f
    :try_start_f
    const-string v2, "org.apache.harmony.xnet.provider.jsse.NativeCrypto"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "RAND_seed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->generateSeed()[B

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "org.apache.harmony.xnet.provider.jsse.NativeCrypto"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "RAND_load_file"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/dev/urandom"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .restart local v0    # "bytesRead":I
    if-eq v0, v7, :cond_e

    .line 93
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected number of bytes read from Linux PRNG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_81} :catch_81

    .line 97
    :catch_81
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Failed to seed OpenSSL PRNG"

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static generateSeed()[B
    .registers 6

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    .local v1, "seedBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 302
    .local v2, "seedBufferOut":Ljava/io/DataOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 304
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 306
    sget-object v3, Ljackpal/androidterm/compat/PRNGFixes;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 307
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 308
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v3

    return-object v3

    .line 309
    .end local v2    # "seedBufferOut":Ljava/io/DataOutputStream;
    :catch_33
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Failed to generate seed"

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getBuildFingerprintAndDeviceSerial()[B
    .registers 6

    .prologue
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v2, "result":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 332
    .local v1, "fingerprint":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_c
    invoke-static {}, Ljackpal/androidterm/compat/PRNGFixes;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "serial":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_15
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1e} :catch_20

    move-result-object v4

    return-object v4

    .line 341
    :catch_20
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "UTF-8 encoding not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getDeviceSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 323
    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 325
    .local v0, "ignored":Ljava/lang/Exception;
    :goto_10
    return-object v1

    .line 324
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .restart local v0    # "ignored":Ljava/lang/Exception;
    move-object v1, v2

    .line 325
    goto :goto_10
.end method

.method private static installLinuxPRNGSecureRandom()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 111
    sget v4, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_8

    .line 150
    .local v1, "rng1":Ljava/security/SecureRandom;
    .local v2, "rng2":Ljava/security/SecureRandom;
    .local v3, "secureRandomProviders":[Ljava/security/Provider;
    :cond_7
    return-void

    .line 118
    .end local v1    # "rng1":Ljava/security/SecureRandom;
    .end local v2    # "rng2":Ljava/security/SecureRandom;
    .end local v3    # "secureRandomProviders":[Ljava/security/Provider;
    :cond_8
    const-string v4, "SecureRandom.SHA1PRNG"

    invoke-static {v4}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v3

    .line 120
    .restart local v3    # "secureRandomProviders":[Ljava/security/Provider;
    if-eqz v3, :cond_22

    array-length v4, v3

    if-lt v4, v6, :cond_22

    const-class v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 124
    :cond_22
    new-instance v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;

    invoke-direct {v4}, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;-><init>()V

    invoke-static {v4, v6}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 130
    :cond_2a
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 131
    .restart local v1    # "rng1":Ljava/security/SecureRandom;
    const-class v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 133
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new SecureRandom() backed by wrong Provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_60
    :try_start_60
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_60 .. :try_end_65} :catch_97

    move-result-object v2

    .line 144
    .restart local v2    # "rng2":Ljava/security/SecureRandom;
    const-class v4, Ljackpal/androidterm/compat/PRNGFixes$LinuxPRNGSecureRandomProvider;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 146
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    .end local v2    # "rng2":Ljava/security/SecureRandom;
    :catch_97
    move-exception v0

    .line 142
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "SHA1PRNG not available"

    invoke-direct {v4, v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
