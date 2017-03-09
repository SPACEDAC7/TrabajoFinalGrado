.class synthetic Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$1;
.super Ljava/lang/Object;
.source "SpicerackConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    invoke-static {}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->values()[Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$1;->$SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment:[I

    :try_start_9
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$1;->$SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment:[I

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->PROD:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$1;->$SwitchMap$com$buzzfeed$spicerack$data$constant$SpicerackConfig$Environment:[I

    sget-object v1, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->STAGE:Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/data/constant/SpicerackConfig$Environment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
