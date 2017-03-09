.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;
    .registers 42
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "smallIcon"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p13, "resId"    # I
    .param p14, "fitIn1U"    # Z

    .prologue
    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 263
    .local v17, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p13

    invoke-direct {v4, v5, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 264
    .local v4, "contentView":Landroid/widget/RemoteViews;
    const/16 v19, 0x0

    .line 265
    .local v19, "showLine3":Z
    const/16 v18, 0x0

    .line 267
    .local v18, "showLine2":Z
    const/4 v5, -0x1

    move/from16 v0, p11

    if-ge v0, v5, :cond_126

    const/16 v16, 0x1

    .line 268
    .local v16, "minPriority":Z
    :goto_1a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_12a

    const/4 v10, 0x1

    .line 269
    .local v10, "afterJellyBean":Z
    :goto_21
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_12d

    const/4 v11, 0x1

    .line 270
    .local v11, "afterLollipop":Z
    :goto_28
    if-eqz v10, :cond_40

    if-nez v11, :cond_40

    .line 272
    if-eqz v16, :cond_130

    .line 273
    sget v5, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_bg_low:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 275
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 285
    :cond_40
    :goto_40
    if-eqz p6, :cond_15d

    .line 288
    if-eqz v10, :cond_144

    .line 289
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 294
    :goto_51
    if-eqz p5, :cond_80

    .line 295
    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_right_icon_size:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 297
    .local v12, "backgroundSize":I
    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_background_padding:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v15, v12, v5

    .line 299
    .local v15, "iconSize":I
    if-eqz v11, :cond_14d

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p12

    invoke-static {v0, v1, v12, v15, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 305
    .local v20, "smallBit":Landroid/graphics/Bitmap;
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 310
    .end local v20    # "smallBit":Landroid/graphics/Bitmap;
    :goto_7a
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 331
    .end local v12    # "backgroundSize":I
    .end local v15    # "iconSize":I
    :cond_80
    :goto_80
    if-eqz p1, :cond_89

    .line 332
    sget v5, Landroid/support/v7/appcompat/R$id;->title:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 334
    :cond_89
    if-eqz p2, :cond_94

    .line 335
    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    const/16 v19, 0x1

    .line 339
    :cond_94
    if-nez v11, :cond_1a4

    if-eqz p6, :cond_1a4

    const/4 v14, 0x1

    .line 340
    .local v14, "hasRightSide":Z
    :goto_99
    if-eqz p3, :cond_1a7

    .line 341
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 342
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 343
    const/16 v19, 0x1

    .line 344
    const/4 v14, 0x1

    .line 363
    :goto_ab
    if-eqz p7, :cond_c7

    if-eqz v10, :cond_c7

    .line 364
    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 365
    if-eqz p2, :cond_1e9

    .line 366
    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 367
    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 368
    const/16 v18, 0x1

    .line 375
    :cond_c7
    :goto_c7
    if-eqz v18, :cond_e9

    if-eqz v10, :cond_e9

    .line 376
    if-eqz p14, :cond_e0

    .line 378
    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v21, v0

    .line 380
    .local v21, "subTextSize":F
    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 383
    .end local v21    # "subTextSize":F
    :cond_e0
    sget v5, Landroid/support/v7/appcompat/R$id;->line1:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 386
    :cond_e9
    const-wide/16 v6, 0x0

    cmp-long v5, p9, v6

    if-eqz v5, :cond_115

    .line 387
    if-eqz p8, :cond_1f2

    if-eqz v10, :cond_1f2

    .line 388
    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 389
    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v6, "setBase"

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v8, v8, v24

    add-long v8, v8, p9

    .line 389
    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 391
    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v6, "setStarted"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 396
    :goto_114
    const/4 v14, 0x1

    .line 398
    :cond_115
    sget v6, Landroid/support/v7/appcompat/R$id;->right_side:I

    if-eqz v14, :cond_203

    const/4 v5, 0x0

    :goto_11a
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 399
    sget v6, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v19, :cond_207

    const/4 v5, 0x0

    :goto_122
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 400
    return-object v4

    .line 267
    .end local v10    # "afterJellyBean":Z
    .end local v11    # "afterLollipop":Z
    .end local v14    # "hasRightSide":Z
    .end local v16    # "minPriority":Z
    :cond_126
    const/16 v16, 0x0

    goto/16 :goto_1a

    .line 268
    .restart local v16    # "minPriority":Z
    :cond_12a
    const/4 v10, 0x0

    goto/16 :goto_21

    .line 269
    .restart local v10    # "afterJellyBean":Z
    :cond_12d
    const/4 v11, 0x0

    goto/16 :goto_28

    .line 278
    .restart local v11    # "afterLollipop":Z
    :cond_130
    sget v5, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 280
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_40

    .line 292
    :cond_144
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_51

    .line 307
    .restart local v12    # "backgroundSize":I
    .restart local v15    # "iconSize":I
    :cond_14d
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v6, -0x1

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 307
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_7a

    .line 312
    .end local v12    # "backgroundSize":I
    .end local v15    # "iconSize":I
    :cond_15d
    if-eqz p5, :cond_80

    .line 313
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 314
    if-eqz v11, :cond_194

    .line 315
    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_large_icon_width:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Landroid/support/v7/appcompat/R$dimen;->notification_big_circle_margin:I

    .line 317
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v12, v5, v6

    .line 318
    .restart local v12    # "backgroundSize":I
    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_size_as_large:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 320
    .restart local v15    # "iconSize":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p12

    invoke-static {v0, v1, v12, v15, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 325
    .restart local v20    # "smallBit":Landroid/graphics/Bitmap;
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_80

    .line 327
    .end local v12    # "backgroundSize":I
    .end local v15    # "iconSize":I
    .end local v20    # "smallBit":Landroid/graphics/Bitmap;
    :cond_194
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, -0x1

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 327
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_80

    .line 339
    :cond_1a4
    const/4 v14, 0x0

    goto/16 :goto_99

    .line 345
    .restart local v14    # "hasRightSide":Z
    :cond_1a7
    if-lez p4, :cond_1e0

    .line 346
    sget v5, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 348
    .local v22, "tooBig":I
    move/from16 v0, p4

    move/from16 v1, v22

    if-le v0, v1, :cond_1cf

    .line 349
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    sget v6, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 355
    :goto_1c4
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    const/16 v19, 0x1

    .line 357
    const/4 v14, 0x1

    .line 358
    goto/16 :goto_ab

    .line 352
    :cond_1cf
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v13

    .line 353
    .local v13, "f":Ljava/text/NumberFormat;
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v13, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1c4

    .line 359
    .end local v13    # "f":Ljava/text/NumberFormat;
    .end local v22    # "tooBig":I
    :cond_1e0
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_ab

    .line 370
    :cond_1e9
    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_c7

    .line 393
    :cond_1f2
    sget v5, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 394
    sget v5, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v6, "setTime"

    move-wide/from16 v0, p9

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_114

    .line 398
    :cond_203
    const/16 v5, 0x8

    goto/16 :goto_11a

    .line 399
    :cond_207
    const/16 v5, 0x8

    goto/16 :goto_122
.end method

.method public static applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "smallIcon"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p13, "resId"    # I
    .param p14, "fitIn1U"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 191
    .local p15, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    invoke-static/range {p0 .. p14}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 194
    .local v6, "remoteViews":Landroid/widget/RemoteViews;
    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, "actionsVisible":Z
    if-eqz p15, :cond_2e

    .line 197
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    .local v1, "N":I
    if-lez v1, :cond_2e

    .line 199
    const/4 v3, 0x1

    .line 200
    const/4 v7, 0x3

    if-le v1, v7, :cond_17

    const/4 v1, 0x3

    .line 201
    :cond_17
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v1, :cond_2e

    .line 202
    move-object/from16 v0, p15

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-static {p0, v7}, Landroid/support/v7/app/NotificationCompatImplBase;->generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 203
    .local v4, "button":Landroid/widget/RemoteViews;
    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 207
    .end local v1    # "N":I
    .end local v4    # "button":Landroid/widget/RemoteViews;
    .end local v5    # "i":I
    :cond_2e
    if-eqz v3, :cond_3c

    const/4 v2, 0x0

    .line 208
    .local v2, "actionVisibility":I
    :goto_31
    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 209
    sget v7, Landroid/support/v7/appcompat/R$id;->action_divider:I

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    return-object v6

    .line 207
    .end local v2    # "actionVisibility":I
    :cond_3c
    const/16 v2, 0x8

    goto :goto_31
.end method

.method public static buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "outerView"    # Landroid/widget/RemoteViews;
    .param p2, "innerView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-static {p1}, Landroid/support/v7/app/NotificationCompatImplBase;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 422
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 423
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 424
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    .line 427
    sget v1, Landroid/support/v7/appcompat/R$id;->notification_main_column_container:I

    .line 428
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImplBase;->calculateTopPadding(Landroid/content/Context;)I

    move-result v3

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 430
    :cond_29
    return-void
.end method

.method public static calculateTopPadding(Landroid/content/Context;)I
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x3f800000

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 440
    .local v3, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 442
    .local v2, "largePadding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 443
    .local v0, "fontScale":F
    const v4, 0x3fa66666

    invoke-static {v0, v6, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998

    div-float v1, v4, v5

    .line 447
    .local v1, "largeFactor":F
    sub-float v4, v6, v1

    int-to-float v5, v3

    mul-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method public static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 451
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1    # "low":F
    :goto_4
    return p1

    .restart local p1    # "low":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "color"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "color"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v6, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 236
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_37

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 237
    .local v4, "width":I
    :goto_f
    if-nez p3, :cond_39

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 238
    .local v2, "height":I
    :goto_15
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 239
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    if-eqz p2, :cond_2e

    .line 241
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 244
    :cond_2e
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    return-object v3

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    :cond_37
    move v4, p3

    .line 236
    goto :goto_f

    .restart local v4    # "width":I
    :cond_39
    move v2, p3

    .line 237
    goto :goto_15
.end method

.method public static createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "size"    # I
    .param p3, "iconSize"    # I
    .param p4, "color"    # I

    .prologue
    .line 405
    sget v4, Landroid/support/v7/appcompat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    .end local p4    # "color":I
    :cond_5
    invoke-static {p0, v4, p4, p2}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    .local v1, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 409
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 410
    sub-int v4, p2, p3

    div-int/lit8 v3, v4, 0x2

    .line 411
    .local v3, "inset":I
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 413
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    return-object v1
.end method

.method private static generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 215
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_43

    const/4 v1, 0x1

    .line 216
    .local v1, "tombstone":Z
    :goto_5
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_45

    .line 217
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionTombstoneLayoutResource()I

    move-result v2

    .line 218
    :goto_11
    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 219
    .local v0, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->action_image:I

    .line 220
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->notification_action_color_filter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 220
    invoke-static {p0, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 219
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 222
    sget v2, Landroid/support/v7/appcompat/R$id;->action_text:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 223
    if-nez v1, :cond_3b

    .line 224
    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    :cond_3b
    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 227
    return-object v0

    .line 215
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v1    # "tombstone":Z
    :cond_43
    const/4 v1, 0x0

    goto :goto_5

    .line 218
    .restart local v1    # "tombstone":Z
    :cond_45
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionLayoutResource()I

    move-result v2

    goto :goto_11
.end method

.method private static generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 40
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p10, "priority"    # I
    .param p12, "actionsToShowInCompact"    # [I
    .param p13, "showCancelButton"    # Z
    .param p14, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p15, "isDecoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 77
    .local p11, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v8, 0x0

    const/4 v15, 0x0

    if-eqz p15, :cond_5b

    sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_media_custom:I

    :goto_6
    const/16 v17, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v22

    .line 84
    .local v22, "view":Landroid/widget/RemoteViews;
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v21

    .line 85
    .local v21, "numActions":I
    if-nez p12, :cond_5e

    const/4 v2, 0x0

    .line 88
    .local v2, "N":I
    :goto_27
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 89
    if-lez v2, :cond_85

    .line 90
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_32
    move/from16 v0, v20

    if-ge v0, v2, :cond_85

    .line 91
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_67

    .line 92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 94
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v21, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 92
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    .end local v2    # "N":I
    .end local v20    # "i":I
    .end local v21    # "numActions":I
    .end local v22    # "view":Landroid/widget/RemoteViews;
    :cond_5b
    sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    goto :goto_6

    .line 85
    .restart local v21    # "numActions":I
    .restart local v22    # "view":Landroid/widget/RemoteViews;
    :cond_5e
    move-object/from16 v0, p12

    array-length v3, v0

    const/4 v4, 0x3

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    .line 97
    .restart local v2    # "N":I
    .restart local v20    # "i":I
    :cond_67
    aget v3, p12, v20

    move-object/from16 v0, p11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 98
    .local v18, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v19

    .line 99
    .local v19, "button":Landroid/widget/RemoteViews;
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v20, v20, 0x1

    goto :goto_32

    .line 102
    .end local v18    # "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    .end local v19    # "button":Landroid/widget/RemoteViews;
    .end local v20    # "i":I
    :cond_85
    if-eqz p13, :cond_b5

    .line 103
    sget v3, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, v22

    move-object/from16 v1, p14

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 106
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v4, "setAlpha"

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 106
    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 112
    :goto_b4
    return-object v22

    .line 109
    :cond_b5
    sget v3, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b4
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    .line 162
    .local v1, "tombstone":Z
    :goto_7
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 164
    .local v0, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 165
    if-nez v1, :cond_26

    .line 166
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    :cond_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_35

    .line 169
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 171
    :cond_35
    return-object v0

    .line 161
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v1    # "tombstone":Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 38
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p10, "priority"    # I
    .param p11, "color"    # I
    .param p13, "showCancelButton"    # Z
    .param p14, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p15, "decoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 135
    .local p12, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 136
    .local v2, "actionCount":I
    const/4 v8, 0x0

    .line 138
    move/from16 v0, p15

    invoke-static {v0, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigMediaLayoutResource(ZI)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    .line 136
    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v18

    .line 141
    .local v18, "big":Landroid/widget/RemoteViews;
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 142
    if-lez v2, :cond_57

    .line 143
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_37
    move/from16 v0, v20

    if-ge v0, v2, :cond_57

    .line 144
    move-object/from16 v0, p12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v19

    .line 145
    .local v19, "button":Landroid/widget/RemoteViews;
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 143
    add-int/lit8 v20, v20, 0x1

    goto :goto_37

    .line 148
    .end local v19    # "button":Landroid/widget/RemoteViews;
    .end local v20    # "i":I
    :cond_57
    if-eqz p13, :cond_7e

    .line 149
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v4, "setAlpha"

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 150
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 152
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, v18

    move-object/from16 v1, p14

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 156
    :goto_7d
    return-object v18

    .line 154
    :cond_7e
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7d
.end method

.method private static getActionLayoutResource()I
    .registers 1

    .prologue
    .line 250
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action:I

    return v0
.end method

.method private static getActionTombstoneLayoutResource()I
    .registers 1

    .prologue
    .line 254
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action_tombstone:I

    return v0
.end method

.method private static getBigMediaLayoutResource(ZI)I
    .registers 3
    .param p0, "decoratedCustomView"    # Z
    .param p1, "actionCount"    # I

    .prologue
    .line 175
    const/4 v0, 0x3

    if-gt p1, v0, :cond_b

    .line 176
    if-eqz p0, :cond_8

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow_custom:I

    .line 180
    :goto_7
    return v0

    .line 176
    :cond_8
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_7

    .line 180
    :cond_b
    if-eqz p0, :cond_10

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_custom:I

    goto :goto_7

    :cond_10
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    goto :goto_7
.end method

.method private static hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 3
    .param p0, "outerView"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v1, 0x8

    .line 433
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 434
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 435
    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    return-void
.end method

.method public static overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 20
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p13, "actionsToShowInCompact"    # [I
    .param p14, "showCancelButton"    # Z
    .param p15, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p16, "isDecoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 60
    .local p12, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 64
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 65
    if-eqz p14, :cond_15

    .line 66
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 68
    :cond_15
    return-object v0
.end method

.method public static overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
    .registers 18
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p14, "showCancelButton"    # Z
    .param p15, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p16, "decoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p13, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 124
    if-eqz p14, :cond_e

    .line 125
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 127
    :cond_e
    return-void
.end method
