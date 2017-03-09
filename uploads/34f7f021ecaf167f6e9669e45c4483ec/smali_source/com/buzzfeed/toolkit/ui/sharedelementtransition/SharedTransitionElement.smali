.class public Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
.super Ljava/lang/Object;
.source "SharedTransitionElement.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mHeight:I

.field private mKey:Ljava/lang/String;

.field private mLocationOnScreen:[I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mKey:Ljava/lang/String;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    .line 16
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mWidth:I

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mHeight:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[III)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "location"    # [I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mKey:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    .line 24
    iput p3, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mWidth:I

    .line 25
    iput p4, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mHeight:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationOnScreen()[I
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mWidth:I

    return v0
.end method

.method public getXLocationOnScreen()I
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getYLocationOnScreen()I
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;->mLocationOnScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method
