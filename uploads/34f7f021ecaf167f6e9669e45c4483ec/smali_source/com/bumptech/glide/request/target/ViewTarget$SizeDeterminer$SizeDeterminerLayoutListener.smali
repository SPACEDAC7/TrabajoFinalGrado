.class Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminerLayoutListener"
.end annotation


# instance fields
.field private final sizeDeterminerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .registers 3
    .param p1, "sizeDeterminer"    # Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;->sizeDeterminerRef:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .prologue
    .line 287
    const-string v1, "ViewTarget"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 288
    const-string v1, "ViewTarget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnGlobalLayoutListener called listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_21
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;->sizeDeterminerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 291
    .local v0, "sizeDeterminer":Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    if-eqz v0, :cond_2e

    .line 292
    # invokes: Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->checkCurrentDimens()V
    invoke-static {v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    .line 294
    :cond_2e
    const/4 v1, 0x1

    return v1
.end method
