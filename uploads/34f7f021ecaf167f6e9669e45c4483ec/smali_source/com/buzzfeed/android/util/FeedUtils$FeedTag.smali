.class public final enum Lcom/buzzfeed/android/util/FeedUtils$FeedTag;
.super Ljava/lang/Enum;
.source "FeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/FeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/util/FeedUtils$FeedTag;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Bookmark:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Home:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum LocalSpiceRack:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum LocalWeaver:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum News:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Quizzes:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Search:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Shows:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Trending:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

.field public static final enum Videos:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Home"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Home:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 31
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Search"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Search:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 32
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "News"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->News:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 33
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Videos"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Videos:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 34
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Bookmark"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Bookmark:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 35
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Trending"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Trending:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 36
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Quizzes"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Quizzes:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 37
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "LocalSpiceRack"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalSpiceRack:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 38
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "Shows"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Shows:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 39
    new-instance v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    const-string v1, "LocalWeaver"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalWeaver:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    sget-object v1, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Home:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Search:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->News:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Videos:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Bookmark:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Trending:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Quizzes:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalSpiceRack:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->Shows:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->LocalWeaver:Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->$VALUES:[Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/util/FeedUtils$FeedTag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/util/FeedUtils$FeedTag;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->$VALUES:[Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/util/FeedUtils$FeedTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/util/FeedUtils$FeedTag;

    return-object v0
.end method
