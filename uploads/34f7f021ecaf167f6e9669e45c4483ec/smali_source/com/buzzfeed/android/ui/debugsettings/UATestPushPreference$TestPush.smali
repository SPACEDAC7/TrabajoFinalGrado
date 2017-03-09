.class public final enum Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
.super Ljava/lang/Enum;
.source "UATestPushPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestPush"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

.field public static final enum FALLBACK_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

.field public static final enum NATIVE_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

.field public static final enum TASTY_SHOW:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    const-string v1, "NATIVE_BPAGE"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->NATIVE_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    .line 39
    new-instance v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    const-string v1, "FALLBACK_BPAGE"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->FALLBACK_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    .line 40
    new-instance v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    const-string v1, "TASTY_SHOW"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->TASTY_SHOW:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    sget-object v1, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->NATIVE_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->FALLBACK_BPAGE:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->TASTY_SHOW:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->$VALUES:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static stringValues()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    invoke-static {}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->values()[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    move-result-object v2

    .line 44
    .local v2, "testPushes":[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 45
    .local v1, "strVals":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v2

    if-ge v0, v3, :cond_16

    .line 46
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 48
    :cond_16
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->$VALUES:[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    return-object v0
.end method
