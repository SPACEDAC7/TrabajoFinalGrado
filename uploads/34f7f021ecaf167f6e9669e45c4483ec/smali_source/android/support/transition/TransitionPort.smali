.class abstract Landroid/support/transition/TransitionPort;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionPort$ArrayListManager;,
        Landroid/support/transition/TransitionPort$AnimationInfo;,
        Landroid/support/transition/TransitionPort$TransitionListenerAdapter;,
        Landroid/support/transition/TransitionPort$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEnded:Z

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSetPort;

.field mPaused:Z

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    .line 48
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    .line 50
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    .line 71
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 79
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mCanRemoveViews:Z

    .line 83
    iput v2, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 86
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 89
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mName:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 100
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 109
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 118
    return-void
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 683
    if-nez p1, :cond_3

    .line 765
    :cond_2
    return-void

    .line 686
    :cond_3
    const/4 v2, 0x0

    .line 687
    .local v2, "isListViewItem":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ListView;

    if-eqz v10, :cond_d

    .line 688
    const/4 v2, 0x1

    .line 690
    :cond_d
    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 694
    :cond_1f
    const/4 v1, -0x1

    .line 695
    .local v1, "id":I
    const-wide/16 v4, -0x1

    .line 696
    .local v4, "itemId":J
    if-nez v2, :cond_64

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 704
    :goto_28
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_38

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 707
    :cond_38
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_44

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 710
    :cond_44
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_73

    if-eqz p1, :cond_73

    .line 711
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 712
    .local v6, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    if-ge v0, v6, :cond_73

    .line 713
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 699
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_64
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 700
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 701
    .local v8, "position":I
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    goto :goto_28

    .line 718
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v8    # "position":I
    :cond_73
    new-instance v9, Landroid/support/transition/TransitionValues;

    invoke-direct {v9}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 719
    .local v9, "values":Landroid/support/transition/TransitionValues;
    iput-object p1, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 720
    if-eqz p2, :cond_d3

    .line 721
    invoke-virtual {p0, v9}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 725
    :goto_7f
    if-eqz p2, :cond_df

    .line 726
    if-nez v2, :cond_d7

    .line 727
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    if-ltz v1, :cond_93

    .line 729
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    :cond_93
    :goto_93
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_2

    .line 746
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a7

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 749
    :cond_a7
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_b3

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 752
    :cond_b3
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_fa

    if-eqz p1, :cond_fa

    .line 753
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 754
    .restart local v6    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c0
    if-ge v0, v6, :cond_fa

    .line 755
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 723
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_d3
    invoke-virtual {p0, v9}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_7f

    .line 732
    :cond_d7
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v10, v4, v5, v9}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_93

    .line 735
    :cond_df
    if-nez v2, :cond_f2

    .line 736
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    if-ltz v1, :cond_93

    .line 738
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_93

    .line 741
    :cond_f2
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v10, v4, v5, v9}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_93

    :cond_fa
    move-object v7, p1

    .line 760
    check-cast v7, Landroid/view/ViewGroup;

    .line 761
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_fe
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 762
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Landroid/support/transition/TransitionPort;->captureHierarchy(Landroid/view/View;Z)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 5
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_c

    .line 489
    if-eqz p3, :cond_d

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 495
    :cond_c
    :goto_c
    return-object p1

    .line 492
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_c
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_8

    .line 539
    if-eqz p3, :cond_9

    .line 540
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 545
    :cond_8
    :goto_8
    return-object p1

    .line 542
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_8
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_8

    .line 514
    if-eqz p3, :cond_9

    .line 515
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 520
    :cond_8
    :goto_8
    return-object p1

    .line 517
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_8
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v1, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 122
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    if-nez v0, :cond_14

    .line 123
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 124
    .restart local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    sget-object v1, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    :cond_14
    return-object v0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 438
    new-instance v0, Landroid/support/transition/TransitionPort$1;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/TransitionPort$1;-><init>(Landroid/support/transition/TransitionPort;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionPort;->animate(Landroid/animation/Animator;)V

    .line 452
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 1052
    :cond_b
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "targetId"    # I

    .prologue
    .line 459
    if-lez p1, :cond_b

    .line 460
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 931
    if-nez p1, :cond_8

    .line 932
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->end()V

    .line 952
    :goto_7
    return-void

    .line 934
    :cond_8
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 935
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 937
    :cond_17
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    .line 938
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 940
    :cond_26
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 941
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 943
    :cond_33
    new-instance v0, Landroid/support/transition/TransitionPort$2;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionPort$2;-><init>(Landroid/support/transition/TransitionPort;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_7
.end method

.method protected cancel()V
    .registers 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1026
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1027
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1028
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1026
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1030
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_18
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 1031
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1033
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1034
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v3, :cond_3f

    .line 1035
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v5, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionCancel(Landroid/support/transition/TransitionPort;)V

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1038
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_3f
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 603
    invoke-virtual {p0, p2}, Landroid/support/transition/TransitionPort;->clearValues(Z)V

    .line 604
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_13

    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ab

    .line 605
    :cond_13
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6c

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6c

    .line 607
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 608
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 609
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_54

    .line 610
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 611
    .local v2, "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 612
    if-eqz p2, :cond_57

    .line 613
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 617
    :goto_42
    if-eqz p2, :cond_5b

    .line 618
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-ltz v1, :cond_54

    .line 620
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_54
    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 615
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_57
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_42

    .line 623
    :cond_5b
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    if-ltz v1, :cond_54

    .line 625
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_54

    .line 631
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_6c
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ae

    .line 632
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_75
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_ae

    .line 633
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 634
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_9c

    .line 635
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 636
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 637
    if-eqz p2, :cond_9f

    .line 638
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 642
    :goto_93
    if-eqz p2, :cond_a3

    .line 643
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_9c
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 640
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_9f
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_93

    .line 645
    :cond_a3
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 651
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_ab
    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionPort;->captureHierarchy(Landroid/view/View;Z)V

    .line 653
    :cond_ae
    return-void
.end method

.method clearValues(Z)V
    .registers 3
    .param p1, "start"    # Z

    .prologue
    .line 661
    if-eqz p1, :cond_18

    .line 662
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 663
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 664
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 670
    :goto_17
    return-void

    .line 666
    :cond_18
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 667
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 668
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_17
.end method

.method public clone()Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 1083
    const/4 v1, 0x0

    .line 1085
    .local v1, "clone":Landroid/support/transition/TransitionPort;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/transition/TransitionPort;

    move-object v1, v0

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    .line 1087
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1088
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;
    :try_end_1e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 1092
    :goto_1e
    return-object v1

    .line 1089
    :catch_1f
    move-exception v2

    goto :goto_1e
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .registers 44
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 185
    .local v9, "endCopy":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    new-instance v10, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    .line 186
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v10, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 187
    .local v10, "endIdCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/TransitionValues;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1f
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_4f

    .line 188
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 189
    .local v16, "id":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    add-int/lit8 v15, v15, 0x1

    goto :goto_1f

    .line 191
    .end local v16    # "id":I
    :cond_4f
    new-instance v12, Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    .line 192
    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v12, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 193
    .local v12, "endItemIdCopy":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/transition/TransitionValues;>;"
    const/4 v15, 0x0

    :goto_61
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_91

    .line 194
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 195
    .local v16, "id":J
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move-wide/from16 v0, v16

    move-object/from16 v2, v36

    invoke-virtual {v12, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 193
    add-int/lit8 v15, v15, 0x1

    goto :goto_61

    .line 199
    .end local v16    # "id":J
    :cond_91
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v33, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v14, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_a9
    :goto_a9
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1c8

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 203
    .local v34, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 204
    .local v8, "end":Landroid/support/transition/TransitionValues;
    const/16 v20, 0x0

    .line 205
    .local v20, "isInListView":Z
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v36, v0

    if-eqz v36, :cond_c6

    .line 206
    const/16 v20, 0x1

    .line 208
    :cond_c6
    if-nez v20, :cond_18b

    .line 209
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 210
    .local v16, "id":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_135

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    .line 211
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 212
    .local v31, "start":Landroid/support/transition/TransitionValues;
    :goto_ee
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_148

    .line 213
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 214
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_113
    :goto_113
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_a9

    .line 229
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a9

    .line 211
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_135
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_ee

    .line 215
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_148
    const/16 v36, -0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-eq v0, v1, :cond_113

    .line 216
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 217
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    const/16 v29, 0x0

    .line 218
    .local v29, "removeView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_16a
    :goto_16a
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_183

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    .line 219
    .local v35, "viewToRemove":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getId()I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v16

    if-ne v0, v1, :cond_16a

    .line 220
    move-object/from16 v29, v35

    goto :goto_16a

    .line 223
    .end local v35    # "viewToRemove":Landroid/view/View;
    :cond_183
    if-eqz v29, :cond_113

    .line 224
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_113

    .line 233
    .end local v16    # "id":I
    .end local v29    # "removeView":Landroid/view/View;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_18b
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 234
    .local v26, "parent":Landroid/widget/ListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v36

    if-eqz v36, :cond_a9

    .line 235
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v27

    .line 236
    .local v27, "position":I
    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    .line 237
    .local v22, "itemId":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 238
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 240
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a9

    .line 245
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v20    # "isInListView":Z
    .end local v22    # "itemId":J
    .end local v26    # "parent":Landroid/widget/ListView;
    .end local v27    # "position":I
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_1c8
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v32

    .line 246
    .local v32, "startItemIdCopySize":I
    const/4 v15, 0x0

    :goto_1d3
    move/from16 v0, v32

    if-ge v15, v0, :cond_223

    .line 247
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 248
    .local v16, "id":J
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_220

    .line 249
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 250
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 251
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 252
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_220
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d3

    .line 257
    .end local v16    # "id":J
    :cond_223
    invoke-virtual {v9}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_22b
    :goto_22b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_299

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 258
    .restart local v34    # "view":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 259
    .local v16, "id":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_22b

    .line 260
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_286

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    .line 261
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 262
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    :goto_26e
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 263
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 264
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22b

    .line 261
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_286
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_26e

    .line 268
    .end local v16    # "id":I
    .end local v34    # "view":Landroid/view/View;
    :cond_299
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 269
    .local v11, "endIdCopySize":I
    const/4 v15, 0x0

    :goto_29e
    if-ge v15, v11, :cond_2dc

    .line 270
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 271
    .restart local v16    # "id":I
    const/16 v36, 0x0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_2d9

    .line 272
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 273
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 274
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_2d9
    add-int/lit8 v15, v15, 0x1

    goto :goto_29e

    .line 278
    .end local v16    # "id":I
    :cond_2dc
    invoke-virtual {v12}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v13

    .line 279
    .local v13, "endItemIdCopySize":I
    const/4 v15, 0x0

    :goto_2e1
    if-ge v15, v13, :cond_30c

    .line 280
    invoke-virtual {v12, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 282
    .local v16, "id":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 283
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 284
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e1

    .line 287
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v16    # "id":J
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_30c
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v30

    .line 288
    .local v30, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    const/4 v15, 0x0

    :goto_311
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_437

    .line 289
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 290
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 292
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    if-nez v31, :cond_32b

    if-eqz v8, :cond_428

    .line 293
    :cond_32b
    if-eqz v31, :cond_335

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_428

    .line 313
    :cond_335
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Landroid/support/transition/TransitionPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v7

    .line 314
    .local v7, "animator":Landroid/animation/Animator;
    if-eqz v7, :cond_428

    .line 317
    const/16 v19, 0x0

    .line 318
    .local v19, "infoValues":Landroid/support/transition/TransitionValues;
    if-eqz v8, :cond_430

    .line 319
    iget-object v0, v8, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    .line 320
    .restart local v34    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v28

    .line 321
    .local v28, "properties":[Ljava/lang/String;
    if-eqz v34, :cond_3fd

    if-eqz v28, :cond_3fd

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    if-lez v36, :cond_3fd

    .line 322
    new-instance v19, Landroid/support/transition/TransitionValues;

    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    invoke-direct/range {v19 .. v19}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 323
    .restart local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 324
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/transition/TransitionValues;

    .line 325
    .local v24, "newValues":Landroid/support/transition/TransitionValues;
    if-eqz v24, :cond_39c

    .line 326
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_377
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_39c

    .line 327
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v36, v0

    aget-object v37, v28, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v38, v0

    aget-object v39, v28, v21

    .line 328
    invoke-interface/range {v38 .. v39}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 327
    invoke-interface/range {v36 .. v38}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v21, v21, 0x1

    goto :goto_377

    .line 331
    .end local v21    # "j":I
    :cond_39c
    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v25

    .line 332
    .local v25, "numExistingAnims":I
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_3a2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_3fd

    .line 333
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 334
    .local v6, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 335
    .local v18, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    move-object/from16 v36, v0

    if-eqz v36, :cond_42c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_42c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_3dc

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_3ec

    :cond_3dc
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_42c

    .line 338
    :cond_3ec
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_42c

    .line 340
    const/4 v7, 0x0

    .line 349
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v21    # "j":I
    .end local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    :cond_3fd
    :goto_3fd
    if-eqz v7, :cond_428

    .line 350
    new-instance v18, Landroid/support/transition/TransitionPort$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v36

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/transition/TransitionPort$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/WindowIdPort;Landroid/support/transition/TransitionValues;)V

    .line 352
    .restart local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v7    # "animator":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_428
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_311

    .line 332
    .restart local v6    # "anim":Landroid/animation/Animator;
    .restart local v7    # "animator":Landroid/animation/Animator;
    .restart local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .restart local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .restart local v21    # "j":I
    .restart local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v25    # "numExistingAnims":I
    .restart local v28    # "properties":[Ljava/lang/String;
    .restart local v34    # "view":Landroid/view/View;
    :cond_42c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3a2

    .line 347
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v21    # "j":I
    .end local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    .end local v34    # "view":Landroid/view/View;
    :cond_430
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    .restart local v34    # "view":Landroid/view/View;
    goto :goto_3fd

    .line 359
    .end local v7    # "animator":Landroid/animation/Animator;
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_437
    return-void
.end method

.method protected end()V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 990
    iget v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 991
    iget v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    if-nez v4, :cond_68

    .line 992
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_31

    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_31

    .line 993
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 994
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 995
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 996
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_31

    .line 997
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionEnd(Landroid/support/transition/TransitionPort;)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1000
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4b

    .line 1001
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 1002
    .local v3, "tv":Landroid/support/transition/TransitionValues;
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1007
    .end local v3    # "tv":Landroid/support/transition/TransitionValues;
    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_65

    .line 1008
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 1009
    .restart local v3    # "tv":Landroid/support/transition/TransitionValues;
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 1014
    .end local v3    # "tv":Landroid/support/transition/TransitionValues;
    :cond_65
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 1016
    .end local v0    # "i":I
    :cond_68
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 480
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 505
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 530
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 474
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    .line 500
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 525
    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 130
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 139
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 768
    iget-object v7, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    if-eqz v7, :cond_b

    .line 769
    iget-object v7, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v7, p1, p2}, Landroid/support/transition/TransitionSetPort;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v5

    .line 787
    :cond_a
    :goto_a
    return-object v5

    .line 771
    :cond_b
    if-eqz p2, :cond_48

    iget-object v6, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 772
    .local v6, "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :goto_f
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 773
    .local v5, "values":Landroid/support/transition/TransitionValues;
    if-nez v5, :cond_a

    .line 774
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 775
    .local v0, "id":I
    if-ltz v0, :cond_27

    .line 776
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 778
    .restart local v5    # "values":Landroid/support/transition/TransitionValues;
    :cond_27
    if-nez v5, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_a

    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 780
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 781
    .local v4, "position":I
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 782
    .local v2, "itemId":J
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .restart local v5    # "values":Landroid/support/transition/TransitionValues;
    goto :goto_a

    .line 771
    .end local v0    # "id":I
    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v2    # "itemId":J
    .end local v4    # "position":I
    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    .end local v6    # "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :cond_48
    iget-object v6, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_f
.end method

.method isValidTarget(Landroid/view/View;J)Z
    .registers 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    long-to-int v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v4

    .line 404
    :goto_14
    return v3

    .line 375
    :cond_15
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_23

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v4

    .line 376
    goto :goto_14

    .line 378
    :cond_23
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_45

    if-eqz p1, :cond_45

    .line 379
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 380
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v1, :cond_45

    .line 381
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 382
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v3, v4

    .line 383
    goto :goto_14

    .line 380
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 387
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v2    # "type":Ljava/lang/Class;
    :cond_45
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_57

    move v3, v5

    .line 388
    goto :goto_14

    .line 390
    :cond_57
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7e

    .line 391
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_60
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 392
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, p2

    if-nez v3, :cond_7b

    move v3, v5

    .line 393
    goto :goto_14

    .line 391
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 397
    .end local v0    # "i":I
    :cond_7e
    if-eqz p1, :cond_9f

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9f

    .line 398
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_89
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9f

    .line 399
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_9c

    move v3, v5

    .line 400
    goto/16 :goto_14

    .line 398
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .end local v0    # "i":I
    :cond_9f
    move v3, v4

    .line 404
    goto/16 :goto_14
.end method

.method public pause(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 799
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    if-nez v8, :cond_5c

    .line 800
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 801
    .local v5, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    .line 802
    .local v4, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v7

    .line 803
    .local v7, "windowId":Landroid/support/transition/WindowIdPort;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_32

    .line 804
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 805
    .local v2, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_2f

    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->windowId:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v7, v8}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 806
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 807
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 803
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 810
    .end local v2    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    :cond_32
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_59

    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_59

    .line 811
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 812
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 813
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 814
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v3, :cond_59

    .line 815
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v8, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionPause(Landroid/support/transition/TransitionPort;)V

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 818
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_59
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 820
    .end local v1    # "i":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    .end local v7    # "windowId":Landroid/support/transition/WindowIdPort;
    :cond_5c
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 862
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v11

    .line 863
    .local v11, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v11}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v6

    .line 864
    .local v6, "numOldAnims":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_9e

    .line 865
    invoke-virtual {v11, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 866
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_94

    .line 867
    invoke-virtual {v11, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 868
    .local v7, "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    if-eqz v7, :cond_94

    iget-object v12, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v12, :cond_94

    iget-object v12, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    .line 869
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    if-ne v12, v13, :cond_94

    .line 870
    const/4 v1, 0x0

    .line 871
    .local v1, "cancel":Z
    iget-object v9, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    .line 872
    .local v9, "oldValues":Landroid/support/transition/TransitionValues;
    iget-object v10, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    .line 873
    .local v10, "oldView":Landroid/view/View;
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    if-eqz v12, :cond_98

    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    .line 874
    invoke-virtual {v12, v10}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/transition/TransitionValues;

    move-object v5, v12

    .line 875
    .local v5, "newValues":Landroid/support/transition/TransitionValues;
    :goto_42
    if-nez v5, :cond_52

    .line 876
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 878
    .restart local v5    # "newValues":Landroid/support/transition/TransitionValues;
    :cond_52
    if-eqz v9, :cond_83

    .line 881
    if-eqz v5, :cond_83

    .line 882
    iget-object v12, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_60
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_83

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 883
    .local v3, "key":Ljava/lang/String;
    iget-object v13, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 884
    .local v8, "oldValue":Ljava/lang/Object;
    iget-object v13, v5, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 885
    .local v4, "newValue":Ljava/lang/Object;
    if-eqz v8, :cond_60

    if-eqz v4, :cond_60

    .line 886
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_60

    .line 887
    const/4 v1, 0x1

    .line 898
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "newValue":Ljava/lang/Object;
    .end local v8    # "oldValue":Ljava/lang/Object;
    :cond_83
    if-eqz v1, :cond_94

    .line 899
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_91

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 903
    :cond_91
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 864
    .end local v1    # "cancel":Z
    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    :cond_94
    :goto_94
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    .line 874
    .restart local v1    # "cancel":Z
    .restart local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .restart local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "oldView":Landroid/view/View;
    :cond_98
    const/4 v5, 0x0

    goto :goto_42

    .line 908
    .restart local v5    # "newValues":Landroid/support/transition/TransitionValues;
    :cond_9a
    invoke-virtual {v11, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 915
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "cancel":Z
    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    :cond_9e
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v13, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-virtual {p0, p1, v12, v13}, Landroid/support/transition/TransitionPort;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 916
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->runAnimators()V

    .line 917
    return-void
.end method

.method public removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1064
    :cond_4
    :goto_4
    return-object p0

    .line 1060
    :cond_5
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "targetId"    # I

    .prologue
    .line 466
    if-lez p1, :cond_b

    .line 467
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 580
    if-eqz p1, :cond_7

    .line 581
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 831
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    if-eqz v8, :cond_60

    .line 832
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    if-nez v8, :cond_5d

    .line 833
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 834
    .local v5, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    .line 835
    .local v4, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v7

    .line 836
    .local v7, "windowId":Landroid/support/transition/WindowIdPort;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_36

    .line 837
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 838
    .local v2, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_33

    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->windowId:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v7, v8}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 839
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 840
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 836
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 843
    .end local v2    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    :cond_36
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5d

    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5d

    .line 844
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 845
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 846
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 847
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v3, :cond_5d

    .line 848
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v8, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionResume(Landroid/support/transition/TransitionPort;)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 852
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    .end local v7    # "windowId":Landroid/support/transition/WindowIdPort;
    :cond_5d
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 854
    :cond_60
    return-void
.end method

.method protected runAnimators()V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->start()V

    .line 419
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 421
    .local v1, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 425
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 426
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->start()V

    .line 427
    invoke-direct {p0, v0, v1}, Landroid/support/transition/TransitionPort;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_d

    .line 430
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_26
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 431
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->end()V

    .line 432
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 1073
    iput-boolean p1, p0, Landroid/support/transition/TransitionPort;->mCanRemoveViews:Z

    .line 1074
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    .line 135
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 153
    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1068
    iput-object p1, p0, Landroid/support/transition/TransitionPort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 1069
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionPort;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    .line 144
    return-object p0
.end method

.method protected start()V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 963
    iget v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    if-nez v3, :cond_2e

    .line 964
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 965
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 966
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 967
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 968
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v1, :cond_2b

    .line 969
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionStart(Landroid/support/transition/TransitionPort;)V

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 972
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 974
    :cond_2e
    iget v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 975
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1078
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionPort;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1101
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_58

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    :cond_58
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7d

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1108
    :cond_7d
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_a0

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    :cond_a0
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b0

    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 1112
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_104

    .line 1114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cd
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_104

    .line 1115
    if-lez v0, :cond_ea

    .line 1116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    :cond_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 1121
    .end local v0    # "i":I
    :cond_104
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_144

    .line 1122
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10d
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_144

    .line 1123
    if-lez v0, :cond_12a

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    :cond_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 1129
    .end local v0    # "i":I
    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    :cond_157
    return-object v1
.end method
