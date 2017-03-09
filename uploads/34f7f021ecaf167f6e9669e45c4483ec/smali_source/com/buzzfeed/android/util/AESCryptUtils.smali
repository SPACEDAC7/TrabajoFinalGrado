.class public final Lcom/buzzfeed/android/util/AESCryptUtils;
.super Ljava/lang/Object;
.source "AESCryptUtils.java"


# static fields
.field private static final AES_MODE:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final SETTINGS_KEY_SECRET_KEY:Ljava/lang/String; = "secretKey"

.field private static final TAG:Ljava/lang/String; = "AESCrypt"

.field private static final ivBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/buzzfeed/android/util/AESCryptUtils;->ivBytes:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "base64EncodedCipherText"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 129
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/buzzfeed/android/util/AESCryptUtils;->getSecretKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 130
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0, p0}, Lcom/buzzfeed/android/util/AESCryptUtils;->decrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .end local v0    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static decrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "keySpec"    # Ljavax/crypto/spec/SecretKeySpec;
    .param p1, "base64EncodedCipherText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v6, 0x2

    :try_start_1
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 150
    .local v1, "decodedCipherText":[B
    const-string v6, "AES/CBC/PKCS7Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 151
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/buzzfeed/android/util/AESCryptUtils;->ivBytes:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 152
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 153
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 154
    .local v2, "decryptedBytes":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_21} :catch_22

    .line 155
    .local v5, "message":Ljava/lang/String;
    return-object v5

    .line 156
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decodedCipherText":[B
    .end local v2    # "decryptedBytes":[B
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "message":Ljava/lang/String;
    :catch_22
    move-exception v3

    .line 157
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "AESCrypt"

    const-string v7, "UnsupportedEncodingException "

    invoke-static {v6, v7, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-direct {v6, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/buzzfeed/android/util/AESCryptUtils;->getSecretKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 87
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0, p0}, Lcom/buzzfeed/android/util/AESCryptUtils;->encrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "keySpec"    # Ljavax/crypto/spec/SecretKeySpec;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 106
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/buzzfeed/android/util/AESCryptUtils;->ivBytes:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 107
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 108
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 109
    .local v1, "cipherText":[B
    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v3

    .line 110
    .local v3, "encoded":Ljava/lang/String;
    return-object v3

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherText":[B
    .end local v3    # "encoded":Ljava/lang/String;
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_21
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "AESCrypt"

    const-string v6, "UnsupportedEncodingException "

    invoke-static {v5, v6, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    new-instance v5, Ljava/security/GeneralSecurityException;

    invoke-direct {v5, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static generateKey()Ljavax/crypto/SecretKey;
    .registers 7

    .prologue
    .line 58
    const/16 v3, 0x100

    .line 60
    .local v3, "outputKeyLength":I
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 61
    .local v4, "secureRandom":Ljava/security/SecureRandom;
    const/4 v1, 0x0

    .line 64
    .local v1, "key":Ljavax/crypto/SecretKey;
    :try_start_8
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 65
    .local v2, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v5, 0x100

    invoke-virtual {v2, v5, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 66
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_16} :catch_18

    move-result-object v1

    .line 71
    .end local v2    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    :goto_17
    return-object v1

    .line 67
    :catch_18
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "AESCrypt"

    const-string v6, "Error generating secret key"

    invoke-static {v5, v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    .local v2, "savedSettings":Landroid/content/SharedPreferences;
    const-string v4, "secretKey"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "keyString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 44
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 45
    :cond_15
    invoke-static {}, Lcom/buzzfeed/android/util/AESCryptUtils;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "secretKey"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    :goto_2e
    return-object v3

    .line 49
    :cond_2f
    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 50
    .local v0, "bytes":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    const-string v4, "AES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .restart local v3    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_2e
.end method
