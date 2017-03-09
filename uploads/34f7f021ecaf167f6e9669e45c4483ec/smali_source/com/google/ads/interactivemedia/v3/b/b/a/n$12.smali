.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$12;
.super Lcom/google/ads/interactivemedia/v3/b/v;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/b/v",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/BitSet;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_f

    .line 95
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 96
    const/4 v0, 0x0

    .line 131
    :goto_e
    return-object v0

    .line 99
    :cond_f
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a()V

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    move v1, v2

    .line 103
    :goto_1c
    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/d/b;->b:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-eq v0, v5, :cond_86

    .line 105
    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/b/a/n$30;->a:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/d/b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8c

    .line 122
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_44
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->m()I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v3

    .line 124
    :goto_4b
    if-eqz v0, :cond_50

    .line 125
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 127
    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 128
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    goto :goto_1c

    :cond_57
    move v0, v2

    .line 107
    goto :goto_4b

    .line 110
    :pswitch_59
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->i()Z

    move-result v0

    goto :goto_4b

    .line 113
    :pswitch_5e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 115
    :try_start_62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_65} :catch_6c

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v3

    goto :goto_4b

    :cond_6a
    move v0, v2

    goto :goto_4b

    .line 116
    :catch_6c
    move-exception v1

    .line 117
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_86
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b()V

    move-object v0, v4

    .line 131
    goto :goto_e

    .line 105
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_59
        :pswitch_5e
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/BitSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p2, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 146
    :goto_6
    return-void

    .line 140
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b()Lcom/google/ads/interactivemedia/v3/b/d/c;

    move v0, v1

    .line 141
    :goto_b
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 142
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .line 143
    :goto_18
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move v2, v1

    .line 142
    goto :goto_18

    .line 145
    :cond_21
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_6
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$12;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$12;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/BitSet;)V

    return-void
.end method
