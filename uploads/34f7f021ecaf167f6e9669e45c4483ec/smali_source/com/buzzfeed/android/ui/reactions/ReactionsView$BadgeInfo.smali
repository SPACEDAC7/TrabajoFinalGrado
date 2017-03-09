.class Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;
.super Ljava/lang/Object;
.source "ReactionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/reactions/ReactionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeInfo"
.end annotation


# instance fields
.field badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

.field drawableId:Ljava/lang/Integer;

.field loveHateId:Ljava/lang/Integer;

.field name:Ljava/lang/String;

.field submitId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/reactions/ReactionsView;Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 7
    .param p2, "badge"    # Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;
    .param p3, "drawableId"    # Ljava/lang/Integer;
    .param p4, "submitId"    # Ljava/lang/Integer;
    .param p5, "loveHateId"    # Ljava/lang/Integer;
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->this$0:Lcom/buzzfeed/android/ui/reactions/ReactionsView;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->badge:Lcom/buzzfeed/android/ui/reactions/ReactionsView$Badge;

    .line 74
    iput-object p3, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->drawableId:Ljava/lang/Integer;

    .line 75
    iput-object p4, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->submitId:Ljava/lang/Integer;

    .line 76
    iput-object p5, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->loveHateId:Ljava/lang/Integer;

    .line 77
    iput-object p6, p0, Lcom/buzzfeed/android/ui/reactions/ReactionsView$BadgeInfo;->name:Ljava/lang/String;

    .line 78
    return-void
.end method
