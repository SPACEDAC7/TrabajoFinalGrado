.class public final Lcom/buzzfeed/android/vcr/util/SystemUiHelper;
.super Ljava/lang/Object;
.source "SystemUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;,
        Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;,
        Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;,
        Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_IMMERSIVE_STICKY:I = 0x2

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field public static final LEVEL_HIDE_STATUS_BAR:I = 0x1

.field public static final LEVEL_IMMERSIVE:I = 0x3

.field public static final LEVEL_LEAN_BACK:I = 0x2

.field public static final LEVEL_LOW_PROFILE:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I
    .param p4, "listener"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$HideRunnable;-><init>(Lcom/buzzfeed/android/vcr/util/SystemUiHelper;Lcom/buzzfeed/android/vcr/util/SystemUiHelper$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    .line 123
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 124
    new-instance v0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplKK;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplKK;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    .line 130
    :goto_23
    return-void

    .line 125
    :cond_24
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 126
    new-instance v0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    goto :goto_23

    .line 128
    :cond_32
    new-instance v0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    goto :goto_23
.end method


# virtual methods
.method public cancelHide()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public delayHide(J)V
    .registers 6
    .param p1, "delayMillis"    # J

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->cancelHide()V

    .line 178
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method public detachView()V
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->cancelHide()V

    .line 199
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->detachView()V

    .line 200
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->cancelHide()V

    .line 163
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->hide()V

    .line 164
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->cancelHide()V

    .line 150
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->show()V

    .line 151
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->hide()V

    .line 190
    :goto_d
    return-void

    .line 188
    :cond_e
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper;->mImpl:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->show()V

    goto :goto_d
.end method
