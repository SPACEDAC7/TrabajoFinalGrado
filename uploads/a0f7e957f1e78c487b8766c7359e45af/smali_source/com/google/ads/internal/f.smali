.class public final Lcom/google/ads/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/internal/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/internal/c;

.field private final b:Lcom/google/ads/internal/d;

.field private final c:Lcom/google/ads/internal/f$a;

.field private volatile d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;)V
    .registers 4

    .prologue
    .line 126
    new-instance v0, Lcom/google/ads/internal/f$1;

    invoke-direct {v0}, Lcom/google/ads/internal/f$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/internal/f;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;Lcom/google/ads/internal/f$a;)V

    .line 132
    return-void
.end method

.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;Lcom/google/ads/internal/f$a;)V
    .registers 5

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/f;->g:Ljava/lang/Thread;

    .line 146
    iput-object p1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    .line 147
    iput-object p2, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    .line 148
    iput-object p3, p0, Lcom/google/ads/internal/f;->c:Lcom/google/ads/internal/f$a;

    .line 149
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V
    .registers 6

    .prologue
    .line 474
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    const-string v1, "drt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-boolean v1, p0, Lcom/google/ads/internal/f;->e:Z

    if-eqz v1, :cond_21

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 477
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_22

    .line 481
    const-string v1, "X-Afma-drt-Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_21
    :goto_21
    return-void

    .line 483
    :cond_22
    const-string v1, "Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->b(Ljava/net/HttpURLConnection;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->f(Ljava/net/HttpURLConnection;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->g(Ljava/net/HttpURLConnection;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->h(Ljava/net/HttpURLConnection;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->e(Ljava/net/HttpURLConnection;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->i(Ljava/net/HttpURLConnection;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->j(Ljava/net/HttpURLConnection;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->k(Ljava/net/HttpURLConnection;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->d(Ljava/net/HttpURLConnection;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->c(Ljava/net/HttpURLConnection;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->l(Ljava/net/HttpURLConnection;)V

    .line 176
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x190

    .line 383
    const/16 v0, 0x12c

    if-gt v0, p2, :cond_3d

    if-ge p2, v1, :cond_3d

    .line 385
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-nez v0, :cond_37

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get redirect location from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redirect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    .line 424
    :goto_36
    return-void

    .line 393
    :cond_37
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;)V

    .line 396
    iput-object v0, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/String;

    goto :goto_36

    .line 397
    :cond_3d
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_9d

    .line 399
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;)V

    .line 400
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response content is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response message is null or zero length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 408
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto :goto_36

    .line 413
    :cond_92
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    iget-object v2, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto :goto_36

    .line 415
    :cond_9d
    if-ne p2, v1, :cond_af

    .line 416
    const-string v0, "Bad request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 418
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto :goto_36

    .line 420
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 422
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto/16 :goto_36
.end method

.method private b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/internal/f;->d:Z

    if-nez v0, :cond_4a

    .line 452
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/google/ads/internal/f;->c:Lcom/google/ads/internal/f$a;

    invoke-interface {v1, v0}, Lcom/google/ads/internal/f$a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 456
    :try_start_11
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/f;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V

    .line 457
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    .line 458
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 459
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 460
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 461
    invoke-direct {p0, v1, v0}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_45

    .line 463
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_45
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 466
    :cond_4a
    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 182
    const-string v0, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 184
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->e(Ljava/lang/String;)V

    .line 186
    :cond_11
    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 193
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 195
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->b(Ljava/lang/String;)V

    .line 197
    :cond_11
    return-void
.end method

.method private d(Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 205
    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 207
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->a(Z)V

    .line 209
    :cond_19
    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)V
    .registers 8

    .prologue
    .line 215
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 218
    :try_start_c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 219
    iget-object v2, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    const/high16 v3, 0x447a0000

    mul-float/2addr v0, v3

    float-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/ads/internal/d;->a(J)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_19} :catch_1a

    .line 225
    :cond_19
    :goto_19
    return-void

    .line 221
    :catch_1a
    move-exception v0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get timeout value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method private f(Ljava/net/HttpURLConnection;)V
    .registers 7

    .prologue
    .line 232
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    .line 236
    iget-object v4, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v4, v3}, Lcom/google/ads/internal/d;->b(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 239
    :cond_24
    return-void
.end method

.method private g(Ljava/net/HttpURLConnection;)V
    .registers 7

    .prologue
    .line 245
    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 248
    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    .line 249
    iget-object v4, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v4, v3}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 252
    :cond_24
    return-void
.end method

.method private h(Ljava/net/HttpURLConnection;)V
    .registers 6

    .prologue
    .line 260
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 264
    :try_start_c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_28

    move-result v0

    .line 269
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 271
    iget-object v1, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/d;->a(F)V

    .line 272
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->s()Z

    move-result v0

    if-nez v0, :cond_27

    .line 273
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->f()V

    .line 279
    :cond_27
    :goto_27
    return-void

    .line 265
    :catch_28
    move-exception v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get refresh value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 275
    :cond_40
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->s()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 276
    iget-object v0, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->e()V

    goto :goto_27
.end method

.method private i(Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 286
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 288
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 289
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    .line 294
    :cond_1d
    :goto_1d
    return-void

    .line 290
    :cond_1e
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 291
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    goto :goto_1d
.end method

.method private j(Ljava/net/HttpURLConnection;)V
    .registers 5

    .prologue
    .line 301
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 303
    :try_start_c
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/internal/d;->b(J)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 312
    :cond_1b
    :goto_1b
    return-void

    .line 306
    :catch_1c
    move-exception v0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private k(Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 329
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 333
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->c(Ljava/lang/String;)V

    .line 335
    :cond_11
    return-void
.end method

.method private l(Ljava/net/HttpURLConnection;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 341
    const-string v0, "X-Afma-Ad-Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 346
    :try_start_d
    const-string v1, "x"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 347
    array-length v2, v1

    if-eq v2, v3, :cond_2e

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 359
    :cond_2d
    :goto_2d
    return-void

    .line 351
    :cond_2e
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 352
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_3b} :catch_47

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    new-instance v3, Lcom/google/ads/AdSize;

    invoke-direct {v3, v2, v0}, Lcom/google/ads/AdSize;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdSize;)V

    goto :goto_2d

    .line 353
    :catch_47
    move-exception v1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_2d
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/f;->d:Z

    .line 158
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/f;->g:Ljava/lang/Thread;

    if-nez v0, :cond_16

    .line 367
    iput-object p1, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/f;->d:Z

    .line 369
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/f;->g:Ljava/lang/Thread;

    .line 370
    iget-object v0, p0, Lcom/google/ads/internal/f;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 372
    :cond_16
    monitor-exit p0

    return-void

    .line 366
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/ads/internal/f;->e:Z

    .line 322
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/internal/f;->b()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_20

    .line 444
    :goto_3
    return-void

    .line 431
    :catch_4
    move-exception v0

    .line 433
    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3

    .line 435
    :catch_12
    move-exception v0

    .line 437
    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3

    .line 439
    :catch_20
    move-exception v0

    .line 441
    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3
.end method
