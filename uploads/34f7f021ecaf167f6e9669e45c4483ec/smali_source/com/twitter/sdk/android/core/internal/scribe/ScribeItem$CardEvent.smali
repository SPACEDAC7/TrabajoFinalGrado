.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
.super Ljava/lang/Object;
.source "ScribeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardEvent"
.end annotation


# instance fields
.field final promotionCardType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotion_card_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "cardType"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v1

    .line 140
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;

    .line 142
    .local v0, "cardEvent":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;
    iget v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    iget v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem$CardEvent;->promotionCardType:I

    return v0
.end method
