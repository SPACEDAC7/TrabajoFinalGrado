.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
.super Ljava/lang/Object;
.source "ScribeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent$Transform;
    }
.end annotation


# static fields
.field private static final CURRENT_FORMAT_VERSION:Ljava/lang/String; = "2"


# instance fields
.field final category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_category_"
    .end annotation
.end field

.field final eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_namespace"
    .end annotation
.end field

.field final formatVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format_version"
    .end annotation
.end field

.field final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field final timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;J)V
    .registers 12
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "eventNamespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .param p3, "timestamp"    # J

    .prologue
    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;JLjava/util/List;)V
    .registers 7
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "eventNamespace"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .param p3, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    .line 72
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    .line 73
    const-string v0, "2"

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    .line 74
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 115
    :cond_4
    :goto_4
    return v1

    .line 91
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;

    .line 95
    .local v0, "that":Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 97
    goto :goto_4

    .line 95
    :cond_26
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 99
    :cond_2a
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    .line 101
    goto :goto_4

    .line 99
    :cond_3a
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-nez v3, :cond_38

    .line 103
    :cond_3e
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    :cond_4c
    move v1, v2

    .line 105
    goto :goto_4

    .line 103
    :cond_4e
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-nez v3, :cond_4c

    .line 107
    :cond_52
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    :cond_60
    move v1, v2

    .line 108
    goto :goto_4

    .line 107
    :cond_62
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-nez v3, :cond_60

    .line 111
    :cond_66
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_74
    move v1, v2

    .line 112
    goto :goto_4

    .line 111
    :cond_76
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_74
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;->hashCode()I

    move-result v0

    .line 121
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 122
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 123
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    if-eqz v3, :cond_41

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_41
    add-int v0, v2, v1

    .line 125
    return v0

    .end local v0    # "result":I
    :cond_44
    move v0, v1

    .line 120
    goto :goto_b

    .restart local v0    # "result":I
    :cond_46
    move v2, v1

    .line 121
    goto :goto_17

    :cond_48
    move v2, v1

    .line 122
    goto :goto_25

    :cond_4a
    move v2, v1

    .line 123
    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->eventNamespace:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->formatVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _category_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeEvent;->items:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
