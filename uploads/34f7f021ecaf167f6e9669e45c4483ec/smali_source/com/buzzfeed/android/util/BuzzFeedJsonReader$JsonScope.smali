.class final enum Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
.super Ljava/lang/Enum;
.source "BuzzFeedJsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JsonScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum CLOSED:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum DANGLING_NAME:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum EMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum EMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum EMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum NONEMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

.field public static final enum NONEMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1284
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1290
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1296
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1302
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->DANGLING_NAME:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1308
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1313
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1318
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1323
    new-instance v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->CLOSED:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 1278
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->DANGLING_NAME:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->CLOSED:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->$VALUES:[Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

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
    .line 1278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1278
    const-class v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    .registers 1

    .prologue
    .line 1278
    sget-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->$VALUES:[Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    return-object v0
.end method
