.class synthetic Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;
.super Ljava/lang/Object;
.source "BuffetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Lcom/buzzfeed/toolkit/content/BuffetType;->values()[Lcom/buzzfeed/toolkit/content/BuffetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    :try_start_9
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_DEFAULT:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_104

    :goto_14
    :try_start_14
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_FIXED_HEIGHT:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_101

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_SMALL:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_fe

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_fb

    :goto_35
    :try_start_35
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_FEED_TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_f8

    :goto_40
    :try_start_40
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_f5

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->VIDEO_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_f2

    :goto_56
    :try_start_56
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->EDITORIAL_AD:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_ef

    :goto_62
    :try_start_62
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_ed

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_eb

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->TRENDING_QUIZ:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_e9

    :goto_86
    :try_start_86
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BAR:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_e7

    :goto_92
    :try_start_92
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->SHOW:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_e5

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->PACKAGE:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_e3

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_e1

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_df

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->BREAKING_BULLETED_LIST:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_dd

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/buzzfeed/buffet/ui/adapter/BuffetAdapter$1;->$SwitchMap$com$buzzfeed$toolkit$content$BuffetType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/content/BuffetType;->FEATURED_PROXIMA_NOVA_TITLE:Lcom/buzzfeed/toolkit/content/BuffetType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/content/BuffetType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_db

    :goto_da
    return-void

    :catch_db
    move-exception v0

    goto :goto_da

    :catch_dd
    move-exception v0

    goto :goto_ce

    :catch_df
    move-exception v0

    goto :goto_c2

    :catch_e1
    move-exception v0

    goto :goto_b6

    :catch_e3
    move-exception v0

    goto :goto_aa

    :catch_e5
    move-exception v0

    goto :goto_9e

    :catch_e7
    move-exception v0

    goto :goto_92

    :catch_e9
    move-exception v0

    goto :goto_86

    :catch_eb
    move-exception v0

    goto :goto_7a

    :catch_ed
    move-exception v0

    goto :goto_6e

    :catch_ef
    move-exception v0

    goto/16 :goto_62

    :catch_f2
    move-exception v0

    goto/16 :goto_56

    :catch_f5
    move-exception v0

    goto/16 :goto_4b

    :catch_f8
    move-exception v0

    goto/16 :goto_40

    :catch_fb
    move-exception v0

    goto/16 :goto_35

    :catch_fe
    move-exception v0

    goto/16 :goto_2a

    :catch_101
    move-exception v0

    goto/16 :goto_1f

    :catch_104
    move-exception v0

    goto/16 :goto_14
.end method
