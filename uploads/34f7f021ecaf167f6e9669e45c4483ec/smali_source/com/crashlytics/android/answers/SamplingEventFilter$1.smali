.class final Lcom/crashlytics/android/answers/SamplingEventFilter$1;
.super Ljava/util/HashSet;
.source "SamplingEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/SamplingEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SamplingEventFilter$1;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SamplingEventFilter$1;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SamplingEventFilter$1;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SamplingEventFilter$1;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
