.class public Lcom/buzzfeed/android/data/Feed$Builder;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/Feed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdTag:Ljava/lang/String;

.field private mIsBadgeFeed:Z

.field private mLocalizedNameResId:I

.field private mName:Ljava/lang/String;

.field private mSearchParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mWidgetImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mSearchParams:Ljava/util/Map;

    .line 50
    const-string v0, "Feed tag must not be null"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mTag:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/data/Feed$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mLocalizedNameResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mAdTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mWidgetImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mSearchParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/data/Feed$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mIsBadgeFeed:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/buzzfeed/android/data/Feed;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Lcom/buzzfeed/android/data/Feed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/data/Feed;-><init>(Lcom/buzzfeed/android/data/Feed$Builder;Lcom/buzzfeed/android/data/Feed$1;)V

    return-object v0
.end method

.method public withAdTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "adTag"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mAdTag:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public withBadgeEnabled(Z)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mIsBadgeFeed:Z

    .line 85
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mName:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 64
    iput p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mLocalizedNameResId:I

    .line 65
    return-object p0
.end method

.method public withSearchParams(Ljava/util/Map;)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/android/data/Feed$Builder;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "searchParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mSearchParams:Ljava/util/Map;

    .line 80
    return-object p0
.end method

.method public withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mUri:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;
    .registers 2
    .param p1, "widgetImageUri"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/buzzfeed/android/data/Feed$Builder;->mWidgetImage:Ljava/lang/String;

    .line 75
    return-object p0
.end method
