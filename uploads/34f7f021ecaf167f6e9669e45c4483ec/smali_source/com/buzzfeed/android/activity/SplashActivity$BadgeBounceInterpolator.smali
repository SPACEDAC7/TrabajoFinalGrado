.class Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeBounceInterpolator"
.end annotation


# instance fields
.field private mFrequency:D

.field private mMaxAmplitude:D

.field final synthetic this$0:Lcom/buzzfeed/android/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/activity/SplashActivity;)V
    .registers 4

    .prologue
    .line 288
    iput-object p1, p0, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;->this$0:Lcom/buzzfeed/android/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const-wide v0, 0x3fc999999999999aL

    iput-wide v0, p0, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;->mMaxAmplitude:D

    .line 290
    const-wide/high16 v0, 0x4000000000000000L

    iput-wide v0, p0, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;->mFrequency:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/activity/SplashActivity;Lcom/buzzfeed/android/activity/SplashActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/activity/SplashActivity;
    .param p2, "x1"    # Lcom/buzzfeed/android/activity/SplashActivity$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;-><init>(Lcom/buzzfeed/android/activity/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10
    .param p1, "time"    # F

    .prologue
    .line 293
    const-wide/high16 v0, -0x4010000000000000L

    const-wide v2, 0x4005bf0a8b145769L

    neg-float v4, p1

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;->mMaxAmplitude:D

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/buzzfeed/android/activity/SplashActivity$BadgeBounceInterpolator;->mFrequency:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
