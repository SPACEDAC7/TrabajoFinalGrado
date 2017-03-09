.class public final enum Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;
.super Ljava/lang/Enum;
.source "BuffetErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

.field public static final enum BOOKMARK_EMPTY:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

.field public static final enum DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

.field public static final enum SEARCH:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    .line 28
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->SEARCH:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    .line 29
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    const-string v1, "BOOKMARK_EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->BOOKMARK_EMPTY:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    sget-object v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->DEFAULT:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->SEARCH:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->BOOKMARK_EMPTY:Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->$VALUES:[Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->$VALUES:[Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/ui/buffet/view/BuffetErrorView$ErrorType;

    return-object v0
.end method
