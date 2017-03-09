.class public Lcom/buzzfeed/android/data/Feed;
.super Ljava/lang/Object;
.source "Feed.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/Feed$Builder;
    }
.end annotation


# static fields
.field private static final FEED_URL_PATH_HOME:Ljava/lang/String; = "home"

.field private static final serialVersionUID:J = 0xa6e0e125320fe49L


# instance fields
.field private final mAdTag:Ljava/lang/String;

.field private final mIsBadgeFeed:Z

.field private final mLocalizedNameResId:I

.field private final mName:Ljava/lang/String;

.field private final mSearchParams:Ljava/util/Map;
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

.field private final mTag:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mWidgetImage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/data/Feed$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/buzzfeed/android/data/Feed$Builder;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$100(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    .line 95
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$200(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    .line 96
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$300(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    .line 97
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mLocalizedNameResId:I
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$400(Lcom/buzzfeed/android/data/Feed$Builder;)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    .line 98
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mAdTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$500(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mAdTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$500(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    .line 99
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mWidgetImage:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$600(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    .line 100
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mSearchParams:Ljava/util/Map;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$700(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    .line 101
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mIsBadgeFeed:Z
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$800(Lcom/buzzfeed/android/data/Feed$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    .line 102
    return-void

    .line 98
    :cond_3e
    # getter for: Lcom/buzzfeed/android/data/Feed$Builder;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/buzzfeed/android/data/Feed$Builder;->access$100(Lcom/buzzfeed/android/data/Feed$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/data/Feed$Builder;Lcom/buzzfeed/android/data/Feed$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/data/Feed$Builder;
    .param p2, "x1"    # Lcom/buzzfeed/android/data/Feed$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/Feed;-><init>(Lcom/buzzfeed/android/data/Feed$Builder;)V

    return-void
.end method

.method public static createDefault()Lcom/buzzfeed/android/data/Feed;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    const-string v1, "home"

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "home"

    .line 106
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/buzzfeed/android/data/Feed;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Lcom/buzzfeed/android/data/Feed$Builder;

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget v1, p0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    .line 154
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withLocalizedNameResourceId(I)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    .line 155
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withBadgeEnabled(Z)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withAdTag(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withWidgetImageUri(Ljava/lang/String;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    .line 158
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/Feed$Builder;->withSearchParams(Ljava/util/Map;)Lcom/buzzfeed/android/data/Feed$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/Feed$Builder;->build()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/Feed;->clone()Lcom/buzzfeed/android/data/Feed;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-ne p0, p1, :cond_5

    .line 181
    :cond_4
    :goto_4
    return v1

    .line 170
    :cond_5
    instance-of v3, p1, Lcom/buzzfeed/android/data/Feed;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 172
    check-cast v0, Lcom/buzzfeed/android/data/Feed;

    .line 174
    .local v0, "feed":Lcom/buzzfeed/android/data/Feed;
    iget-boolean v3, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    iget-boolean v4, v0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    if-ne v3, v4, :cond_56

    iget v3, p0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    iget v4, v0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    .line 176
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    .line 177
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    .line 178
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    .line 179
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    .line 180
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    .line 181
    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_56
    move v1, v2

    goto :goto_4
.end method

.method public getAdTag()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedNameResId()I
    .registers 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchParams()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetImage()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 164
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/buzzfeed/android/data/Feed;->mLocalizedNameResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/ObjectUtil;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBadge()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feed {mSearchParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mSearchParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidgetImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mWidgetImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/Feed;->mAdTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/buzzfeed/android/data/Feed;->mIsBadgeFeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
