.class Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;
.super Ljava/lang/Object;
.source "ShowPageHeaderHelper.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalOffsetChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;
    .param p2, "x1"    # Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;-><init>(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 8
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    add-int v0, v3, p2

    .line 169
    .local v0, "position":I
    if-nez v0, :cond_12

    .line 170
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    sget-object v3, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->HIDDEN:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    # setter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v2, v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$202(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    .line 183
    :cond_11
    :goto_11
    return-void

    .line 171
    :cond_12
    if-lez v0, :cond_33

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mTopHeaderClearance:I
    invoke-static {v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$300(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)I

    move-result v3

    if-gt v0, v3, :cond_33

    .line 172
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v2}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$200(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v2

    sget-object v3, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->HIDDEN:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-ne v2, v3, :cond_11

    .line 173
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(Z)V
    invoke-static {v2, v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$400(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Z)V

    .line 174
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    sget-object v3, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->SHOWING:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    # setter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v2, v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$202(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    goto :goto_11

    .line 177
    :cond_33
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$200(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v3

    sget-object v4, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->EXPANDED:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-eq v3, v4, :cond_11

    .line 178
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # getter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$200(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    move-result-object v3

    sget-object v4, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->SHOWING:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    if-ne v3, v4, :cond_54

    .line 179
    .local v1, "shouldAnimate":Z
    :goto_47
    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    # invokes: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->setOverlayShown(ZZ)V
    invoke-static {v3, v2, v1}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$500(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;ZZ)V

    .line 180
    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$InternalOffsetChangedListener;->this$0:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;

    sget-object v3, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;->EXPANDED:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    # setter for: Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->mCurrentToolbarState:Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;
    invoke-static {v2, v3}, Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;->access$202(Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper;Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;)Lcom/buzzfeed/showx/showpage/ShowPageHeaderHelper$ToolbarState;

    goto :goto_11

    .end local v1    # "shouldAnimate":Z
    :cond_54
    move v1, v2

    .line 178
    goto :goto_47
.end method
