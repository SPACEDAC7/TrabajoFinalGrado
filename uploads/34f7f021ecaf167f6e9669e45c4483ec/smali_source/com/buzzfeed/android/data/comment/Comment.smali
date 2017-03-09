.class public abstract Lcom/buzzfeed/android/data/comment/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    }
.end annotation


# static fields
.field public static final COMMENT_DEFAULT_AVATAR_PATH:Ljava/lang/String; = "static/images/public/defaults/user.jpg"

.field public static final COMMENT_DEFAULT_LARGE_AVATAR_PATH:Ljava/lang/String; = "static/images/public/defaults/user_large.jpg"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_DAYS_IN_MILLISECONDS:J = 0x5265c00L

.field private static final TIME_HOUR_IN_MILLISECONDS:J = 0x36ee80L

.field private static final TIME_MILLISECONDS_IN_SECONDS:J = 0x3e8L

.field private static final TIME_MINUTES_IN_MILLISECONDS:J = 0xea60L

.field private static final TIME_MONTHS_IN_MILLISECONDS:J = 0x9a7ec800L

.field private static final TIME_YEARS_IN_MILLISECONDS:J = 0x73df16000L

.field private static final serialVersionUID:J


# instance fields
.field private blurb:Ljava/lang/String;

.field private commentId:Ljava/lang/String;

.field private commentImage:Ljava/lang/String;

.field private formattedTimestamp:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private parent:Lcom/buzzfeed/android/data/comment/Comment;

.field private parentCommentId:Ljava/lang/String;

.field private replies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private timeAdded:Ljava/lang/String;

.field private userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/comment/Comment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->parentCommentId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->mContext:Landroid/content/Context;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->replies:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/Comment;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/buzzfeed/android/data/comment/Comment;->parse(Lorg/json/JSONObject;)V

    .line 157
    return-void
.end method


# virtual methods
.method public formatTimeAdded()Ljava/lang/String;
    .registers 23

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/android/data/comment/Comment;->mContext:Landroid/content/Context;

    .line 265
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/buzzfeed/android/data/comment/Comment;->getTimeAdded()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v16, v18, v20

    .line 268
    .local v16, "timeSinceAdded":J
    const-wide v18, 0x73df16000L

    div-long v14, v16, v18

    .line 269
    .local v14, "elapsedYears":J
    const-wide v18, 0x9a7ec800L

    div-long v10, v16, v18

    .line 270
    .local v10, "elapsedMonths":J
    const-wide/32 v18, 0x5265c00

    div-long v4, v16, v18

    .line 271
    .local v4, "elapsedDays":J
    const-wide/32 v18, 0x36ee80

    div-long v6, v16, v18

    .line 272
    .local v6, "elapsedHours":J
    const-wide/32 v18, 0xea60

    div-long v8, v16, v18

    .line 273
    .local v8, "elapsedMinutes":J
    const-wide/16 v18, 0x3e8

    div-long v12, v16, v18

    .line 276
    .local v12, "elapsedSeconds":J
    const-wide/16 v18, 0x0

    cmp-long v3, v14, v18

    if-lez v3, :cond_4d

    .line 277
    const v3, 0x7f090130

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 327
    :goto_4c
    return-object v3

    .line 282
    :cond_4d
    const-wide/16 v18, 0x9

    cmp-long v3, v10, v18

    if-lez v3, :cond_63

    .line 283
    const v3, 0x7f09012f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_4c

    .line 287
    :cond_63
    const-wide/16 v18, 0x1

    cmp-long v3, v10, v18

    if-ltz v3, :cond_b5

    .line 289
    const-wide/16 v18, 0x1

    cmp-long v3, v10, v18

    if-nez v3, :cond_94

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f09012c

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 294
    :goto_8f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_4c

    .line 292
    :cond_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f09012d

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_8f

    .line 297
    :cond_b5
    const-wide/16 v18, 0x1

    cmp-long v3, v4, v18

    if-ltz v3, :cond_108

    .line 299
    const-wide/16 v18, 0x1

    cmp-long v3, v4, v18

    if-nez v3, :cond_e7

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f090126

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 304
    :goto_e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto/16 :goto_4c

    .line 302
    :cond_e7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f090127

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_e1

    .line 307
    :cond_108
    const-wide/16 v18, 0x1

    cmp-long v3, v6, v18

    if-ltz v3, :cond_15b

    .line 309
    const-wide/16 v18, 0x1

    cmp-long v3, v6, v18

    if-nez v3, :cond_13a

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f090128

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 314
    :goto_134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto/16 :goto_4c

    .line 312
    :cond_13a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f090129

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_134

    .line 317
    :cond_15b
    const-wide/16 v18, 0x1

    cmp-long v3, v8, v18

    if-ltz v3, :cond_1ae

    .line 319
    const-wide/16 v18, 0x1

    cmp-long v3, v8, v18

    if-nez v3, :cond_18d

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f09012a

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 324
    :goto_187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto/16 :goto_4c

    .line 322
    :cond_18d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f09012b

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto :goto_187

    .line 326
    :cond_1ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v18, 0x7f09012e

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    goto/16 :goto_4c
.end method

.method public getBlurb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->formatTimeAdded()Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/buzzfeed/android/data/comment/Comment;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->parent:Lcom/buzzfeed/android/data/comment/Comment;

    return-object v0
.end method

.method public getParentCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->parentCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplies()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->replies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareBody()Ljava/lang/String;
    .registers 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->blurb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 251
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUrlWithStaticBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "share":Ljava/lang/String;
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0

    .line 253
    .end local v0    # "share":Ljava/lang/String;
    :cond_2a
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->blurb:Ljava/lang/String;

    .restart local v0    # "share":Ljava/lang/String;
    goto :goto_10
.end method

.method public getTimeAdded()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->timeAdded:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/buzzfeed/android/data/comment/Comment$UserInfo;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    return-object v0
.end method

.method public abstract isImgExpected()Z
.end method

.method public isReply()Z
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getParentCommentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isTextExpected()Z
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 337
    invoke-virtual {v3}, Lcom/buzzfeed/android/data/comment/Comment$UserInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 338
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 339
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    move v0, v1

    .line 342
    .local v0, "isValid":Z
    :goto_1f
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->isImgExpected()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 343
    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    move v0, v1

    .line 345
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->isTextExpected()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 346
    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getBlurb()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->getBlurb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    move v0, v1

    .line 349
    :cond_51
    :goto_51
    return v0

    .end local v0    # "isValid":Z
    :cond_52
    move v0, v2

    .line 339
    goto :goto_1f

    .restart local v0    # "isValid":Z
    :cond_54
    move v0, v2

    .line 343
    goto :goto_38

    :cond_56
    move v0, v2

    .line 346
    goto :goto_51
.end method

.method public abstract parse(Lorg/json/JSONObject;)V
.end method

.method public setBlurb(Ljava/lang/String;)V
    .registers 2
    .param p1, "blurb"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->blurb:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .registers 2
    .param p1, "commentId"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentId:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setCommentImgUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "commentImgUrl"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentImage:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setParent(Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 3
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->parent:Lcom/buzzfeed/android/data/comment/Comment;

    .line 219
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->parent:Lcom/buzzfeed/android/data/comment/Comment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/Comment;->parent:Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/data/comment/Comment;->setParentCommentId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;

    .line 220
    :cond_f
    return-void
.end method

.method protected setParentCommentId(Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;
    .registers 2
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->parentCommentId:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setReplies(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/buzzfeed/android/data/comment/Comment;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->replies:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method public setTimeAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeAdded"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->timeAdded:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/Comment;->formatTimeAdded()Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setUserInfo(Lcom/buzzfeed/android/data/comment/Comment$UserInfo;)V
    .registers 2
    .param p1, "userInfo"    # Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comment{replies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blurb=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->blurb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeAdded=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->timeAdded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentCommentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->parentCommentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->commentImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formattedTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->formattedTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/Comment;->userInfo:Lcom/buzzfeed/android/data/comment/Comment$UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
