.class public final Lcom/google/ads/interactivemedia/v3/a/b;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 113
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    .line 114
    const/16 v0, 0x3fc

    :goto_8
    sput v0, Lcom/google/ads/interactivemedia/v3/a/b;->a:I

    .line 113
    return-void

    .line 114
    :cond_b
    const/16 v0, 0x18fc

    goto :goto_8
.end method
