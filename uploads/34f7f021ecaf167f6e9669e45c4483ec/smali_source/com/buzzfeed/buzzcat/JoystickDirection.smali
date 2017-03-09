.class public final enum Lcom/buzzfeed/buzzcat/JoystickDirection;
.super Ljava/lang/Enum;
.source "JoystickDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/buzzcat/JoystickDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/buzzcat/JoystickDirection;

.field public static final enum Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

.field public static final enum Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

.field public static final enum Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

.field public static final enum Up:Lcom/buzzfeed/buzzcat/JoystickDirection;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    const-string v1, "Up"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/buzzcat/JoystickDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 5
    new-instance v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    const-string v1, "Down"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/buzzcat/JoystickDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 6
    new-instance v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/buzzcat/JoystickDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 7
    new-instance v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/buzzcat/JoystickDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/buzzfeed/buzzcat/JoystickDirection;

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->$VALUES:[Lcom/buzzfeed/buzzcat/JoystickDirection;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/buzzcat/JoystickDirection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/buzzcat/JoystickDirection;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/buzzcat/JoystickDirection;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->$VALUES:[Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-virtual {v0}, [Lcom/buzzfeed/buzzcat/JoystickDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/buzzcat/JoystickDirection;

    return-object v0
.end method
