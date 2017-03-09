.class public final enum Lcom/buzzfeed/toolkit/constants/BuildFlavor;
.super Ljava/lang/Enum;
.source "BuildFlavor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/constants/BuildFlavor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final enum ALPHA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final enum BETA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final enum DEBUG:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final enum QA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final enum RELEASE:Lcom/buzzfeed/toolkit/constants/BuildFlavor;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->DEBUG:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 8
    new-instance v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->ALPHA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 9
    new-instance v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    const-string v1, "BETA"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->BETA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 10
    new-instance v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    const-string v1, "QA"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->QA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 11
    new-instance v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/toolkit/constants/BuildFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->RELEASE:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    sget-object v1, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->DEBUG:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->ALPHA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->BETA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->QA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->RELEASE:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    aput-object v1, v0, v6

    sput-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->$VALUES:[Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convertBuildTypeToBuildFlavor(Ljava/lang/String;)Lcom/buzzfeed/toolkit/constants/BuildFlavor;
    .registers 3
    .param p0, "buildType"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_50

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_66

    .line 28
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->DEBUG:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    :goto_d
    return-object v0

    .line 16
    :sswitch_e
    const-string v1, "debug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "beta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "qa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "release"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    .line 18
    :pswitch_40
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->DEBUG:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    goto :goto_d

    .line 20
    :pswitch_43
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->ALPHA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    goto :goto_d

    .line 22
    :pswitch_46
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->BETA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    goto :goto_d

    .line 24
    :pswitch_49
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->QA:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    goto :goto_d

    .line 26
    :pswitch_4c
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->RELEASE:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    goto :goto_d

    .line 16
    nop

    :sswitch_data_50
    .sparse-switch
        0xe10 -> :sswitch_2c
        0x2e15f0 -> :sswitch_22
        0x589b15e -> :sswitch_18
        0x5b09653 -> :sswitch_e
        0x41012807 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/constants/BuildFlavor;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/constants/BuildFlavor;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->$VALUES:[Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/constants/BuildFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    return-object v0
.end method
