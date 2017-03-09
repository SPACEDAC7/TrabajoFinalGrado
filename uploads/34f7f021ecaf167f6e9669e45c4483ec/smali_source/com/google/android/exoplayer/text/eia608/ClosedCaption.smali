.class abstract Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# static fields
.field public static final TYPE_CTRL:I = 0x0

.field public static final TYPE_TEXT:I = 0x1


# instance fields
.field public final type:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;->type:I

    .line 39
    return-void
.end method
