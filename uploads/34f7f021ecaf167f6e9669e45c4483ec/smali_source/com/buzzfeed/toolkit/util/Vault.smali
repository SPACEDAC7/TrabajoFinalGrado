.class public abstract Lcom/buzzfeed/toolkit/util/Vault;
.super Ljava/lang/Object;
.source "Vault.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/buzzfeed/toolkit/util/Vault;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/Vault;->mPropertiesMap:Ljava/util/Map;

    return-void
.end method

.method public static decrypt([B)Ljava/lang/String;
    .registers 16
    .param p0, "encrypted"    # [B

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/buzzfeed/toolkit/util/Vault;->getEncryptStr()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "encryptStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/Vault;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 109
    .local v11, "secret":[B
    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/Vault;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 111
    .local v8, "iv":[B
    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 112
    .local v2, "cipher":Ljavax/crypto/Cipher;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "AES"

    invoke-direct {v9, v11, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 113
    .local v9, "key":Ljava/security/Key;
    const/4 v13, 0x2

    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v13, v9, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 115
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/4 v13, 0x0

    invoke-static {p0, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 116
    .local v7, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v7, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 117
    .local v3, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 118
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v12, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 120
    .local v10, "res":I
    const/16 v13, 0x400

    new-array v0, v13, [C

    .line 121
    .local v0, "buf":[C
    :cond_45
    :goto_45
    if-ltz v10, :cond_5f

    .line 122
    const/4 v13, 0x0

    array-length v14, v0

    invoke-virtual {v1, v0, v13, v14}, Ljava/io/BufferedReader;->read([CII)I

    move-result v10

    .line 123
    if-lez v10, :cond_45

    .line 124
    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_45

    .line 129
    .end local v0    # "buf":[C
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v6    # "encryptStr":Ljava/lang/String;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "iv":[B
    .end local v9    # "key":Ljava/security/Key;
    .end local v10    # "res":I
    .end local v11    # "secret":[B
    .end local v12    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_54
    move-exception v5

    .line 130
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    const-string v14, "Error decrypting buzzfeed.properties file"

    invoke-static {v13, v14, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const-string v4, ""

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5e
    return-object v4

    .line 127
    .restart local v0    # "buf":[C
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v3    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .restart local v6    # "encryptStr":Ljava/lang/String;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "iv":[B
    .restart local v9    # "key":Ljava/security/Key;
    .restart local v10    # "res":I
    .restart local v11    # "secret":[B
    .restart local v12    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5f
    :try_start_5f
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_54

    move-result-object v4

    .line 128
    .local v4, "decryptedStr":Ljava/lang/String;
    goto :goto_5e
.end method

.method private static getEncryptStr()Ljava/lang/String;
    .registers 12

    .prologue
    .line 82
    const/16 v1, 0x20

    .line 84
    .local v1, "encryptLength":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v8, "stringBuffer":Ljava/lang/StringBuffer;
    const/16 v0, 0x30

    .local v0, "c":C
    :goto_9
    const/16 v9, 0x39

    if-gt v0, v9, :cond_14

    .line 86
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v9, v0, 0x1

    int-to-char v0, v9

    goto :goto_9

    .line 88
    :cond_14
    const/16 v0, 0x41

    :goto_16
    const/16 v9, 0x46

    if-gt v0, v9, :cond_21

    .line 89
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v9, v0, 0x1

    int-to-char v0, v9

    goto :goto_16

    .line 91
    :cond_21
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "sourceStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    const-string v9, "53316291173"

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 95
    .local v6, "seed":J
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 96
    .local v3, "random":Ljava/util/Random;
    :goto_39
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-ge v9, v1, :cond_4f

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 98
    .local v4, "rnd":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 100
    .end local v4    # "rnd":I
    :cond_4f
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "encryptStr":Ljava/lang/String;
    sget-object v9, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Vault Encryption String: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v2
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 138
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 139
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 140
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 138
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 142
    :cond_2a
    return-object v0
.end method


# virtual methods
.method protected getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/Vault;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    const-string v2, "key/value: %s=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method protected loadProperties(Landroid/content/Context;Ljava/lang/String;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertiesFile"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, "newline":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Vault;->mPropertiesMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    if-nez v16, :cond_100

    .line 38
    sget-object v16, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Loading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 41
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 44
    .local v2, "buf":[B
    :goto_4b
    const/16 v16, 0x0

    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .local v14, "res":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_88

    .line 45
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_65} :catch_66

    goto :goto_4b

    .line 65
    .end local v2    # "buf":[B
    .end local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "res":I
    :catch_66
    move-exception v5

    .line 66
    .local v5, "e":Ljava/io/IOException;
    sget-object v16, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error trying to load "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v5    # "e":Ljava/io/IOException;
    :cond_87
    :goto_87
    return-void

    .line 47
    .restart local v2    # "buf":[B
    .restart local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "res":I
    :cond_88
    :try_start_88
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 49
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 50
    .local v6, "encrypted":[B
    invoke-static {v6}, Lcom/buzzfeed/toolkit/util/Vault;->decrypt([B)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "decryptedStr":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, "lines":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_98
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_87

    .line 54
    aget-object v10, v11, v7

    .line 55
    .local v10, "line":Ljava/lang/String;
    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "parts":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e5

    .line 57
    const/16 v16, 0x0

    aget-object v9, v13, v16

    .line 58
    .local v9, "key":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v15, v13, v16

    .line 59
    .local v15, "value":Ljava/lang/String;
    sget-object v16, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    const-string v17, "  Adding key/value: %s=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Vault;->mPropertiesMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :goto_e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    .line 62
    :cond_e5
    sget-object v16, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error trying to parse key/value: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ff} :catch_66

    goto :goto_e2

    .line 69
    .end local v2    # "buf":[B
    .end local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "decryptedStr":Ljava/lang/String;
    .end local v6    # "encrypted":[B
    .end local v7    # "i":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v13    # "parts":[Ljava/lang/String;
    .end local v14    # "res":I
    :cond_100
    sget-object v16, Lcom/buzzfeed/toolkit/util/Vault;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Properties file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " was already loaded"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87
.end method

.method public abstract openVault(Landroid/content/Context;)V
.end method
