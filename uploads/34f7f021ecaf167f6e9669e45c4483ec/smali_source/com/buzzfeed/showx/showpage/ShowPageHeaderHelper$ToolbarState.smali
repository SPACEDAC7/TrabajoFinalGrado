.class public final enum Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
.super Ljava/lang/Enum;
.source "ShowPageHeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolbarState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

.field public static final enum EXPANDED:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

.field public static final enum HIDDEN:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

.field public static final enum SHOWING:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->HIDDEN:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    new-instance v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    const-string v1, "SHOWING"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->SHOWING:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    new-instance v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->EXPANDED:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    sget-object v1, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->HIDDEN:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->SHOWING:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->EXPANDED:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->$VALUES:[Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->$VALUES:[Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    invoke-virtual {v0}, [Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    return-object v0
.end method
