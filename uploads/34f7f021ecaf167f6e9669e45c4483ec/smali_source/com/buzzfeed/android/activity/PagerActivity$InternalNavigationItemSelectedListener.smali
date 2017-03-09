.class Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;
.super Ljava/lang/Object;
.source "PagerActivity.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/PagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalNavigationItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/PagerActivity;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/activity/PagerActivity;)V
    .registers 2

    .prologue
    .line 531
    iput-object p1, p0, Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/activity/PagerActivity;Lcom/buzzfeed/android/activity/PagerActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/activity/PagerActivity;
    .param p2, "x1"    # Lcom/buzzfeed/android/activity/PagerActivity$1;

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;-><init>(Lcom/buzzfeed/android/activity/PagerActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 535
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$InternalNavigationItemSelectedListener;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    # invokes: Lcom/buzzfeed/android/activity/PagerActivity;->handleBottomNavigationAction(I)Z
    invoke-static {v0, v1}, Lcom/buzzfeed/android/activity/PagerActivity;->access$600(Lcom/buzzfeed/android/activity/PagerActivity;I)Z

    move-result v0

    return v0
.end method
