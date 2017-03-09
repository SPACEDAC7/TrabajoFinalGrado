.class public Lcom/buzzfeed/android/ui/reactions/ReactionsView;
.super Landroid/widget/RelativeLayout;
.source "ReactionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;,
        Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;,
        Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;,
        Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    }
.end annotation


# static fields
.field private static final HATE_ID:I = 0x0

.field private static final LOVE_ID:I = 0x1

.field private static final MAX_NUMBER_SELECTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static badgeTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

.field private final badgeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;

.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field private gridView:Landroid/widget/GridView;

.field private loveHateSelected:Z

.field private mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

.field private mContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field private final mContext:Landroid/content/Context;

.field private numberSelected:I

.field private final resources:Landroid/content/res/Resources;

.field private singleUseCsrfToken:Ljava/lang/String;

.field private slidUpAnimationController:Landroid/view/animation/GridLayoutAnimationController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->singleUseCsrfToken:Ljava/lang/String;

    .line 126
    const v0, 0x7f030092

    invoke-static {p1, v0, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->updateBadgeInfoMap()V

    .line 132
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/buzzfeed/android/database/BFDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/database/BFDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;

    .line 136
    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$1;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setupGrid()V

    .line 144
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->setupAnimations()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/data/BuzzUser;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Landroid/view/View;)V
    .registers 5
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .param p3, "x3"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .param p4, "x4"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->postReactions(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->addBadge(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->submitToServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Landroid/view/View$OnTouchListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->createRippleListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/toolkit/content/PostContent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getBadges(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/database/BFDatabaseManager;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/ui/reactions/ReactionsView;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->showResults(ZLjava/lang/String;)V

    return-void
.end method

.method private addBadge(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;)V
    .registers 6
    .param p1, "buzzId"    # Ljava/lang/String;
    .param p2, "badge"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    .prologue
    .line 342
    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    monitor-enter v2

    .line 343
    :try_start_3
    sget-object v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 344
    .local v0, "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    if-nez v0, :cond_17

    .line 345
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 346
    .restart local v0    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    sget-object v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_17
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v2

    .line 350
    return-void

    .line 349
    .end local v0    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private createRippleListener()Landroid/view/View$OnTouchListener;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 438
    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$6;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$6;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    .line 450
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private displayView()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 256
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v7

    iput-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 257
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v7, :cond_a6

    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    if-eqz v7, :cond_a6

    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v7}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 258
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resetReactionButtons()V

    .line 259
    const v7, 0x7f1101a3

    invoke-virtual {p0, v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 261
    .local v3, "content":Landroid/view/View;
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 262
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/UIUtil;->getNavBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 263
    .local v2, "bottom":I
    const/4 v4, 0x0

    .line 264
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4c

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/UIUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 265
    const/4 v2, 0x0

    .line 266
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenWidth()I

    move-result v4

    .line 268
    :cond_4c
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/buzzfeed/toolkit/util/UIUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v6, v7, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 271
    .end local v2    # "bottom":I
    .end local v4    # "right":I
    :goto_60
    iget-object v6, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v6, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->gridView:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->slidUpAnimationController:Landroid/view/animation/GridLayoutAnimationController;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 274
    iget-object v6, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getBadges(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 275
    .local v1, "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    if-eqz v1, :cond_a7

    .line 277
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    .line 278
    .local v0, "badge":Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    sget-object v7, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    if-eq v0, v7, :cond_90

    sget-object v7, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    if-ne v0, v7, :cond_9f

    .line 279
    :cond_90
    iput-boolean v5, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    goto :goto_7c

    .line 269
    .end local v0    # "badge":Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .end local v1    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    :cond_93
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v3, v6, v7, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_60

    .line 281
    .restart local v0    # "badge":Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .restart local v1    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    :cond_9f
    iget v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    goto :goto_7c

    .end local v0    # "badge":Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .end local v1    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    .end local v3    # "content":Landroid/view/View;
    :cond_a6
    move v5, v6

    .line 288
    :cond_a7
    return v5
.end method

.method private getBadges(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .param p1, "buzzId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    sget-object v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    monitor-enter v1

    .line 337
    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeTracker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    monitor-exit v1

    return-object v0

    .line 338
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private postReactions(Ljava/lang/String;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Landroid/view/View;)V
    .registers 15
    .param p1, "csrfToken"    # Ljava/lang/String;
    .param p2, "badgeInfo"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .param p3, "badge"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 455
    .local v0, "activity":Landroid/app/Activity;
    if-nez p1, :cond_1c

    .line 456
    const v4, 0x7f0900ee

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 457
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 485
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_1b
    :goto_1b
    return-void

    .line 458
    :cond_1c
    const-string v4, "invalid_session"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 459
    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v4, v0}, Lcom/buzzfeed/android/data/BuzzUser;->logout(Landroid/app/Activity;)V

    .line 460
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b

    .line 463
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_34
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->singleUseCsrfToken:Ljava/lang/String;

    .line 464
    iget-object v4, p2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    if-eqz v4, :cond_69

    if-eqz p3, :cond_69

    .line 465
    iget-boolean v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    if-nez v4, :cond_1b

    .line 466
    iput-boolean v6, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    .line 467
    invoke-virtual {p4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;

    invoke-direct {v1, p0, p4, p2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Landroid/view/View;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;)V

    .line 469
    .local v1, "buzzTask":Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;
    new-array v4, v8, [Ljava/lang/Void;

    aput-object v5, v4, v7

    aput-object v5, v4, v6

    aput-object v5, v4, v9

    invoke-virtual {v1, v4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v4, v4, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v5}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/buzzfeed/android/database/BFReactionsData;->putBuzzReaction(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    .line 472
    .end local v1    # "buzzTask":Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;
    :cond_69
    iget-object v4, p2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    if-eqz v4, :cond_1b

    .line 473
    iget v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    if-ge v4, v8, :cond_a5

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a5

    .line 474
    iget v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    .line 475
    invoke-virtual {p4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;

    invoke-direct {v1, p0, p4, p2}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Landroid/view/View;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;)V

    .line 477
    .restart local v1    # "buzzTask":Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;
    new-array v4, v8, [Ljava/lang/Void;

    aput-object v5, v4, v7

    aput-object v5, v4, v6

    aput-object v5, v4, v9

    invoke-virtual {v1, v4}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 478
    iget-object v4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;

    iget-object v4, v4, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

    iget-object v5, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v5}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/buzzfeed/android/database/BFReactionsData;->putBuzzReaction(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    .line 480
    .end local v1    # "buzzTask":Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionVotingTask;
    :cond_a5
    const v4, 0x7f0900ea

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 481
    .restart local v3    # "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1b
.end method

.method private resetReactionButtons()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 353
    iput v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    .line 354
    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    .line 355
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->updateBadgeInfoMap()V

    .line 356
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->adapter:Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->adapter:Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->notifyDataSetChanged()V

    .line 357
    :cond_11
    return-void
.end method

.method private setupAnimations()V
    .registers 5

    .prologue
    const v3, 0x3e4ccccd

    .line 228
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeIn:Landroid/view/animation/Animation;

    .line 229
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$3;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$3;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040015

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeOut:Landroid/view/animation/Animation;

    .line 245
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$4;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$4;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 252
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->slidUpAnimationController:Landroid/view/animation/GridLayoutAnimationController;

    .line 253
    return-void
.end method

.method private setupGrid()V
    .registers 3

    .prologue
    .line 213
    const v0, 0x7f1101a4

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->gridView:Landroid/widget/GridView;

    .line 214
    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->adapter:Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

    .line 215
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->adapter:Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$2;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    return-void
.end method

.method private showResults(ZLjava/lang/String;)V
    .registers 12
    .param p1, "successfulPost"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 627
    .local v6, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_3a

    .line 628
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0901fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0901d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 629
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackReaction(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;)V

    .line 635
    :goto_39
    return-void

    .line 631
    :cond_3a
    const v0, 0x7f0900e9

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "msg":Ljava/lang/String;
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 633
    .local v8, "toast":Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_39
.end method

.method private submitToServer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "loveOrHate"    # Ljava/lang/String;
    .param p2, "badgeId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 547
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ".submitToServer"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "TAG":Ljava/lang/String;
    const/4 v8, 0x0

    .line 551
    .local v8, "successfulPost":Z
    iget-object v10, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->singleUseCsrfToken:Ljava/lang/String;

    if-nez v10, :cond_e0

    .line 552
    iget-object v10, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-static {v10}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfToken(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "csrfToken":Ljava/lang/String;
    :goto_21
    if-eqz v4, :cond_135

    .line 559
    if-eqz p1, :cond_7c

    .line 562
    new-instance v10, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    invoke-direct {v10}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;-><init>()V

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 563
    invoke-virtual {v12}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 564
    invoke-virtual {v10, v4}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->userToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    const-string v12, "love_or_hate"

    .line 565
    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->category(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 566
    invoke-interface {v12}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->uri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 567
    invoke-interface {v12}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 568
    invoke-virtual {v10, p1}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->value(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 569
    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->build()Ljava/util/Map;

    move-result-object v9

    .line 573
    .local v9, "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_5a
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getReactionsService()Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    move-result-object v10

    .line 574
    invoke-virtual {v10, v9}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->postReactionToServer(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v3

    .line 576
    .local v3, "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v7

    .line 577
    .local v7, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/ResponseBody;

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 578
    .local v6, "jsonResponse":Lorg/json/JSONObject;
    const-string/jumbo v10, "success"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7b} :catch_ec

    move-result v8

    .line 586
    .end local v3    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v7    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v9    # "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7c
    :goto_7c
    if-eqz p2, :cond_df

    .line 589
    new-instance v10, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    invoke-direct {v10}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;-><init>()V

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 590
    invoke-virtual {v12}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 591
    invoke-virtual {v10, v4}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->userToken(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    const-string v12, "badge"

    .line 592
    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->category(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 593
    invoke-interface {v12}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->uri(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 594
    invoke-interface {v12}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 595
    invoke-virtual {v10, p2}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->badgeId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;

    move-result-object v10

    .line 596
    invoke-virtual {v10}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ReactionRequestParamBuilder;->build()Ljava/util/Map;

    move-result-object v9

    .line 599
    .restart local v9    # "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_b3
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getReactionsService()Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    move-result-object v10

    .line 600
    invoke-virtual {v10, v9}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->postReactionToServer(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v3

    .line 602
    .restart local v3    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v7

    .line 604
    .restart local v7    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/ResponseBody;

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v6    # "jsonResponse":Lorg/json/JSONObject;
    const-string v10, "badge_results"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 606
    .local v2, "badgeResults":Lorg/json/JSONObject;
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d7} :catch_118

    move-result-object v1

    .line 608
    .local v1, "badgeObject":Lorg/json/JSONObject;
    :try_start_d8
    const-string/jumbo v10, "success"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_de} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_de} :catch_118

    move-result v8

    .line 622
    .end local v1    # "badgeObject":Lorg/json/JSONObject;
    .end local v2    # "badgeResults":Lorg/json/JSONObject;
    .end local v3    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v7    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v9    # "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_df
    :goto_df
    return v8

    .line 554
    .end local v4    # "csrfToken":Ljava/lang/String;
    :cond_e0
    new-instance v4, Ljava/lang/String;

    iget-object v10, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->singleUseCsrfToken:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 555
    .restart local v4    # "csrfToken":Ljava/lang/String;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->singleUseCsrfToken:Ljava/lang/String;

    goto/16 :goto_21

    .line 580
    .restart local v9    # "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_ec
    move-exception v5

    .line 581
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v8, 0x0

    goto/16 :goto_7c

    .line 609
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "badgeObject":Lorg/json/JSONObject;
    .restart local v2    # "badgeResults":Lorg/json/JSONObject;
    .restart local v3    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v6    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v7    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :catch_10a
    move-exception v5

    .line 610
    .local v5, "e":Lorg/json/JSONException;
    :try_start_10b
    const-string/jumbo v10, "success"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_111} :catch_118

    move-result v10

    if-ne v10, v11, :cond_116

    move v8, v11

    :goto_115
    goto :goto_df

    :cond_116
    const/4 v8, 0x0

    goto :goto_115

    .line 612
    .end local v1    # "badgeObject":Lorg/json/JSONObject;
    .end local v2    # "badgeResults":Lorg/json/JSONObject;
    .end local v3    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v7    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :catch_118
    move-exception v5

    .line 613
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v8, 0x0

    goto :goto_df

    .line 618
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "voteParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_135
    const-string v10, "Error: No CSRF Token was returned"

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v8, 0x0

    goto :goto_df
.end method

.method private updateBadgeInfoMap()V
    .registers 14

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 148
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "edition":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 153
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->fail:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090099

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->omg:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->yass:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090197

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->lol:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02012e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->cute:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->win:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->wtf:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->ew:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090196

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_179
    return-void

    .line 163
    :cond_17a
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 165
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->fail:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090099

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->omg:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->yass:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090197

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->lol:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02012d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->ew:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090196

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->wtf:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->cute:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->win:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02013d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_179

    .line 175
    :cond_2e3
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    .line 177
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->fail:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090099

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->omg:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->yass:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090197

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->lol:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02012d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->ew:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090196

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->wtf:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->cute:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->win:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02013f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_179

    .line 187
    :cond_44c
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b5

    .line 188
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->fail:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090099

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->omg:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->yass:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090197

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->lol:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02012c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->ew:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090196

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->wtf:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->cute:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->win:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02013e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_179

    .line 199
    :cond_5b5
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->fail:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090099

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->omg:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->yass:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090197

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->lol:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02012c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->ew:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02011f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090196

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->wtf:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->cute:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f020115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f090098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v7, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->win:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v1, 0x7f02013d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v6, 0x7f09009c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    sget-object v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    const v2, 0x7f020127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f09009e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_179
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mBuzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 304
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    if-eqz v3, :cond_5f

    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    .line 306
    .local v0, "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    iget-object v3, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    if-eqz v3, :cond_62

    iget v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->numberSelected:I

    const/4 v6, 0x3

    if-lt v3, v6, :cond_62

    move-object v3, p1

    .line 307
    check-cast v3, Landroid/widget/ToggleButton;

    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_60

    :goto_46
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0900ea

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 309
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 333
    .end local v0    # "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .end local v1    # "parent":Landroid/view/View;
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_5f
    :goto_5f
    return-void

    .restart local v0    # "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .restart local v1    # "parent":Landroid/view/View;
    :cond_60
    move v4, v5

    .line 307
    goto :goto_46

    .line 312
    .restart local p1    # "view":Landroid/view/View;
    :cond_62
    iget-object v3, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    if-eqz v3, :cond_95

    iget-object v3, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    if-eqz v3, :cond_95

    .line 313
    iget-boolean v3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z

    if-eqz v3, :cond_95

    move-object v3, p1

    .line 314
    check-cast v3, Landroid/widget/ToggleButton;

    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_93

    :goto_79
    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0900e8

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 316
    .restart local v2    # "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5f

    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_93
    move v4, v5

    .line 314
    goto :goto_79

    .line 320
    .restart local p1    # "view":Landroid/view/View;
    :cond_95
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;

    invoke-direct {v4, p0, v0, p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$5;-><init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;Landroid/view/View;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 330
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_5f
.end method

.method public show(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 3
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 293
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->displayView()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    :goto_8
    return-void

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->hide()V

    goto :goto_8
.end method
