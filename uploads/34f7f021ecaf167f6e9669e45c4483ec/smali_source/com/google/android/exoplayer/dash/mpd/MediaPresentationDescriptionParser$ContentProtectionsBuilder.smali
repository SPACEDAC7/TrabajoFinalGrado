.class public final Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
.super Ljava/lang/Object;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ContentProtectionsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
        ">;"
    }
.end annotation


# instance fields
.field private adaptationSetProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private currentRepresentationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtectionsSet:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .registers 6
    .param p2, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "contentProtections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/ContentProtection;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 832
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    .line 831
    :goto_1e
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 832
    :cond_24
    const/4 v1, 0x0

    goto :goto_1e

    .line 834
    :cond_26
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v0    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method public addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .registers 3
    .param p1, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    .line 756
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 757
    return-void
.end method

.method public addRepresentationProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .registers 3
    .param p1, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    .line 768
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 769
    return-void
.end method

.method public build()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 799
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    .line 807
    :goto_6
    return-object v1

    .line 800
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 801
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_6

    .line 804
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 805
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 807
    :cond_27
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method public compare(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)I
    .registers 5
    .param p1, "first"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .param p2, "second"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 842
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 739
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    check-cast p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->compare(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)I

    move-result v0

    return v0
.end method

.method public endRepresentation()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-boolean v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    if-nez v1, :cond_18

    .line 777
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 778
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 780
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    .line 781
    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    .line 791
    :goto_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    .line 792
    return-void

    .line 784
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_26

    .line 785
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_24

    :goto_20
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_14

    :cond_24
    const/4 v0, 0x0

    goto :goto_20

    .line 787
    :cond_26
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_14
.end method
