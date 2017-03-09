.class public final enum Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;
.super Ljava/lang/Enum;
.source "VideoCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/ui/holder/VideoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

.field public static final enum ERROR:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

.field public static final enum PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

.field public static final enum PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

.field public static final enum STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->ERROR:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PREPARING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->PLAYING:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->STOPPED:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->ERROR:Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->$VALUES:[Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->$VALUES:[Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    invoke-virtual {v0}, [Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/buffet/ui/holder/VideoCard$State;

    return-object v0
.end method
