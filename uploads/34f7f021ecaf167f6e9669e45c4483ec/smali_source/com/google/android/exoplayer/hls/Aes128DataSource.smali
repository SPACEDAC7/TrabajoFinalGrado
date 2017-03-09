.class final Lcom/google/android/exoplayer/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lcom/google/android/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;[B[B)V
    .registers 4
    .param p1, "upstream"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptionIv"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 58
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->encryptionKey:[B

    .line 59
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->encryptionIv:[B

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 94
    return-void
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .registers 9
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_5} :catch_32

    move-result-object v0

    .line 73
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->encryptionKey:[B

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .local v2, "cipherKey":Ljava/security/Key;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 77
    .local v1, "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v4, 0x2

    :try_start_17
    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1a} :catch_39
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1a} :catch_40

    .line 84
    new-instance v4, Ljavax/crypto/CipherInputStream;

    new-instance v5, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;

    iget-object v6, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-direct {v5, v6, p1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    invoke-direct {v4, v5, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v4, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 87
    const-wide/16 v4, -0x1

    return-wide v4

    .line 67
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v2    # "cipherKey":Ljava/security/Key;
    :catch_2b
    move-exception v3

    .line 68
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 69
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_32
    move-exception v3

    .line 70
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 78
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v2    # "cipherKey":Ljava/security/Key;
    :catch_39
    move-exception v3

    .line 79
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_40
    move-exception v3

    .line 81
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    .line 100
    .local v0, "bytesRead":I
    if-gez v0, :cond_11

    .line 101
    const/4 v0, -0x1

    .line 103
    .end local v0    # "bytesRead":I
    :cond_11
    return v0

    .line 98
    :cond_12
    const/4 v1, 0x0

    goto :goto_5
.end method
