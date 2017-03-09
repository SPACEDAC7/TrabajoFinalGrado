.class Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPrefetcher"
.end annotation


# instance fields
.field private mDx:I

.field private mDy:I

.field mItemPrefetchArray:[I

.field mPostTimeNanos:J

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 4453
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrefetchPositions()V
    .registers 3

    .prologue
    .line 4489
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v0, :cond_a

    .line 4490
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4492
    :cond_a
    return-void
.end method

.method public lastPrefetchIncludedPosition(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 4477
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v1, :cond_15

    .line 4478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 4479
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_12

    const/4 v1, 0x1

    .line 4482
    .end local v0    # "i":I
    :goto_11
    return v1

    .line 4478
    .restart local v0    # "i":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4482
    .end local v0    # "i":I
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public postFromTraversal(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4465
    # getter for: Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4468
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 4469
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDx:I

    .line 4470
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDy:I

    .line 4471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    .line 4472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 4474
    :cond_2b
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 4497
    :try_start_2
    const-string v8, "RV Prefetch"

    invoke-static {v8}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4498
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_30

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v8, :cond_30

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4500
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4501
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_30

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 4502
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_a8

    move-result v8

    if-eqz v8, :cond_34

    .line 4531
    :cond_30
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4533
    :goto_33
    return-void

    .line 4506
    :cond_34
    :try_start_34
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v6

    .line 4510
    .local v6, "prefetchCount":I
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 4511
    .local v0, "lastFrameVsyncNanos":J
    cmp-long v8, v0, v12

    if-eqz v8, :cond_52

    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_a8

    cmp-long v8, v8, v12

    if-nez v8, :cond_56

    .line 4531
    :cond_52
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_33

    .line 4516
    :cond_56
    :try_start_56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 4517
    .local v4, "nowNanos":J
    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    add-long v2, v0, v8

    .line 4518
    .local v2, "nextFrameNanos":J
    iget-wide v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    sub-long v8, v4, v8

    sget-wide v10, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_72

    sub-long v8, v2, v4

    .line 4519
    # getter for: Landroid/support/v7/widget/RecyclerView;->MIN_PREFETCH_TIME_NANOS:J
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$500()J
    :try_end_6d
    .catchall {:try_start_56 .. :try_end_6d} :catchall_a8

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_76

    .line 4531
    :cond_72
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_33

    .line 4524
    :cond_76
    :try_start_76
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v8, :cond_7f

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v8, v8

    if-ge v8, v6, :cond_83

    .line 4525
    :cond_7f
    new-array v8, v6, [I

    iput-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    .line 4527
    :cond_83
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4528
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDx:I

    iget v10, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDy:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->gatherPrefetchIndices(IILandroid/support/v7/widget/RecyclerView$State;[I)I

    move-result v7

    .line 4529
    .local v7, "viewCount":I
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->prefetch([II)V
    :try_end_a4
    .catchall {:try_start_76 .. :try_end_a4} :catchall_a8

    .line 4531
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_33

    .end local v0    # "lastFrameVsyncNanos":J
    .end local v2    # "nextFrameNanos":J
    .end local v4    # "nowNanos":J
    .end local v6    # "prefetchCount":I
    .end local v7    # "viewCount":I
    :catchall_a8
    move-exception v8

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v8
.end method
