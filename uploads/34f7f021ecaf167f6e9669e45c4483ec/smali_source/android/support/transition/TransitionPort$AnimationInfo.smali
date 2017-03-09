.class Landroid/support/transition/TransitionPort$AnimationInfo;
.super Ljava/lang/Object;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field values:Landroid/support/transition/TransitionValues;

.field view:Landroid/view/View;

.field windowId:Landroid/support/transition/WindowIdPort;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/WindowIdPort;Landroid/support/transition/TransitionValues;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "windowId"    # Landroid/support/transition/WindowIdPort;
    .param p4, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput-object p1, p0, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    .line 1239
    iput-object p2, p0, Landroid/support/transition/TransitionPort$AnimationInfo;->name:Ljava/lang/String;

    .line 1240
    iput-object p4, p0, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    .line 1241
    iput-object p3, p0, Landroid/support/transition/TransitionPort$AnimationInfo;->windowId:Landroid/support/transition/WindowIdPort;

    .line 1242
    return-void
.end method
