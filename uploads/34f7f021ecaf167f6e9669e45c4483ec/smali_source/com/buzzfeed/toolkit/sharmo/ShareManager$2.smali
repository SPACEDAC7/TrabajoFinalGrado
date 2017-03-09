.class synthetic Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/sharmo/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 99
    invoke-static {}, Lcom/buzzfeed/toolkit/util/ShareItemType;->values()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    :try_start_9
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Pinterest:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Email:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Twitter:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->WhatsApp:Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method
