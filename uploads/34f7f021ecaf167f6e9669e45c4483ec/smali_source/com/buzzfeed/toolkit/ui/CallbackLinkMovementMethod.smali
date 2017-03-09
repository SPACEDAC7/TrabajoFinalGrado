.class public Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "CallbackLinkMovementMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;->listener:Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;

    .line 14
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 19
    .local v0, "action":I
    if-ne v0, v8, :cond_4a

    .line 20
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 21
    .local v6, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 23
    .local v7, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v10

    sub-int/2addr v6, v10

    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    sub-int/2addr v7, v10

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    add-int/2addr v6, v10

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    add-int/2addr v7, v10

    .line 29
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 30
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 31
    .local v2, "line":I
    int-to-float v10, v6

    invoke-virtual {v1, v2, v10}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 33
    .local v4, "off":I
    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {p2, v4, v4, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 34
    .local v3, "link":[Landroid/text/style/URLSpan;
    array-length v10, v3

    if-eqz v10, :cond_4a

    .line 35
    aget-object v9, v3, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "url":Ljava/lang/String;
    iget-object v9, p0, Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;->listener:Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;

    invoke-interface {v9, v5}, Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;->onLinkClicked(Ljava/lang/String;)V

    .line 41
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    .end local v4    # "off":I
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_49
    return v8

    :cond_4a
    move v8, v9

    goto :goto_49
.end method
