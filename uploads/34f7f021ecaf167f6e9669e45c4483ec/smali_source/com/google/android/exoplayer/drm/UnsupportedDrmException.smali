.class public final Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# static fields
.field public static final REASON_INSTANTIATION_ERROR:I = 0x2

.field public static final REASON_UNSUPPORTED_SCHEME:I = 0x1


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;->reason:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput p1, p0, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;->reason:I

    .line 42
    return-void
.end method
