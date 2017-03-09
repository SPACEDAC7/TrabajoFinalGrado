.class public Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
.super Ljava/lang/Object;
.source "BuzzFeedTracker.java"


# static fields
.field private static final ADJUST_TYPE:Ljava/lang/String; = "Adjust IO"

.field private static final GA_TYPE:Ljava/lang/String; = "Google Analytics"

.field public static final GOOGLE_ANALYTICS_DISPATCH_INTERVAL:Ljava/lang/Integer;

.field private static final LOTAME_TYPE:Ljava/lang/String; = "Lotame"

.field private static final QUANTCAST_TYPE:Ljava/lang/String; = "Quantcast"

.field private static final TAG:Ljava/lang/String;

.field private static sAdjustConfiguration:Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

.field private static sCrowdControl:Lcom/lotame/android/CrowdControl;

.field private static sDebug:Z

.field private static sInstance:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

.field private static sQuantcastError:Z

.field private static sQuantcastKey:Ljava/lang/String;

.field private static sTrackLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTracker:Lcom/google/android/gms/analytics/Tracker;

.field private static sTrackingLogMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    .line 37
    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->GOOGLE_ANALYTICS_DISPATCH_INTERVAL:Ljava/lang/Integer;

    .line 43
    sput v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    .line 44
    sput-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastError:Z

    .line 46
    sput-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static clearTrackList()V
    .registers 2

    .prologue
    .line 322
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    monitor-enter v1

    .line 323
    :try_start_3
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    .registers 2

    .prologue
    .line 62
    const-class v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sInstance:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    if-nez v0, :cond_e

    .line 63
    new-instance v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    invoke-direct {v0}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;-><init>()V

    sput-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sInstance:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 65
    :cond_e
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sInstance:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTrackingLog()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getTrackingLogMaxLines()I
    .registers 1

    .prologue
    .line 314
    sget v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    return v0
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    return v0
.end method

.method public static logTrackingData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-boolean v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v3, :cond_5b

    sget v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    if-lez v3, :cond_5b

    .line 296
    sget-object v4, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    monitor-enter v4

    .line 297
    :try_start_b
    sget-object v2, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackLog:Ljava/util/ArrayList;

    .line 298
    .local v2, "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    sget v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    if-lez v3, :cond_2d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v5, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    if-lt v3, v5, :cond_2d

    .line 301
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    :cond_2d
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_78

    .line 306
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "trackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5b
    sget-object v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 304
    :catchall_78
    move-exception v3

    :try_start_79
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v3
.end method

.method public static onActivityPause()V
    .registers 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v0, :cond_b

    .line 168
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v1, "onActivityPause"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_b
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sAdjustConfiguration:Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->onPause()V

    .line 171
    invoke-static {}, Lcom/comscore/analytics/comScore;->onExitForeground()V

    .line 172
    return-void
.end method

.method public static onActivityResume()V
    .registers 2

    .prologue
    .line 153
    sget-boolean v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v0, :cond_b

    .line 154
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_b
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sAdjustConfiguration:Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

    invoke-virtual {v0}, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->onResume()V

    .line 157
    invoke-static {}, Lcom/comscore/analytics/comScore;->onEnterForeground()V

    .line 158
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    sget-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v1, :cond_b

    .line 124
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v4, "onActivityStart"

    invoke-static {v1, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_b
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    sget-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastError:Z

    if-nez v1, :cond_67

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "ts":J
    :try_start_1b
    sget-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    invoke-static {v1}, Lcom/quantcast/measurement/service/QuantcastClient;->enableLogging(Z)V

    .line 131
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastKey:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Lcom/quantcast/measurement/service/QuantcastClient;->activityStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_5b

    .line 136
    :goto_27
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished Quantcast initialization (in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secs)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v2    # "ts":J
    :goto_51
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    if-eqz v1, :cond_5a

    .line 142
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    invoke-virtual {v1}, Lcom/lotame/android/CrowdControl;->startSession()V

    .line 144
    :cond_5a
    return-void

    .line 132
    .restart local v2    # "ts":J
    :catch_5b
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastError:Z

    .line 134
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v4, "Error initializing Quantcast; disabling"

    invoke-static {v1, v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ts":J
    :cond_67
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v4, "Skipping Quantcast initialization"

    invoke-static {v1, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    sget-boolean v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v0, :cond_b

    .line 182
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v1, "onActivityStop"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_b
    invoke-static {}, Lcom/quantcast/measurement/service/QuantcastClient;->activityStop()V

    .line 185
    return-void
.end method

.method public static onApplicationCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gaTrackingId"    # Ljava/lang/String;
    .param p2, "quantcastKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "comscoreKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "comscoreSecret"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "lotameClientId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "adjustConfiguration"    # Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

    .prologue
    .line 84
    sget-boolean v6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v6, :cond_b

    .line 85
    sget-object v6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v7, "onApplicationCreate"

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    .local v4, "ts":J
    :try_start_1b
    invoke-static {p0}, Lcom/comscore/analytics/comScore;->setAppContext(Landroid/content/Context;)V

    .line 91
    invoke-static {p3}, Lcom/comscore/analytics/comScore;->setCustomerC2(Ljava/lang/String;)V

    .line 92
    invoke-static/range {p4 .. p4}, Lcom/comscore/analytics/comScore;->setPublisherSecret(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_74

    .line 96
    :goto_24
    sget-object v6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finished Comscore initialization (in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v4    # "ts":J
    :cond_4e
    sput-object p2, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sQuantcastKey:Ljava/lang/String;

    .line 100
    if-eqz p5, :cond_63

    .line 101
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    .local v3, "lotameClientIdInt":I
    new-instance v6, Lcom/lotame/android/CrowdControl;

    sget-object v7, Lcom/lotame/android/CrowdControl$Protocol;->HTTPS:Lcom/lotame/android/CrowdControl$Protocol;

    invoke-direct {v6, p0, v3, v7}, Lcom/lotame/android/CrowdControl;-><init>(Landroid/content/Context;ILcom/lotame/android/CrowdControl$Protocol;)V

    sput-object v6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    .line 105
    .end local v3    # "lotameClientIdInt":I
    :cond_63
    sput-object p6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sAdjustConfiguration:Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

    .line 107
    if-eqz p6, :cond_6c

    .line 108
    move-object/from16 v0, p6

    invoke-virtual {v0, p0}, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->configure(Landroid/content/Context;)V

    .line 111
    :cond_6c
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v6

    invoke-direct {v6, p0, p1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->startTracker(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void

    .line 93
    .restart local v4    # "ts":J
    :catch_74
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->TAG:Ljava/lang/String;

    const-string v7, "Error initializing Comscore"

    invoke-static {v6, v7, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .prologue
    .line 201
    sput-boolean p0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    .line 202
    return-void
.end method

.method public static setTrackingLogMaxLines(I)V
    .registers 1
    .param p0, "maxLines"    # I

    .prologue
    .line 310
    sput p0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTrackingLogMaxLines:I

    .line 311
    return-void
.end method

.method private startTracker(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackingID"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 189
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    sget-boolean v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sDebug:Z

    if-eqz v1, :cond_15

    .line 190
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->GOOGLE_ANALYTICS_DISPATCH_INTERVAL:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 192
    :cond_15
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    sput-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 193
    sget-object v1, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public getTracker()Lcom/google/android/gms/analytics/Tracker;
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method public trackAdjustEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "adjustEventToken"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v0, "Adjust IO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " adjustEventToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sAdjustConfiguration:Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->trackAdjustEvent(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public trackEvent(Lcom/buzzfeed/analytics/model/GAEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/buzzfeed/analytics/model/GAEvent;

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/buzzfeed/analytics/model/GAEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/analytics/model/GAEvent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/analytics/model/GAEvent;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/buzzfeed/analytics/model/GAEvent;->getValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 210
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 213
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 217
    const-string v0, "Google Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 220
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p4, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v2, "Google Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Custom Dimensions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 278
    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 279
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 282
    .local v1, "eventBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    if-eqz p4, :cond_75

    .line 283
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "customDimension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_55

    .line 287
    .end local v0    # "customDimension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_75
    sget-object v2, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 288
    return-void
.end method

.method public trackLotameEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    if-eqz v0, :cond_27

    .line 229
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    invoke-virtual {v0, p1, p2}, Lcom/lotame/android/CrowdControl;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sCrowdControl:Lcom/lotame/android/CrowdControl;

    invoke-virtual {v0}, Lcom/lotame/android/CrowdControl;->bcpAsync()Landroid/os/AsyncTask;

    .line 231
    const-string v0, "Lotame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 234
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lotame tracking must be initialized with a client id in onApplicationCreate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public trackPageView(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "customDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 241
    .local v2, "screenViewBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    if-eqz p2, :cond_2f

    .line 242
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .local v0, "it":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_f

    .line 248
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2f
    sget-object v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 249
    sget-object v3, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 251
    if-eqz p2, :cond_5b

    .line 252
    const-string v3, "Google Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Custom Vars: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_5b
    const-string v3, "Google Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenView= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public trackQuantcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "Quantcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " labels= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/quantcast/measurement/service/QuantcastClient;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public trackQuantcastEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 264
    const-string v0, "Quantcast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " labels= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->logTrackingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p1, p2}, Lcom/quantcast/measurement/service/QuantcastClient;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public trackScreenshot(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    sget v2, Lcom/buzzfeed/analytics/R$string;->ga_category_screenshot:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "category":Ljava/lang/String;
    sget v2, Lcom/buzzfeed/analytics/R$string;->ga_action_screenshot:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method
