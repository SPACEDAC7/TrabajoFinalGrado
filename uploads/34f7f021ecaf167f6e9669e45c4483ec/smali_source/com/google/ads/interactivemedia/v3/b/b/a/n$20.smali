.class final Lcom/google/ads/interactivemedia/v3/b/b/a/n$20;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 619
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/d/b;->i:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-ne v0, v1, :cond_e

    .line 620
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->j()V

    .line 621
    const/4 v0, 0x0

    .line 648
    :goto_d
    return-object v0

    .line 623
    :cond_e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 630
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->f()Lcom/google/ads/interactivemedia/v3/b/d/b;

    move-result-object v0

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/d/b;->d:Lcom/google/ads/interactivemedia/v3/b/d/b;

    if-eq v0, v7, :cond_63

    .line 631
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->g()Ljava/lang/String;

    move-result-object v7

    .line 632
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->m()I

    move-result v0

    .line 633
    const-string/jumbo v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    move v1, v0

    .line 634
    goto :goto_16

    .line 635
    :cond_31
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    move v2, v0

    .line 636
    goto :goto_16

    .line 637
    :cond_3b
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    move v3, v0

    .line 638
    goto :goto_16

    .line 639
    :cond_45
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    move v4, v0

    .line 640
    goto :goto_16

    .line 641
    :cond_4f
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    move v5, v0

    .line 642
    goto :goto_16

    .line 643
    :cond_59
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    move v6, v0

    .line 644
    goto :goto_16

    .line 647
    :cond_63
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/a;->d()V

    .line 648
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_d
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    if-nez p2, :cond_6

    .line 654
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->f()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 671
    :goto_5
    return-void

    .line 657
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->d()Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 658
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 659
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 660
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 661
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 662
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 663
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 664
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 665
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 666
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 667
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 668
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 669
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/b/d/c;

    .line 670
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/d/c;->e()Lcom/google/ads/interactivemedia/v3/b/d/c;

    goto :goto_5
.end method

.method public synthetic read(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$20;->a(Lcom/google/ads/interactivemedia/v3/b/d/a;)Ljava/util/Calendar;

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
    .line 609
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/b/b/a/n$20;->a(Lcom/google/ads/interactivemedia/v3/b/d/c;Ljava/util/Calendar;)V

    return-void
.end method
