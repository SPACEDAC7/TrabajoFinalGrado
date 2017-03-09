.class public Lcom/twitter/sdk/android/core/models/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public final dmTextCharacterLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dm_text_character_limit"
    .end annotation
.end field

.field public final nonUsernamePaths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_username_paths"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final photoSizeLimit:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_size_limit"
    .end annotation
.end field

.field public final photoSizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_sizes"
    .end annotation
.end field

.field public final shortUrlLengthHttps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_url_length_https"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;JLcom/twitter/sdk/android/core/models/MediaEntity$Sizes;I)V
    .registers 8
    .param p1, "dmTextCharacterLimit"    # I
    .param p3, "photoSizeLimit"    # J
    .param p5, "photoSizes"    # Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;
    .param p6, "shortUrlLengthHttps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "nonUsernamePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/twitter/sdk/android/core/models/Configuration;->dmTextCharacterLimit:I

    .line 61
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Configuration;->nonUsernamePaths:Ljava/util/List;

    .line 62
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/models/Configuration;->photoSizeLimit:J

    .line 63
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/Configuration;->photoSizes:Lcom/twitter/sdk/android/core/models/MediaEntity$Sizes;

    .line 64
    iput p6, p0, Lcom/twitter/sdk/android/core/models/Configuration;->shortUrlLengthHttps:I

    .line 65
    return-void
.end method
