.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_MULTIPLE:I = 0x8


# instance fields
.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap",
            "<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    .line 121
    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 16
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    .local v0, "current":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 67
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_14
    return-void

    .line 69
    :cond_15
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private static getBitmapString(I)Ljava/lang/String;
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 98
    .local v0, "size":I
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 35
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v3

    .line 36
    .local v3, "size":I
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    .line 38
    .local v0, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 39
    .local v1, "possibleSize":Ljava/lang/Integer;
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_35

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v5, v3, 0x8

    if-gt v4, v5, :cond_35

    .line 40
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 41
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    .line 45
    :cond_35
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 46
    .local v2, "result":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_45

    .line 47
    invoke-virtual {v2, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 48
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 51
    :cond_45
    return-object v2
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 80
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 81
    .local v0, "size":I
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 25
    .local v2, "size":I
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    .line 27
    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3, v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 29
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    # getter for: Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    .local v0, "current":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    # getter for: Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_34

    const/4 v3, 0x1

    :goto_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void

    .line 30
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "removed":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_15

    .line 58
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 59
    .local v1, "removedSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    .line 61
    .end local v1    # "removedSize":I
    :cond_15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
