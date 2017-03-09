.class public Lcom/twitter/sdk/android/core/models/Place;
.super Ljava/lang/Object;
.source "Place.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/models/Place$BoundingBox;
    }
.end annotation


# instance fields
.field public final attributes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final boundingBox:Lcom/twitter/sdk/android/core/models/Place$BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding_box"
    .end annotation
.end field

.field public final country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field public final countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field public final fullName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_name"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public final placeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place_type"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/twitter/sdk/android/core/models/Place$BoundingBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p2, "boundingBox"    # Lcom/twitter/sdk/android/core/models/Place$BoundingBox;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p5, "fullName"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "placeType"    # Ljava/lang/String;
    .param p9, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/sdk/android/core/models/Place$BoundingBox;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/Place;->attributes:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Place;->boundingBox:Lcom/twitter/sdk/android/core/models/Place$BoundingBox;

    .line 90
    iput-object p3, p0, Lcom/twitter/sdk/android/core/models/Place;->country:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/twitter/sdk/android/core/models/Place;->countryCode:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/Place;->fullName:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/twitter/sdk/android/core/models/Place;->id:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/twitter/sdk/android/core/models/Place;->name:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/twitter/sdk/android/core/models/Place;->placeType:Ljava/lang/String;

    .line 96
    iput-object p9, p0, Lcom/twitter/sdk/android/core/models/Place;->url:Ljava/lang/String;

    .line 97
    return-void
.end method
