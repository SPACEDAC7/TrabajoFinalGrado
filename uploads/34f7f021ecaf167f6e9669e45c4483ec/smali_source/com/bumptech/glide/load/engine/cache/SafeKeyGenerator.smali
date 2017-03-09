.class Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 19
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v4

    .line 20
    :try_start_3
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "safeKey":Ljava/lang/String;
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    .line 22
    if-nez v2, :cond_28

    .line 24
    :try_start_e
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 25
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 26
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_1e} :catch_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1e} :catch_31

    move-result-object v2

    .line 32
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :goto_1f
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v4

    .line 33
    :try_start_22
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v3, p1, v2}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_36

    .line 36
    :cond_28
    return-object v2

    .line 21
    .end local v2    # "safeKey":Ljava/lang/String;
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3

    .line 27
    .restart local v2    # "safeKey":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1f

    .line 29
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_31
    move-exception v0

    .line 30
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1f

    .line 34
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v3
.end method
