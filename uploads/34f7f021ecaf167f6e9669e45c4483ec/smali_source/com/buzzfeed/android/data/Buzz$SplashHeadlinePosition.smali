.class public final enum Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;
.super Ljava/lang/Enum;
.source "Buzz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplashHeadlinePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

.field public static final enum BottomLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

.field public static final enum BottomRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

.field public static final enum TopLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

.field public static final enum TopRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1393
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    const-string v1, "TopLeft"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->TopLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 1394
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    const-string v1, "TopRight"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->TopRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 1395
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    const-string v1, "BottomLeft"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 1396
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    const-string v1, "BottomRight"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    .line 1392
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->TopLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->TopRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomLeft:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->BottomRight:Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->$VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

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
    .line 1392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1392
    const-class v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;
    .registers 1

    .prologue
    .line 1392
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->$VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/data/Buzz$SplashHeadlinePosition;

    return-object v0
.end method