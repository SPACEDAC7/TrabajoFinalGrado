.class public final enum Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
.super Ljava/lang/Enum;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/BuzzLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

.field public static final enum ACCOUNT_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

.field public static final enum LOGIN_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    const-string v1, "LOGIN_SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->LOGIN_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .line 90
    new-instance v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    const-string v1, "ACCOUNT_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->ACCOUNT_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->LOGIN_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->ACCOUNT_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->$VALUES:[Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->$VALUES:[Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    return-object v0
.end method
