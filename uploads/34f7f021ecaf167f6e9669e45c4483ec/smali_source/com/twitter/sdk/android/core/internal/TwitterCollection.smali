.class public Lcom/twitter/sdk/android/core/internal/TwitterCollection;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/TwitterCollection$TimelineItem;,
        Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;,
        Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;
    }
.end annotation


# instance fields
.field public final contents:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objects"
    .end annotation
.end field

.field public final metadata:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;)V
    .registers 3
    .param p1, "contents"    # Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;
    .param p2, "metadata"    # Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Content;

    .line 35
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;

    .line 36
    return-void
.end method
