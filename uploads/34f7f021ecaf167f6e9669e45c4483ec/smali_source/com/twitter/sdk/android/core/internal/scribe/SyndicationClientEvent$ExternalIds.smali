.class public Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;
.super Ljava/lang/Object;
.source "SyndicationClientEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalIds"
.end annotation


# instance fields
.field public final adId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6"
    .end annotation
.end field

.field final synthetic this$0:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;Ljava/lang/String;)V
    .registers 3
    .param p2, "adId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;->adId:Ljava/lang/String;

    .line 76
    return-void
.end method
