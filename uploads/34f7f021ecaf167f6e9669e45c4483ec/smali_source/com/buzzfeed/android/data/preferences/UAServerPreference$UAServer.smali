.class public final enum Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
.super Ljava/lang/Enum;
.source "UAServerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/preferences/UAServerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UAServer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

.field public static final enum ALPHA:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

.field public static final enum PRODUCTION:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->PRODUCTION:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    .line 22
    new-instance v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->ALPHA:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    sget-object v1, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->PRODUCTION:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->ALPHA:Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->$VALUES:[Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->$VALUES:[Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/data/preferences/UAServerPreference$UAServer;

    return-object v0
.end method
