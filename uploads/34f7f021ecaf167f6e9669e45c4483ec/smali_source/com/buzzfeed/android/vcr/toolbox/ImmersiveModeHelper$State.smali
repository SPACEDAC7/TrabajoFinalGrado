.class final enum Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
.super Ljava/lang/Enum;
.source "ImmersiveModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

.field public static final enum ENTERING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

.field public static final enum EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

.field public static final enum IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

.field public static final enum NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 45
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    const-string v1, "ENTERING_IMMERSIVE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->ENTERING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 51
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    const-string v1, "EXITING_IMMERSIVE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 57
    new-instance v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    const-string v1, "IMMERSIVE_MODE"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->NORMAL:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->ENTERING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->EXITING_IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->IMMERSIVE_MODE:Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->$VALUES:[Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->$VALUES:[Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$State;

    return-object v0
.end method
