.class public Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "ContributionSubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;,
        Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;
    }
.end annotation


# static fields
.field private static final CAMERA_PERMISSION_CODE:I = 0x65

.field private static final CAMERA_PIC_REQUEST:I = 0x2

.field public static final COMMENT_EXTRA_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field private static final FULL_PATH_KEY:Ljava/lang/String; = "fullPath"

.field private static final GALLERY_IMAGE_SELECT:I = 0x1

.field private static final GALLERY_PERMISSION_CODE:I = 0x64

.field private static final IMAGE_CONTRIBUTION_FILE_DATA:Ljava/lang/String; = "Filedata"

.field private static final IMAGE_CONTRIBUTION_TYPE:Ljava/lang/String; = "image"

.field private static final JSON_PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final JSON_PARAM_IMAGE:Ljava/lang/String; = "image"

.field private static final JSON_PARAM_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_CONTENT:Ljava/lang/String; = "KEY_CONTENT"

.field public static final KEY_CONTRIBUTE_RESULT:Ljava/lang/String; = "contributeResult"

.field public static final KEY_CONTRIBUTION_JSON_UPLOADED:Ljava/lang/String; = "uploaded"

.field private static final PARTIAL_TEXT_KEY:Ljava/lang/String; = "partialText"

.field private static final PHOTO_URI_KEY:Ljava/lang/String; = "photoUri"

.field private static final REQUEST_CODE_KEY:Ljava/lang/String; = "requestCode"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_PATH_KEY:Ljava/lang/String; = "uploadPath"


# instance fields
.field private buzzFeedDir:Ljava/lang/String;

.field private buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

.field private content:Lcom/buzzfeed/toolkit/content/PostContent;

.field private errorMsg:Ljava/lang/String;

.field private fadeInOverlay:Landroid/view/animation/Animation;

.field private fadeOutOverlay:Landroid/view/animation/Animation;

.field private fullImagePath:Ljava/lang/String;

.field private hasImage:Z

.field private mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

.field private mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

.field private menuImage:Landroid/view/MenuItem;

.field private menuImageDelete:Landroid/view/MenuItem;

.field private menuSend:Landroid/view/MenuItem;

.field private overlay:Landroid/view/View;

.field private parentComment:Lcom/buzzfeed/android/data/comment/Comment;

.field private parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

.field private parentCommentImageResponse:Landroid/widget/ImageView;

.field private parentCommentTextResponse:Landroid/widget/TextView;

.field private parentCommentTimeStamp:Landroid/widget/TextView;

.field private parentCommentUserName:Landroid/widget/TextView;

.field private partialText:Ljava/lang/String;

.field private photoUri:Ljava/lang/String;

.field private requestCode:I

.field private responseImageView:Landroid/widget/ImageView;

.field private responseTextView:Landroid/widget/EditText;

.field private successfulPost:Z

.field private thumbnail:Landroid/graphics/Bitmap;

.field private uploadImagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-class v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    .line 108
    iput-boolean v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/buzzfeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzFeedDir:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/view/MenuItem;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuSend:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Lcom/buzzfeed/toolkit/content/PostContent;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchGallery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleOverlay(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->showResults()V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Lcom/buzzfeed/android/data/BuzzUser;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Lcom/buzzfeed/android/data/comment/BuzzFeedComment;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
    .param p1, "x1"    # Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    return-object p1
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->makeCommentFromData(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    return v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->postImage()V

    return-void
.end method

.method private bindAvatar(Ljava/lang/String;)V
    .registers 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo v0, "static/images/public/defaults/user_large.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 297
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 301
    :goto_2a
    return-void

    .line 299
    :cond_2b
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setBackgroundResource(I)V

    goto :goto_2a
.end method

.method private bindImageResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "pathOnly"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v2

    iget-object v2, v2, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_STATIC_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "imageUrl":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 307
    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching user avatar from URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentImageResponse:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentImageResponse:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 310
    :cond_52
    return-void
.end method

.method private bindTextResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p1, :cond_7

    .line 314
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTextResponse:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_7
    return-void
.end method

.method private bindTimeStamp(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 319
    if-eqz p1, :cond_7

    .line 320
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTimeStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_7
    return-void
.end method

.method private bindUserNameView(Ljava/lang/String;)V
    .registers 3
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

.method private clearImage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 478
    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    .line 480
    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    .line 483
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 484
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    return-void
.end method

.method private getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;
    .registers 2

    .prologue
    .line 782
    invoke-static {}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    move-result-object v0

    return-object v0
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p1, "contentURI"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 446
    const/4 v8, 0x0

    .line 447
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_15

    .line 449
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 458
    :goto_14
    return-object v8

    .line 451
    :cond_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 452
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 453
    .local v7, "idx":I
    if-lez v7, :cond_24

    .line 454
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 456
    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_14
.end method

.method private handleRequest(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .prologue
    .line 329
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 330
    :cond_6
    packed-switch p1, :pswitch_data_4e

    .line 354
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->finish()V

    .line 357
    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->imageSelected()V

    .line 359
    :cond_f
    return-void

    .line 332
    :pswitch_10
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 334
    :try_start_14
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/buzzfeed/android/util/BuzzImageUtils;->downsizeImageSaveToPathOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    .line 336
    iput p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_c

    .line 337
    :catch_26
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error with GALLERY_IMAGE_SELECT"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2f
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 345
    :try_start_33
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/buzzfeed/android/util/BuzzImageUtils;->downsizeImageSaveToPathOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    .line 347
    iput p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_44} :catch_45

    goto :goto_c

    .line 348
    :catch_45
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error with CAMERA_PIC_REQUEST"

    invoke-static {v1, v2, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 330
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_2f
    .end packed-switch
.end method

.method private imageSelected()V
    .registers 5

    .prologue
    .line 462
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    .line 464
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleImageButton()V

    .line 465
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$2;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :cond_26
    return-void
.end method

.method private launchCamera()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 733
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 734
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_23

    .line 736
    :cond_11
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 744
    :goto_22
    return-void

    .line 739
    :cond_23
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setImagePath()V

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0, v0, v4}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_22
.end method

.method private launchGallery()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 722
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 724
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 730
    :goto_15
    return-void

    .line 727
    :cond_16
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setImagePath()V

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_15
.end method

.method private makeCommentFromData(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 579
    new-instance v0, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, "comment":Lcom/buzzfeed/android/data/comment/BuzzFeedComment;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setTimeAdded(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setBlurb(Ljava/lang/String;)V

    .line 582
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setForm(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setBuzzId(Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setParent(Lcom/buzzfeed/android/data/comment/Comment;)V

    .line 585
    new-instance v1, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    invoke-direct {v1}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;-><init>()V

    .line 586
    .local v1, "info":Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setDisplayName(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 587
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUserId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 588
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUsername(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 589
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->setUserImg(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 590
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setUserInfo(Lcom/buzzfeed/android/data/comment/Comment$UserInfo;)V

    .line 591
    return-object v0
.end method

.method private postImage()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v23, v0

    const-string v24, "image"

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setForm(Ljava/lang/String;)V

    .line 637
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".postData"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "TAG":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v18, "uploadImageFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_17e

    .line 640
    const-string v23, "Filedata"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/MultipartRequestHelper;->prepareFilePart(Ljava/lang/String;Ljava/io/File;)Lokhttp3/MultipartBody$Part;

    move-result-object v7

    .line 642
    .local v7, "imageBody":Lokhttp3/MultipartBody$Part;
    new-instance v23, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;

    invoke-direct/range {v23 .. v23}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageUploadParamBuilder;->build()Ljava/util/HashMap;

    move-result-object v10

    .line 644
    .local v10, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lokhttp3/RequestBody;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v10}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->uploadImage(Lokhttp3/MultipartBody$Part;Ljava/util/HashMap;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v17

    .line 646
    .local v17, "uploadCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v21

    .line 647
    .local v21, "uploadResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual/range {v21 .. v21}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lokhttp3/ResponseBody;

    invoke-virtual/range {v23 .. v23}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v19

    .line 648
    .local v19, "uploadImageResponse":Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 650
    .local v20, "uploadImageResponseJson":Lorg/json/JSONObject;
    const-string/jumbo v23, "uploaded"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 651
    .local v22, "uploaded":Z
    if-eqz v22, :cond_1ac

    .line 652
    const-string v23, "image"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 653
    .local v12, "remoteImagePath":Ljava/lang/String;
    const-string v23, "height"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, "remoteImageHeight":Ljava/lang/String;
    const-string/jumbo v23, "width"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, "remoteImageWidth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setCommentImgUrl(Ljava/lang/String;)V

    .line 657
    new-instance v23, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    invoke-direct/range {v23 .. v23}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    move-object/from16 v24, v0

    .line 658
    invoke-virtual/range {v24 .. v24}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    move-object/from16 v24, v0

    .line 659
    invoke-interface/range {v24 .. v24}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v24, v0

    .line 660
    invoke-virtual/range {v24 .. v24}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getForm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v24, v0

    .line 661
    invoke-virtual/range {v24 .. v24}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBlurb()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->blurb(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v24, v0

    .line 662
    invoke-virtual/range {v24 .. v24}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->url(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    .line 663
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->height(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    .line 664
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->width(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;

    move-result-object v23

    .line 665
    invoke-virtual/range {v23 .. v23}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$ImageSaveParamBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 667
    .local v4, "contributeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 670
    .local v8, "jsonResponse":Lorg/json/JSONObject;
    :try_start_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    move-object/from16 v23, v0

    .line 671
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->saveImage(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v14

    .line 672
    .local v14, "saveCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v14}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v16

    .line 674
    .local v16, "saveResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual/range {v16 .. v16}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lokhttp3/ResponseBody;

    invoke-virtual/range {v23 .. v23}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v15

    .line 675
    .local v15, "saveImageResponse":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_121} :catch_182

    .line 676
    .end local v8    # "jsonResponse":Lorg/json/JSONObject;
    .local v9, "jsonResponse":Lorg/json/JSONObject;
    :try_start_121
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Contribute response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string/jumbo v23, "success"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17f

    const/16 v23, 0x1

    :goto_14e
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    .line 678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16f

    .line 679
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 680
    .local v6, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setCommentId(Ljava/lang/String;)V

    .line 682
    .end local v6    # "id":Ljava/lang/String;
    :cond_16f
    const-string v23, "error"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_17d} :catch_1b5

    move-object v8, v9

    .line 695
    .end local v4    # "contributeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "imageBody":Lokhttp3/MultipartBody$Part;
    .end local v9    # "jsonResponse":Lorg/json/JSONObject;
    .end local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lokhttp3/RequestBody;>;"
    .end local v11    # "remoteImageHeight":Ljava/lang/String;
    .end local v12    # "remoteImagePath":Ljava/lang/String;
    .end local v13    # "remoteImageWidth":Ljava/lang/String;
    .end local v14    # "saveCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v15    # "saveImageResponse":Ljava/lang/String;
    .end local v16    # "saveResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v17    # "uploadCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v19    # "uploadImageResponse":Ljava/lang/String;
    .end local v20    # "uploadImageResponseJson":Lorg/json/JSONObject;
    .end local v21    # "uploadResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v22    # "uploaded":Z
    :cond_17e
    :goto_17e
    return-void

    .line 677
    .restart local v4    # "contributeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "imageBody":Lokhttp3/MultipartBody$Part;
    .restart local v9    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lokhttp3/RequestBody;>;"
    .restart local v11    # "remoteImageHeight":Ljava/lang/String;
    .restart local v12    # "remoteImagePath":Ljava/lang/String;
    .restart local v13    # "remoteImageWidth":Ljava/lang/String;
    .restart local v14    # "saveCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v15    # "saveImageResponse":Ljava/lang/String;
    .restart local v16    # "saveResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v17    # "uploadCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v19    # "uploadImageResponse":Ljava/lang/String;
    .restart local v20    # "uploadImageResponseJson":Lorg/json/JSONObject;
    .restart local v21    # "uploadResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v22    # "uploaded":Z
    :cond_17f
    const/16 v23, 0x0

    goto :goto_14e

    .line 683
    .end local v9    # "jsonResponse":Lorg/json/JSONObject;
    .end local v14    # "saveCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v15    # "saveImageResponse":Ljava/lang/String;
    .end local v16    # "saveResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v8    # "jsonResponse":Lorg/json/JSONObject;
    :catch_182
    move-exception v5

    .line 684
    .local v5, "e":Ljava/lang/Exception;
    :goto_183
    const v23, 0x7f090078

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    if-eqz v8, :cond_1a3

    .line 686
    const-string v23, "error"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    .line 688
    :cond_1a3
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    goto :goto_17e

    .line 692
    .end local v4    # "contributeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "jsonResponse":Lorg/json/JSONObject;
    .end local v11    # "remoteImageHeight":Ljava/lang/String;
    .end local v12    # "remoteImagePath":Ljava/lang/String;
    .end local v13    # "remoteImageWidth":Ljava/lang/String;
    :cond_1ac
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    goto :goto_17e

    .line 683
    .restart local v4    # "contributeParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v11    # "remoteImageHeight":Ljava/lang/String;
    .restart local v12    # "remoteImagePath":Ljava/lang/String;
    .restart local v13    # "remoteImageWidth":Ljava/lang/String;
    .restart local v14    # "saveCall":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v15    # "saveImageResponse":Ljava/lang/String;
    .restart local v16    # "saveResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :catch_1b5
    move-exception v5

    move-object v8, v9

    .end local v9    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v8    # "jsonResponse":Lorg/json/JSONObject;
    goto :goto_183
.end method

.method private setImagePath()V
    .registers 5

    .prologue
    .line 438
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    if-nez v1, :cond_52

    .line 439
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "now":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzFeedDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/contrib-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzFeedDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/contrib-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-sm.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    .line 443
    .end local v0    # "now":Ljava/lang/String;
    :cond_52
    return-void
.end method

.method private setMenuItemOnOff(Landroid/view/MenuItem;Z)V
    .registers 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "on"    # Z

    .prologue
    .line 431
    if-eqz p1, :cond_8

    .line 432
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 433
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 435
    :cond_8
    return-void
.end method

.method private setupOverlay()V
    .registers 3

    .prologue
    .line 756
    const v0, 0x7f110145

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    .line 757
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$5;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$5;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 764
    const v0, 0x7f040013

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeInOverlay:Landroid/view/animation/Animation;

    .line 765
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeInOverlay:Landroid/view/animation/Animation;

    new-instance v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$6;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$6;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 772
    const v0, 0x7f040015

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeOutOverlay:Landroid/view/animation/Animation;

    .line 773
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeOutOverlay:Landroid/view/animation/Animation;

    new-instance v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$7;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$7;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 779
    return-void
.end method

.method private setupShareElementTransition()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_22

    .line 288
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->AVATAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setTransitionName(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentUserName:Landroid/widget/TextView;

    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTextResponse:Landroid/widget/TextView;

    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->COMMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentImageResponse:Landroid/widget/ImageView;

    sget-object v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$SharedElementTag;->COMMENT_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 293
    :cond_22
    return-void
.end method

.method private setupView()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 255
    const v2, 0x7f110143

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    const v2, 0x7f11013e

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    .line 258
    const v2, 0x7f110141

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentImageResponse:Landroid/widget/ImageView;

    .line 259
    const v2, 0x7f11013f

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentUserName:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f110140

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTimeStamp:Landroid/widget/TextView;

    .line 261
    const v2, 0x7f110142

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTextResponse:Landroid/widget/TextView;

    .line 262
    const v2, 0x7f11013d

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 264
    .local v1, "inResponseToHeader":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    if-eqz v2, :cond_a1

    .line 265
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getLargeUserImg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->bindAvatar(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->bindUserNameView(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getFormattedTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->bindTimeStamp(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getBlurb()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->bindTextResponse(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->bindImageResponse(Ljava/lang/String;)V

    .line 279
    :goto_8f
    const v2, 0x7f110144

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    .line 280
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setupOverlay()V

    .line 282
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setupShareElementTransition()V

    .line 283
    return-void

    .line 271
    :cond_a1
    const v2, 0x7f11012f

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "horizontalDivider":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTextResponse:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentTimeStamp:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentAvatar:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentCommentUserName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8f
.end method

.method private showResults()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 488
    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    if-eqz v1, :cond_34

    .line 490
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 492
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "contributeResult"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setResult(ILandroid/content/Intent;)V

    .line 496
    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    if-eqz v1, :cond_30

    .line 497
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getCommentsCache()Lcom/buzzfeed/android/data/comment/CommentListCache;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/buzzfeed/android/data/comment/CommentListCache;->addComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V

    .line 500
    :cond_30
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->finish()V

    .line 515
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_33
    return-void

    .line 502
    :cond_34
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    const-string v2, "duplicate name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 503
    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 508
    :goto_4c
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 505
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_4c

    :cond_91
    const-string v1, "."

    goto :goto_85
.end method

.method private toggleImageButton()V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuImageDelete:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setMenuItemOnOff(Landroid/view/MenuItem;Z)V

    .line 427
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuImage:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v1, v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setMenuItemOnOff(Landroid/view/MenuItem;Z)V

    .line 428
    return-void

    .line 427
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private toggleOverlay(Z)V
    .registers 4
    .param p1, "in"    # Z

    .prologue
    .line 747
    if-eqz p1, :cond_10

    .line 748
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeInOverlay:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 753
    :goto_f
    return-void

    .line 751
    :cond_10
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fadeOutOverlay:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_f
.end method


# virtual methods
.method public buildImageDialog()V
    .registers 5

    .prologue
    .line 698
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 699
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    const v2, 0x7f090079

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 700
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0900b2

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0900ed

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 701
    .local v1, "listItems":[Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;

    invoke-direct {v2, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 717
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 718
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 719
    return-void
.end method

.method protected configureToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 4
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->thumbnail:Landroid/graphics/Bitmap;

    .line 219
    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    .line 221
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    if-eqz p3, :cond_1a

    .line 222
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    .line 224
    :cond_1a
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->handleRequest(I)V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    sget-object v2, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setContentView(I)V

    .line 158
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 159
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/toolkit/content/PostContent;

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 161
    :cond_2a
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 163
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_53

    .line 165
    const-string v2, "comment_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 166
    const-string v2, "comment_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->getComment(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->parentComment:Lcom/buzzfeed/android/data/comment/Comment;

    .line 171
    .end local v0    # "id":Ljava/lang/String;
    :cond_53
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->content:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v2, :cond_b5

    .line 172
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setupView()V

    .line 178
    :goto_66
    if-eqz p1, :cond_ae

    .line 179
    const-string v2, "photoUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    .line 180
    const-string v2, "requestCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    .line 181
    const-string/jumbo v2, "uploadPath"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    .line 182
    const-string v2, "fullPath"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    .line 183
    const-string v2, "partialText"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->partialText:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->partialText:Ljava/lang/String;

    if-eqz v2, :cond_a9

    .line 185
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->partialText:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 186
    iget-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->partialText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    :cond_a9
    iget v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->handleRequest(I)V

    .line 191
    :cond_ae
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getCommentService()Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    .line 192
    return-void

    .line 175
    :cond_b5
    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->finish()V

    goto :goto_66
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 366
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    const v1, 0x7f110230

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuImage:Landroid/view/MenuItem;

    .line 369
    const v1, 0x7f110231

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuImageDelete:Landroid/view/MenuItem;

    .line 370
    const v1, 0x7f110232

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->menuSend:Landroid/view/MenuItem;

    .line 372
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleImageButton()V

    .line 374
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_4c

    move v2, v3

    .line 401
    :goto_b
    return v2

    .line 381
    :sswitch_c
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->finish()V

    goto :goto_b

    .line 384
    :sswitch_10
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buildImageDialog()V

    goto :goto_b

    .line 387
    :sswitch_14
    iput-boolean v3, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->hasImage:Z

    .line 388
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->toggleImageButton()V

    .line 389
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->clearImage()V

    goto :goto_b

    .line 392
    :sswitch_1d
    iget-object v4, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "contributeText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_40

    .line 394
    new-instance v0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;Ljava/lang/String;)V

    .line 395
    .local v0, "buzzTask":Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Void;

    aput-object v5, v4, v3

    aput-object v5, v4, v2

    const/4 v3, 0x2

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b

    .line 397
    .end local v0    # "buzzTask":Lcom/buzzfeed/android/activity/ContributionSubmitActivity$ContributeTask;
    :cond_40
    const v3, 0x7f09007e

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_b

    .line 379
    nop

    :sswitch_data_4c
    .sparse-switch
        0x102002c -> :sswitch_c
        0x7f110230 -> :sswitch_10
        0x7f110231 -> :sswitch_14
        0x7f110232 -> :sswitch_1d
    .end sparse-switch
.end method

.method protected onPostResume()V
    .registers 5

    .prologue
    .line 201
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onPostResume()V

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_21

    .line 203
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 204
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    new-instance v1, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$1;-><init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_21
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090282

    const v2, 0x7f0900cd

    const/4 v1, 0x0

    .line 229
    packed-switch p1, :pswitch_data_5e

    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 252
    :goto_e
    return-void

    .line 231
    :pswitch_f
    array-length v0, p3

    if-lez v0, :cond_1a

    aget v0, p3, v1

    if-nez v0, :cond_1a

    .line 232
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchGallery()V

    goto :goto_e

    .line 234
    :cond_1a
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09022f

    .line 235
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v2, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_e

    .line 241
    :pswitch_36
    array-length v0, p3

    if-lez v0, :cond_41

    aget v0, p3, v1

    if-nez v0, :cond_41

    .line 242
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchCamera()V

    goto :goto_e

    .line 244
    :cond_41
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090198

    .line 245
    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v2, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_e

    .line 229
    nop

    :pswitch_data_5e
    .packed-switch 0x64
        :pswitch_f
        :pswitch_36
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    iget v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    if-eqz v0, :cond_b

    .line 407
    const-string v0, "requestCode"

    iget v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->requestCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    :cond_b
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 410
    const-string v0, "photoUri"

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->photoUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_16
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 413
    const-string/jumbo v0, "uploadPath"

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->uploadImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_22
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 416
    const-string v0, "fullPath"

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->fullImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_2d
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_50

    .line 419
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 420
    const-string v0, "partialText"

    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_50
    return-void
.end method

.method public postText()V
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 595
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ".postText"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "TAG":Ljava/lang/String;
    new-instance v10, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    invoke-direct {v10}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;-><init>()V

    iget-object v13, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buzzUser:Lcom/buzzfeed/android/data/BuzzUser;

    .line 598
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 599
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBuzzId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->buzzId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 600
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getForm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->form(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    .line 601
    invoke-virtual {v13}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getBlurb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->blurb(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    move-result-object v7

    .line 604
    .local v7, "paramBuilder":Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;
    iget-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v10}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getParentCommentId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_55

    .line 605
    iget-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v10}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->getParentCommentId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->parentId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;

    .line 608
    :cond_55
    invoke-virtual {v7}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper$PostTextParamBuilder;->build()Ljava/util/Map;

    move-result-object v8

    .line 610
    .local v8, "postTextParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 613
    .local v5, "jsonResponse":Lorg/json/JSONObject;
    :try_start_5a
    iget-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCommentServiceHelper:Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;

    invoke-virtual {v10, v8}, Lcom/buzzfeed/toolkit/networking/helpers/CommentServiceHelper;->postText(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v1

    .line 615
    .local v1, "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 616
    .local v2, "callResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lokhttp3/ResponseBody;

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    .line 618
    .local v9, "response":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_73} :catch_c8

    .line 619
    .end local v5    # "jsonResponse":Lorg/json/JSONObject;
    .local v6, "jsonResponse":Lorg/json/JSONObject;
    :try_start_73
    const-string/jumbo v10, "success"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v11, :cond_c6

    move v10, v11

    :goto_7d
    iput-boolean v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    .line 620
    iget-boolean v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    if-eqz v10, :cond_8e

    .line 621
    const-string v10, "id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "id":Ljava/lang/String;
    iget-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mNewComment:Lcom/buzzfeed/android/data/comment/BuzzFeedComment;

    invoke-virtual {v10, v4}, Lcom/buzzfeed/android/data/comment/BuzzFeedComment;->setCommentId(Ljava/lang/String;)V

    .line 624
    .end local v4    # "id":Ljava/lang/String;
    :cond_8e
    const-string v10, "error"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    .line 625
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Contribute response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; successfulPost="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ;errorMsg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_c4} :catch_ee

    move-object v5, v6

    .line 633
    .end local v1    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v2    # "callResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v9    # "response":Ljava/lang/String;
    .restart local v5    # "jsonResponse":Lorg/json/JSONObject;
    :goto_c5
    return-void

    .end local v5    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v1    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v2    # "callResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v6    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_c6
    move v10, v12

    .line 619
    goto :goto_7d

    .line 626
    .end local v1    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .end local v2    # "callResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .end local v9    # "response":Ljava/lang/String;
    .restart local v5    # "jsonResponse":Lorg/json/JSONObject;
    :catch_c8
    move-exception v3

    .line 627
    .local v3, "e":Ljava/lang/Exception;
    :goto_c9
    if-eqz v5, :cond_d3

    .line 628
    const-string v10, "error"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    .line 630
    :cond_d3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error posting text, error message =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->errorMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    iput-boolean v12, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->successfulPost:Z

    goto :goto_c5

    .line 626
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v1    # "call":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    .restart local v2    # "callResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v6    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v9    # "response":Ljava/lang/String;
    :catch_ee
    move-exception v3

    move-object v5, v6

    .end local v6    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v5    # "jsonResponse":Lorg/json/JSONObject;
    goto :goto_c9
.end method
