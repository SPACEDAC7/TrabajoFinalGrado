.class public Lcom/google/a/a/k;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/a/i;

.field private final b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/google/a/a/i;Ljava/security/SecureRandom;)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/a/a/k;->a:Lcom/google/a/a/i;

    .line 70
    iput-object p2, p0, Lcom/google/a/a/k;->b:Ljava/security/SecureRandom;

    .line 71
    return-void
.end method

.method static a([B)V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 80
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_e
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/k$a;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/k;->a:Lcom/google/a/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/a/a/i;->a(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 137
    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_19

    .line 138
    new-instance v0, Lcom/google/a/a/k$a;

    invoke-direct {v0, p0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_12

    .line 150
    :catch_12
    move-exception v0

    .line 152
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_19
    const/4 v1, 0x4

    const/16 v2, 0x10

    .line 143
    :try_start_1c
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 145
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-static {v1}, Lcom/google/a/a/k;->a([B)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_12

    .line 149
    return-object v1
.end method

.method public a([BLjava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/k$a;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 212
    array-length v0, p1

    if-eq v0, v2, :cond_b

    .line 213
    new-instance v0, Lcom/google/a/a/k$a;

    invoke-direct {v0, p0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;)V

    throw v0

    .line 218
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/a/a/k;->a:Lcom/google/a/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/a/a/i;->a(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 219
    array-length v1, v0

    if-gt v1, v2, :cond_22

    .line 220
    new-instance v0, Lcom/google/a/a/k$a;

    invoke-direct {v0, p0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;)V

    throw v0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_1b} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_1b} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_1b} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_1b} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_1b} :catch_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_1b} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1b} :catch_7a

    .line 238
    :catch_1b
    move-exception v0

    .line 239
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :cond_22
    :try_start_22
    array-length v1, v0

    .line 223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 226
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 227
    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 228
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 231
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 232
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 233
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 237
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_55
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_55} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_55} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_55} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_55} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_55} :catch_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_55} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_55} :catch_7a

    move-result-object v0

    return-object v0

    .line 240
    :catch_57
    move-exception v0

    .line 241
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :catch_5e
    move-exception v0

    .line 243
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :catch_65
    move-exception v0

    .line 245
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :catch_6c
    move-exception v0

    .line 247
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 248
    :catch_73
    move-exception v0

    .line 249
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_7a
    move-exception v0

    .line 252
    new-instance v1, Lcom/google/a/a/k$a;

    invoke-direct {v1, p0, v0}, Lcom/google/a/a/k$a;-><init>(Lcom/google/a/a/k;Ljava/lang/Throwable;)V

    throw v1
.end method
