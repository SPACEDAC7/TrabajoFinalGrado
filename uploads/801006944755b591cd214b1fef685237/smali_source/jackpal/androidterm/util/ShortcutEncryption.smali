.class public final Ljackpal/androidterm/util/ShortcutEncryption;
.super Ljava/lang/Object;
.source "ShortcutEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    }
.end annotation


# static fields
.field public static final BASE64_DFLAGS:I = 0x0

.field public static final BASE64_EFLAGS:I = 0x3

.field private static final COLON:Ljava/util/regex/Pattern;

.field public static final ENC_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final ENC_BLOCKSIZE:I = 0x10

.field public static final ENC_SYSTEM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final KEYLEN:I = 0x80

.field public static final MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final SHORTCUT_KEYS_PREF:Ljava/lang/String; = "shortcut_keys"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljackpal/androidterm/util/ShortcutEncryption;->COLON:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000([B)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 83
    invoke-static {p0}, Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Ljackpal/androidterm/util/ShortcutEncryption;->COLON:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)[B
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Ljackpal/androidterm/util/ShortcutEncryption;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static computeMac(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 283
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 285
    .local v1, "macBytes":[B
    invoke-static {v1}, Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static decodeBase64(Ljava/lang/String;)[B
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljackpal/androidterm/compat/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)Ljava/lang/String;
    .registers 16
    .param p0, "encrypted"    # Ljava/lang/String;
    .param p1, "keys"    # Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v11, "AES/CBC/PKCS5Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 201
    .local v1, "cipher":Ljavax/crypto/Cipher;
    sget-object v11, Ljackpal/androidterm/util/ShortcutEncryption;->COLON:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "data":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x3

    if-eq v11, v12, :cond_18

    .line 203
    new-instance v11, Ljava/security/GeneralSecurityException;

    const-string v12, "Invalid encrypted data!"

    invoke-direct {v11, v12}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 205
    :cond_18
    const/4 v11, 0x0

    aget-object v8, v3, v11

    .line 206
    .local v8, "mac":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v6, v3, v11

    .line 207
    .local v6, "iv":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v2, v3, v11

    .line 210
    .local v2, "cipherText":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "dataToAuth":Ljava/lang/String;
    invoke-virtual {p1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->getMacKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    invoke-static {v4, v11}, Ljackpal/androidterm/util/ShortcutEncryption;->computeMac(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4e

    .line 212
    new-instance v11, Ljava/security/GeneralSecurityException;

    const-string v12, "Incorrect MAC!"

    invoke-direct {v11, v12}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 216
    :cond_4e
    invoke-static {v6}, Ljackpal/androidterm/util/ShortcutEncryption;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v7

    .line 217
    .local v7, "ivBytes":[B
    const/4 v11, 0x2

    invoke-virtual {p1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->getEncKey()Ljavax/crypto/SecretKey;

    move-result-object v12

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v11, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 218
    invoke-static {v2}, Ljackpal/androidterm/util/ShortcutEncryption;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 221
    .local v0, "bytes":[B
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 222
    .local v5, "decoder":Ljava/nio/charset/CharsetDecoder;
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v11}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 223
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v11}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 234
    array-length v11, v0

    invoke-static {v11}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v9

    .line 235
    .local v9, "out":Ljava/nio/CharBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v9, v12}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v10

    .line 236
    .local v10, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v10}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v11

    if-eqz v11, :cond_95

    .line 239
    new-instance v11, Ljava/security/GeneralSecurityException;

    const-string v12, "Corrupt decrypted data!"

    invoke-direct {v11, v12}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 241
    :cond_95
    invoke-virtual {v5, v9}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 242
    invoke-virtual {v9}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static encodeToBase64([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B

    .prologue
    .line 295
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljackpal/androidterm/compat/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)Ljava/lang/String;
    .registers 13
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "keys"    # Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 258
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 259
    .local v7, "rng":Ljava/security/SecureRandom;
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 260
    .local v5, "ivBytes":[B
    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 261
    invoke-static {v5}, Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "iv":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->getEncKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v8, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 266
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "cipherText":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "dataToAuth":Ljava/lang/String;
    invoke-virtual {p1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->getMacKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-static {v3, v8}, Ljackpal/androidterm/util/ShortcutEncryption;->computeMac(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "mac":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static generateKeys()Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 176
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 177
    .local v1, "gen":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v1, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 178
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 182
    .local v0, "encKey":Ljavax/crypto/SecretKey;
    const-string v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 184
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 186
    .local v2, "macKey":Ljavax/crypto/SecretKey;
    new-instance v3, Ljackpal/androidterm/util/ShortcutEncryption$Keys;

    invoke-direct {v3, v0, v2}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v3
.end method

.method public static getKeys(Landroid/content/Context;)Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 146
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "shortcut_keys"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "keyEnc":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 154
    :goto_d
    return-object v3

    .line 152
    :cond_e
    :try_start_e
    invoke-static {v1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->decode(Ljava/lang/String;)Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    goto :goto_d

    .line 153
    :catch_13
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_d
.end method

.method public static saveKeys(Landroid/content/Context;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "keys"    # Ljackpal/androidterm/util/ShortcutEncryption$Keys;

    .prologue
    .line 162
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "shortcut_keys"

    invoke-virtual {p1}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method
