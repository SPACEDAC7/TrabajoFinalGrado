.class public final enum Lcom/buzzfeed/android/data/BuzzAd$SponsorType;
.super Ljava/lang/Enum;
.source "BuzzAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/BuzzAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SponsorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/data/BuzzAd$SponsorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

.field public static final enum Ad:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

.field public static final enum Partner:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

.field public static final enum Staff:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    const-string v1, "Ad"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Ad:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    new-instance v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    const-string v1, "Staff"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Staff:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    new-instance v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    const-string v1, "Partner"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Partner:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    sget-object v1, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Ad:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Staff:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->Partner:Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->$VALUES:[Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/data/BuzzAd$SponsorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/data/BuzzAd$SponsorType;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->$VALUES:[Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/data/BuzzAd$SponsorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/data/BuzzAd$SponsorType;

    return-object v0
.end method
