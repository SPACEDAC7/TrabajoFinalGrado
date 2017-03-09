.class Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;
.super Ljava/lang/Object;
.source "StackWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appWidgetId:I

.field private badgeUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private feedName:Ljava/lang/String;

.field private feedType:Ljava/lang/String;

.field private feedUrl:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    .line 55
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->appWidgetId:I

    .line 56
    const-string/jumbo v0, "viewFeedName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->feedName:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "viewFeedUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->feedUrl:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "widgetBadgeImageUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->badgeUrl:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "widgetFeedType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->feedType:Ljava/lang/String;

    .line 60
    const v0, 0x7f0902d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->lang:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->TAG:Ljava/lang/String;

    const-string v1, "Calling WidgetService.getRegularBuzzList()"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->appWidgetId:I

    invoke-static {p1, v0}, Lcom/buzzfeed/android/widget/WidgetService;->getRegularBuzzList(Landroid/content/Context;I)[Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    .line 63
    return-void
.end method

.method private getPreferredImageFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/String;
    .registers 6
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getWideStack()Ljava/util/Stack;

    move-result-object v2

    .line 143
    .local v2, "wideImageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "preferredImageUrl":Ljava/lang/String;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 145
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "preferredImageUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 153
    .restart local v0    # "preferredImageUrl":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object v0

    .line 147
    :cond_14
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v1

    .line 148
    .local v1, "thumbnailStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 149
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "preferredImageUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "preferredImageUrl":Ljava/lang/String;
    goto :goto_13
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    array-length v0, v0

    .line 78
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 13
    .param p1, "position"    # I

    .prologue
    .line 84
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0300ac

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v7, "views":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v8, :cond_e1

    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    array-length v8, v8

    if-ge p1, v8, :cond_e1

    .line 86
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    aget-object v6, v8, p1

    .line 87
    .local v6, "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    if-eqz v6, :cond_e1

    .line 88
    const v8, 0x7f1101d3

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0, v6}, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->getPreferredImageFromPostContent(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "imageUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_95

    .line 94
    :try_start_31
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    .line 95
    invoke-virtual {v8, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 97
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 99
    .local v0, "bitmapRequestBuilder":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v4

    .line 101
    .local v4, "futureBitmapTarget":Lcom/bumptech/glide/request/FutureTarget;, "Lcom/bumptech/glide/request/FutureTarget<Landroid/graphics/Bitmap;>;"
    const v9, 0x7f1101d1

    invoke-interface {v4}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 102
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/FutureTarget;)V

    .line 105
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->badgeUrl:Ljava/lang/String;

    if-eqz v8, :cond_95

    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->badgeUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_95

    .line 107
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    iget-object v9, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->badgeUrl:Ljava/lang/String;

    .line 108
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    .line 109
    invoke-virtual {v8}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 110
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/BitmapTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 112
    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v4

    .line 113
    const v9, 0x7f1101d4

    invoke-interface {v4}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 114
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/FutureTarget;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_95} :catch_e2

    .line 121
    .end local v0    # "bitmapRequestBuilder":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "futureBitmapTarget":Lcom/bumptech/glide/request/FutureTarget;, "Lcom/bumptech/glide/request/FutureTarget<Landroid/graphics/Bitmap;>;"
    :cond_95
    :goto_95
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v2, "extras":Landroid/os/Bundle;
    const-string v8, "appWidgetId"

    iget v9, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->appWidgetId:I

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v8, "viewBuzzId"

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v8, "viewBuzzUri"

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v8, "viewFeedName"

    iget-object v9, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->feedName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v8, "viewFeedUrl"

    iget-object v9, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->feedUrl:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v8, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    const v9, 0x7f0902d6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->lang:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v3, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    const v8, 0x7f1101d0

    invoke-virtual {v7, v8, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 133
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "fillInIntent":Landroid/content/Intent;
    .end local v5    # "imageUrl":Ljava/lang/String;
    .end local v6    # "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    :cond_e1
    return-object v7

    .line 117
    .restart local v5    # "imageUrl":Ljava/lang/String;
    .restart local v6    # "postContent":Lcom/buzzfeed/toolkit/content/PostContent;
    :catch_e2
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while reading widget image for buzz id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_95
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public onDataSetChanged()V
    .registers 11

    .prologue
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".onDataSetChanged"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "TAG":Ljava/lang/String;
    const-string v3, "Calling WidgetService.getRegularBuzzList()"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    iget v6, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->appWidgetId:I

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/buzzfeed/android/widget/WidgetService;->getRegularBuzzList(Landroid/content/Context;IZ)[Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 183
    .local v4, "ts":J
    const/4 v1, 0x0

    .line 184
    .local v1, "count":I
    :goto_2a
    iget-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    array-length v3, v3

    if-nez v3, :cond_5d

    const-wide/16 v6, 0x3a98

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_5d

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    rem-int/lit8 v3, v1, 0x14

    if-nez v3, :cond_45

    const-string v3, "Waiting for buzz feed to load"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_45
    const-wide/16 v6, 0x64

    :try_start_47
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_56

    .line 192
    :goto_4a
    iget-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->context:Landroid/content/Context;

    iget v6, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->appWidgetId:I

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/buzzfeed/android/widget/WidgetService;->getRegularBuzzList(Landroid/content/Context;IZ)[Lcom/buzzfeed/toolkit/content/PostContent;

    move-result-object v3

    iput-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    goto :goto_2a

    .line 189
    :catch_56
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Timeout occurred while loading buzz feed"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 194
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5d
    iget-object v3, p0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;->widgetItems:[Lcom/buzzfeed/toolkit/content/PostContent;

    array-length v3, v3

    if-nez v3, :cond_67

    const-string v3, "Timeout occurred while loading buzz feed"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_67
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method
