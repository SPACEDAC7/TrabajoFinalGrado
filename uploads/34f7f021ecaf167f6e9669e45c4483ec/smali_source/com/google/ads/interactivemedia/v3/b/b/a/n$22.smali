.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;
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
        "Lcom/google/ads/interactivemedia/v3/b/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/n$30;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 718
    :pswitch_15
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/String;)V

    .line 742
    :goto_1e
    return-object v0

    .line 720
    :pswitch_1f
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/b/f;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Number;)V

    goto :goto_1e

    .line 723
    :pswitch_2e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1e

    .line 725
    :pswitch_3c
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 726
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/n;->a:Lcom/google/ads/interactivemedia/v3/b/n;

    goto :goto_1e

    .line 728
    :pswitch_42
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/i;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/i;-><init>()V

    .line 729
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->a()V

    .line 730
    :goto_4a
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 731
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/i;->a(Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_4a

    .line 733
    :cond_58
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->b()V

    goto :goto_1e

    .line 736
    :pswitch_5c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/o;-><init>()V

    .line 737
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c()V

    .line 738
    :goto_64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 739
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_64

    .line 741
    :cond_76
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->d()V

    goto :goto_1e

    .line 716
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2e
        :pswitch_15
        :pswitch_3c
        :pswitch_42
        :pswitch_5c
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/b/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 754
    :cond_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 783
    :goto_b
    return-void

    .line 755
    :cond_c
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->i()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 756
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->m()Lcom/google/ads/interactivemedia/v3/b/q;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->p()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 758
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_b

    .line 759
    :cond_24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->o()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 760
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Z)Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_b

    .line 762
    :cond_32
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_b

    .line 765
    :cond_3a
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 766
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->b()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 767
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->l()Lcom/google/ads/interactivemedia/v3/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_4b

    .line 770
    :cond_5b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->c()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_b

    .line 772
    :cond_5f
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->h()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 773
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 774
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/l;->k()Lcom/google/ads/interactivemedia/v3/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/o;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 775
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 776
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/b/l;)V

    goto :goto_74

    .line 778
    :cond_93
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->e()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto/16 :goto_b

    .line 781
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Lcom/google/ads/interactivemedia/v3/b/l;

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
    .line 714
    check-cast p2, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$22;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Lcom/google/ads/interactivemedia/v3/b/l;)V

    return-void
.end method
