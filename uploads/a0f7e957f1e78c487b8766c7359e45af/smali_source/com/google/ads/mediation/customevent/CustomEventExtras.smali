.class public Lcom/google/ads/mediation/customevent/CustomEventExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/customevent/CustomEventExtras;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object p0
.end method

.method public clearExtras()Lcom/google/ads/mediation/customevent/CustomEventExtras;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    return-object p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
