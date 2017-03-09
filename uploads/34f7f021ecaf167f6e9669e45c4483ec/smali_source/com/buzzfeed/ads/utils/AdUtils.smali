.class public Lcom/buzzfeed/ads/utils/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field private static final IU_BODY_ADOPS:Ljava/lang/String; = "/6556/bfd.adops_giraffe.bfapp_android"

.field private static final IU_BODY_DEFAULT:Ljava/lang/String; = "/6556/bfd.bfapp_android"

.field private static final IU_BODY_GIRAFFE:Ljava/lang/String; = "/6556/bfd.giraffe_test.bfapp_android"

.field private static final IU_BODY_TEST:Ljava/lang/String; = "/6556/bfd.test.bfapp_android"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildIuBody(I)Ljava/lang/String;
    .registers 2
    .param p0, "testType"    # I

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_10

    .line 100
    const-string v0, "/6556/bfd.bfapp_android"

    .line 102
    .local v0, "iuBody":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 91
    .end local v0    # "iuBody":Ljava/lang/String;
    :pswitch_6
    const-string v0, "/6556/bfd.test.bfapp_android"

    .line 92
    .restart local v0    # "iuBody":Ljava/lang/String;
    goto :goto_5

    .line 94
    .end local v0    # "iuBody":Ljava/lang/String;
    :pswitch_9
    const-string v0, "/6556/bfd.giraffe_test.bfapp_android"

    .line 95
    .restart local v0    # "iuBody":Ljava/lang/String;
    goto :goto_5

    .line 97
    .end local v0    # "iuBody":Ljava/lang/String;
    :pswitch_c
    const-string v0, "/6556/bfd.adops_giraffe.bfapp_android"

    .line 98
    .restart local v0    # "iuBody":Ljava/lang/String;
    goto :goto_5

    .line 89
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static getLanguagePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "edition"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    :cond_10
    :goto_10
    packed-switch v0, :pswitch_data_88

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_30
    return-object v0

    .line 69
    :sswitch_31
    const-string v3, "es-es"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_3b
    const-string v3, "es-mx"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :sswitch_45
    const-string v3, "default"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v2

    goto :goto_10

    .line 71
    :pswitch_4f
    const-string v0, "/sp/"

    goto :goto_30

    .line 73
    :pswitch_52
    const-string v0, "/mx/"

    goto :goto_30

    .line 75
    :pswitch_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 80
    :cond_77
    const-string v0, "/en/"

    goto :goto_30

    .line 69
    :sswitch_data_7a
    .sparse-switch
        0x5c4422d -> :sswitch_31
        0x5c4432a -> :sswitch_3b
        0x5c13d641 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_52
        :pswitch_55
    .end packed-switch
.end method

.method public static hasBreakingBar(Lcom/buzzfeed/toolkit/content/FlowList;)Z
    .registers 5
    .param p0, "items"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 46
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    const/4 v1, 0x1

    .line 50
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static hasFeatured(Lcom/buzzfeed/toolkit/content/FlowList;)Z
    .registers 5
    .param p0, "items"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 31
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    const/4 v1, 0x1

    .line 35
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static hasVideoAd(Lcom/buzzfeed/toolkit/content/FlowList;)Z
    .registers 5
    .param p0, "items"    # Lcom/buzzfeed/toolkit/content/FlowList;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/content/FlowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/FlowItem;

    .line 55
    .local v0, "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    sget-object v2, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/content/BuffetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/content/FlowItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    const/4 v1, 0x1

    .line 59
    .end local v0    # "flowItem":Lcom/buzzfeed/toolkit/content/FlowItem;
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method
