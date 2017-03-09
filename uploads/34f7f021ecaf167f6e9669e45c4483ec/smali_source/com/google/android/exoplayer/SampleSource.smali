.class public interface abstract Lcom/google/android/exoplayer/SampleSource;
.super Ljava/lang/Object;
.source "SampleSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
    }
.end annotation


# static fields
.field public static final END_OF_STREAM:I = -0x1

.field public static final FORMAT_READ:I = -0x4

.field public static final NOTHING_READ:I = -0x2

.field public static final NO_DISCONTINUITY:J = -0x8000000000000000L

.field public static final SAMPLE_READ:I = -0x3


# virtual methods
.method public abstract register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;
.end method
