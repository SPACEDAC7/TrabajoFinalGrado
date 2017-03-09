.class public final Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation


# instance fields
.field public final maxPosition:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_position"
    .end annotation
.end field

.field public final minPosition:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_position"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 3
    .param p1, "maxPosition"    # Ljava/lang/Long;
    .param p2, "minPosition"    # Ljava/lang/Long;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;->maxPosition:Ljava/lang/Long;

    .line 114
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/TwitterCollection$Metadata$Position;->minPosition:Ljava/lang/Long;

    .line 115
    return-void
.end method
