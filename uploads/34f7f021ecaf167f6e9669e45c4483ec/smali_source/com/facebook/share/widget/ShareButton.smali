.class public final Lcom/facebook/share/widget/ShareButton;
.super Lcom/facebook/share/widget/ShareButtonBase;
.source "ShareButton.java"


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/ShareButton;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "fb_share_button_create"

    sget v5, Lcom/facebook/share/widget/ShareButton;->DEFAULT_REQUEST_CODE:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v3, 0x0

    const-string v4, "fb_share_button_create"

    sget v5, Lcom/facebook/share/widget/ShareButton;->DEFAULT_REQUEST_CODE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    const-string v4, "fb_share_button_create"

    sget v5, Lcom/facebook/share/widget/ShareButton;->DEFAULT_REQUEST_CODE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/ShareButton;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/ShareButton;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/ShareButton;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/ShareButton;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getDefaultStyleResource()I
    .registers 2

    .prologue
    .line 58
    sget v0, Lcom/facebook/R$style;->com_facebook_button_share:I

    return v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/share/widget/ShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareButton$1;-><init>(Lcom/facebook/share/widget/ShareButton;)V

    return-object v0
.end method
