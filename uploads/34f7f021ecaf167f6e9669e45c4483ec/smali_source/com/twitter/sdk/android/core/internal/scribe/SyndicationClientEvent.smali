.class public Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;
.super Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
.source "SyndicationClientEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;
    }
.end annotation


# static fields
.field public static final CLIENT_NAME:Ljava/lang/String; = "tfw"

.field private static final SCRIBE_CATEGORY:Ljava/lang/String; = "tfw_client_event"


# instance fields
.field public final externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;
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
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 51
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
    .line 55
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    const-string/jumbo v2, "tfw_client_event"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V

    .line 56
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;->language:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;

    invoke-direct {v0, p0, p5}, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent;->externalIds:Lcom/twitter/sdk/android/core/internal/scribe/SyndicationClientEvent$ExternalIds;

    .line 58
    return-void
.end method
