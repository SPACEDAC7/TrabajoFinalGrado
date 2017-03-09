.class public final Ljackpal/androidterm/util/ShortcutEncryption$Keys;
.super Ljava/lang/Object;
.source "ShortcutEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/util/ShortcutEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation


# instance fields
.field private final encKey:Ljavax/crypto/SecretKey;

.field private final macKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .registers 3
    .param p1, "encKey"    # Ljavax/crypto/SecretKey;
    .param p2, "macKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->encKey:Ljavax/crypto/SecretKey;

    .line 102
    iput-object p2, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->macKey:Ljavax/crypto/SecretKey;

    .line 103
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .registers 6
    .param p0, "encodedKeys"    # Ljava/lang/String;

    .prologue
    .line 130
    # getter for: Ljackpal/androidterm/util/ShortcutEncryption;->COLON:Ljava/util/regex/Pattern;
    invoke-static {}, Ljackpal/androidterm/util/ShortcutEncryption;->access$100()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "keys":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid encoded keys!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_14
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    # invokes: Ljackpal/androidterm/util/ShortcutEncryption;->decodeBase64(Ljava/lang/String;)[B
    invoke-static {v3}, Ljackpal/androidterm/util/ShortcutEncryption;->access$200(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 136
    .local v0, "encKey":Ljavax/crypto/SecretKey;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    # invokes: Ljackpal/androidterm/util/ShortcutEncryption;->decodeBase64(Ljava/lang/String;)[B
    invoke-static {v3}, Ljackpal/androidterm/util/ShortcutEncryption;->access$200(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 137
    .local v2, "macKey":Ljavax/crypto/SecretKey;
    new-instance v3, Ljackpal/androidterm/util/ShortcutEncryption$Keys;

    invoke-direct {v3, v0, v2}, Ljackpal/androidterm/util/ShortcutEncryption$Keys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v3
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->encKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    # invokes: Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/util/ShortcutEncryption;->access$000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->macKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    # invokes: Ljackpal/androidterm/util/ShortcutEncryption;->encodeToBase64([B)Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/util/ShortcutEncryption;->access$000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->encKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Ljackpal/androidterm/util/ShortcutEncryption$Keys;->macKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
