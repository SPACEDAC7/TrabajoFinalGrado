.class public final Lcom/google/android/exoplayer/upstream/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# static fields
.field public static final FLAG_ALLOW_GZIP:I = 0x1


# instance fields
.field public final absoluteStreamPosition:J

.field public final flags:I

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final postBody:[B

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    .line 90
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "flags"    # I

    .prologue
    .line 131
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "length"    # J
    .param p6, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "absoluteStreamPosition"    # J
    .param p4, "length"    # J
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "postBody"    # [B
    .param p3, "absoluteStreamPosition"    # J
    .param p5, "position"    # J
    .param p7, "length"    # J
    .param p9, "key"    # Ljava/lang/String;
    .param p10, "flags"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_36

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_38

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-gtz v0, :cond_23

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_3a

    :cond_23
    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 151
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->postBody:[B

    .line 153
    iput-wide p3, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    .line 154
    iput-wide p5, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    .line 155
    iput-wide p7, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    .line 156
    iput-object p9, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    .line 157
    iput p10, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    .line 158
    return-void

    .line 148
    :cond_36
    const/4 v0, 0x0

    goto :goto_a

    .line 149
    :cond_38
    const/4 v0, 0x0

    goto :goto_14

    .line 150
    :cond_3a
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->postBody:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
