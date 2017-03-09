.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeAppCallAttachmentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentName:Ljava/lang/String;

.field private final attachmentUrl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final callId:Ljava/util/UUID;

.field private imageUri:Landroid/net/Uri;

.field private isBinaryData:Z

.field private isContentUri:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .registers 8
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    .line 240
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->imageUri:Landroid/net/Uri;

    .line 243
    if-eqz p3, :cond_5e

    .line 244
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 246
    iput-boolean v3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    .line 247
    iput-boolean v3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    .line 259
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_1c
    :goto_1c
    iget-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    if-nez v1, :cond_6b

    const/4 v1, 0x0

    :goto_21
    iput-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 260
    iget-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    iput-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    .line 266
    return-void

    .line 248
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_30
    const-string v1, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 249
    iput-boolean v3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    goto :goto_1c

    .line 250
    :cond_3f
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 251
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for image Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_5e
    if-eqz p2, :cond_63

    .line 254
    iput-boolean v3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    goto :goto_1c

    .line 256
    :cond_63
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot share a photo without a bitmap or Uri set"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_6b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 260
    :cond_74
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/facebook/FacebookContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$1;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isBinaryData:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    return v0
.end method


# virtual methods
.method public getAttachmentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method
