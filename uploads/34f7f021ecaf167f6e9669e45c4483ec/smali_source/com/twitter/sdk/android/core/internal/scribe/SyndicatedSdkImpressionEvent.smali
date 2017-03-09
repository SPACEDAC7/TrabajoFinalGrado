.class public Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;
.super Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
.source "SyndicatedSdkImpressionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent$ExternalIds;
    }
.end annotation


# static fields
.field public static final CLIENT_NAME:Ljava/lang/String; = "android"

.field private static final SCRIBE_CATEGORY:Ljava/lang/String; = "syndicated_sdk_impression"


# instance fields
.field public final deviceIdCreatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id_created_at"
    .end annotation
.end field

.field public final externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent$ExternalIds;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_ids"
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "eventNamespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .param p2, "timestamp"    # J
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "adId"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .param p1, "eventNamespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .param p2, "timestamp"    # J
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "adId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    const-string/jumbo v2, "syndicated_sdk_impression"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V

    .line 70
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;->language:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent$ExternalIds;

    invoke-direct {v0, p0, p5}, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent$ExternalIds;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;->externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent$ExternalIds;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicatedSdkImpressionEvent;->deviceIdCreatedAt:J

    .line 73
    return-void
.end method
