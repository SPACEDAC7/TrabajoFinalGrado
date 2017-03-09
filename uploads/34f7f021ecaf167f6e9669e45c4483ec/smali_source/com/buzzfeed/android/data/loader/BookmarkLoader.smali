.class public Lcom/buzzfeed/android/data/loader/BookmarkLoader;
.super Lcom/buzzfeed/toolkit/content/BaseLoader;
.source "BookmarkLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;)V
    .registers 2
    .param p1, "bookmarkManager"    # Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/BaseLoader;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/data/loader/BookmarkLoader;)Lcom/buzzfeed/toolkit/content/FlowList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/loader/BookmarkLoader;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mLocalFlowList:Lcom/buzzfeed/toolkit/content/FlowList;

    return-object v0
.end method


# virtual methods
.method public hasMorePages()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V
    .registers 7
    .param p1, "refresh"    # Z
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mBookmarkManager:Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;

    invoke-direct {v2, p0, p3}, Lcom/buzzfeed/android/data/loader/BookmarkLoader$1;-><init>(Lcom/buzzfeed/android/data/loader/BookmarkLoader;Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarks(ZLcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/loader/BookmarkLoader;->mRequest:Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 42
    return-void
.end method

.method public shouldShowAds()Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
