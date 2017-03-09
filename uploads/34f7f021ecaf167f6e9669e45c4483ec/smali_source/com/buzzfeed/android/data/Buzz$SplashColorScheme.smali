.class public final enum Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;
.super Ljava/lang/Enum;
.source "Buzz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplashColorScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

.field public static final enum DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

.field public static final enum DarkTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

.field public static final enum LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

.field public static final enum LightTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1400
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    const-string v1, "LightTextDarkImage"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 1401
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    const-string v1, "DarkTextLightImage"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 1402
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    const-string v1, "LightTextNoTransparency"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 1403
    new-instance v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    const-string v1, "DarkTextNoTransparency"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    .line 1399
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextDarkImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextLightImage:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->LightTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->DarkTextNoTransparency:Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->$VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

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
    .line 1399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1399
    const-class v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;
    .registers 1

    .prologue
    .line 1399
    sget-object v0, Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->$VALUES:[Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/data/Buzz$SplashColorScheme;

    return-object v0
.end method
