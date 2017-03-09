.class public Lcom/twitter/sdk/android/core/models/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field public final h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h"
    .end annotation
.end field

.field public final imageType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_type"
    .end annotation
.end field

.field public final w:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "w"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "imageType"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/twitter/sdk/android/core/models/Image;->w:I

    .line 38
    iput p2, p0, Lcom/twitter/sdk/android/core/models/Image;->h:I

    .line 39
    iput-object p3, p0, Lcom/twitter/sdk/android/core/models/Image;->imageType:Ljava/lang/String;

    .line 40
    return-void
.end method
