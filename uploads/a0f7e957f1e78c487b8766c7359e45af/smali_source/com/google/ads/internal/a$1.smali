.class final Lcom/google/ads/internal/a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/ads/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v0, "/open"

    new-instance v1, Lcom/google/ads/z;

    invoke-direct {v1}, Lcom/google/ads/z;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "/canOpenURLs"

    new-instance v1, Lcom/google/ads/p;

    invoke-direct {v1}, Lcom/google/ads/p;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "/close"

    new-instance v1, Lcom/google/ads/r;

    invoke-direct {v1}, Lcom/google/ads/r;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "/customClose"

    new-instance v1, Lcom/google/ads/s;

    invoke-direct {v1}, Lcom/google/ads/s;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/ads/o;

    invoke-direct {v1}, Lcom/google/ads/o;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "/evalInOpener"

    new-instance v1, Lcom/google/ads/t;

    invoke-direct {v1}, Lcom/google/ads/t;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/y;

    invoke-direct {v1}, Lcom/google/ads/y;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "/click"

    new-instance v1, Lcom/google/ads/q;

    invoke-direct {v1}, Lcom/google/ads/q;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "/httpTrack"

    new-instance v1, Lcom/google/ads/u;

    invoke-direct {v1}, Lcom/google/ads/u;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "/touch"

    new-instance v1, Lcom/google/ads/aa;

    invoke-direct {v1}, Lcom/google/ads/aa;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "/video"

    new-instance v1, Lcom/google/ads/ab;

    invoke-direct {v1}, Lcom/google/ads/ab;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "/plusOne"

    new-instance v1, Lcom/google/ads/ai;

    invoke-direct {v1}, Lcom/google/ads/ai;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
