.class public Lcom/twitter/sdk/android/core/models/Coordinates;
.super Ljava/lang/Object;
.source "Coordinates.java"


# static fields
.field public static final INDEX_LATITUDE:I = 0x1

.field public static final INDEX_LONGITUDE:I


# instance fields
.field public final coordinates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 6
    .param p1, "longitude"    # Ljava/lang/Double;
    .param p2, "latitude"    # Ljava/lang/Double;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v0, "coords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Coordinates;->coordinates:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/twitter/sdk/android/core/models/Coordinates;->type:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Coordinates;->coordinates:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Coordinates;->coordinates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method
