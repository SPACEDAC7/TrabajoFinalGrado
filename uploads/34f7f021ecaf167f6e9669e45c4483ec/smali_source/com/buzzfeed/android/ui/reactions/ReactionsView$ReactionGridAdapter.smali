.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReactionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactionGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)V
    .registers 5

    .prologue
    .line 360
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .line 361
    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$200(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003d

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$300(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 363
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$300(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 426
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$300(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->badgeInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$300(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getItem(I)Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 369
    .local v8, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_10d

    .line 370
    const v14, 0x7f03003d

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 371
    .local v12, "view":Landroid/view/View;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_70

    move-object/from16 v5, p3

    .line 372
    check-cast v5, Landroid/widget/GridView;

    .line 373
    .local v5, "grid":Landroid/widget/GridView;
    invoke-virtual {v5}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v10

    .line 374
    .local v10, "size":I
    move v13, v10

    .line 375
    .local v13, "width":I
    move v6, v10

    .line 376
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/buzzfeed/toolkit/util/UIUtil;->getActionBarHeight(Landroid/content/Context;)I

    move-result v15

    sub-int v1, v14, v15

    .line 377
    .local v1, "availableHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/buzzfeed/toolkit/util/UIUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_62

    .line 378
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/buzzfeed/toolkit/util/UIUtil;->getNavBarHeight(Landroid/content/Context;)I

    move-result v14

    sub-int/2addr v1, v14

    .line 380
    :cond_62
    mul-int/lit8 v14, v6, 0x3

    if-le v14, v1, :cond_68

    .line 381
    div-int/lit8 v6, v1, 0x3

    .line 383
    :cond_68
    new-instance v14, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v14, v13, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .end local v1    # "availableHeight":I
    .end local v5    # "grid":Landroid/widget/GridView;
    .end local v6    # "height":I
    .end local v10    # "size":I
    .end local v13    # "width":I
    :cond_70
    :goto_70
    const v14, 0x7f1100dc

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 390
    .local v4, "container":Landroid/view/ViewGroup;
    const v14, 0x7f1100dd

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ToggleButton;

    .line 391
    .local v11, "tb":Landroid/widget/ToggleButton;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 393
    invoke-virtual/range {p0 .. p1}, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->getItem(I)Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;

    move-result-object v2

    .line 394
    .local v2, "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    if-eqz v2, :cond_10c

    .line 396
    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->drawableId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->createRippleListener()Landroid/view/View$OnTouchListener;
    invoke-static {v14}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$400(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Landroid/view/View$OnTouchListener;

    move-result-object v9

    .line 398
    .local v9, "rippleListener":Landroid/view/View$OnTouchListener;
    if-eqz v9, :cond_a2

    .line 399
    invoke-virtual {v11, v9}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    :cond_a2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {v12, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {v15}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$500(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->getBadges(Ljava/lang/String;)Ljava/util/HashSet;
    invoke-static {v14, v15}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$600(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 405
    .local v3, "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    if-eqz v3, :cond_11a

    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11a

    .line 406
    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    if-eqz v14, :cond_111

    iget-object v7, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    .line 407
    .local v7, "id":Ljava/lang/Integer;
    :goto_d0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->dbm:Lcom/buzzfeed/android/database/BFDatabaseManager;
    invoke-static {v14}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$700(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/android/database/BFDatabaseManager;

    move-result-object v14

    iget-object v14, v14, Lcom/buzzfeed/android/database/BFDatabaseManager;->bfReactionsData:Lcom/buzzfeed/android/database/BFReactionsData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    # getter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->mContent:Lcom/buzzfeed/toolkit/content/PostContent;
    invoke-static {v15}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$500(Lcom/buzzfeed/android/ui/reactions/ReactionsView;)Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/buzzfeed/android/database/BFReactionsData;->isReactionSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10c

    .line 408
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 409
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 410
    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    sget-object v15, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->love:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    if-eq v14, v15, :cond_104

    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    sget-object v15, Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;->hate:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    if-ne v14, v15, :cond_10c

    .line 411
    :cond_104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$ReactionGridAdapter;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    const/4 v15, 0x1

    # setter for: Lcom/buzzfeed/android/ui/reactions/ReactionsView;->loveHateSelected:Z
    invoke-static {v14, v15}, Lcom/buzzfeed/android/ui/reactions/ReactionsView;->access$802(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Z)Z

    .line 420
    .end local v3    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    .end local v7    # "id":Ljava/lang/Integer;
    .end local v9    # "rippleListener":Landroid/view/View$OnTouchListener;
    :cond_10c
    :goto_10c
    return-object v12

    .line 386
    .end local v2    # "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .end local v4    # "container":Landroid/view/ViewGroup;
    .end local v11    # "tb":Landroid/widget/ToggleButton;
    .end local v12    # "view":Landroid/view/View;
    :cond_10d
    move-object/from16 v12, p2

    .restart local v12    # "view":Landroid/view/View;
    goto/16 :goto_70

    .line 406
    .restart local v2    # "badgeInfo":Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
    .restart local v3    # "badgeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;>;"
    .restart local v4    # "container":Landroid/view/ViewGroup;
    .restart local v9    # "rippleListener":Landroid/view/View$OnTouchListener;
    .restart local v11    # "tb":Landroid/widget/ToggleButton;
    :cond_111
    iget-object v14, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    if-eqz v14, :cond_118

    iget-object v7, v2, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    goto :goto_d0

    :cond_118
    const/4 v7, 0x0

    goto :goto_d0

    .line 415
    :cond_11a
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 416
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 417
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    goto :goto_10c
.end method
