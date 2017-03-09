.class public Lcom/google/android/gms/internal/zzda;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzda$zza;
    }
.end annotation


# instance fields
.field private mStarted:Z

.field private final zzako:Ljava/lang/Object;

.field private final zzavi:I

.field private final zzavk:I

.field private zzawh:Z

.field private final zzawi:Lcom/google/android/gms/internal/zzcy;

.field private final zzawj:Lcom/google/android/gms/internal/zzjh;

.field private final zzawk:I

.field private final zzawl:I

.field private final zzawm:I

.field private final zzawn:I

.field private final zzawo:I

.field private final zzawp:I

.field private final zzawq:Ljava/lang/String;

.field private zzbl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcy;Lcom/google/android/gms/internal/zzjh;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzbl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzda;->zzawi:Lcom/google/android/gms/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzda;->zzawj:Lcom/google/android/gms/internal/zzjh;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbev:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzavi:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbew:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawl:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbex:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzavk:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbey:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawm:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfb:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawn:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfd:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawo:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfe:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawp:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbez:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzda;->zzawk:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfg:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzawq:Ljava/lang/String;

    const-string v0, "ContentFetchTask"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzda;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzda;->zzji()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgp()Lcom/google/android/gms/internal/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzda;->zzjk()V

    :goto_18
    iget v0, p0, Lcom/google/android/gms/internal/zzda;->zzawk:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_48

    :goto_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :goto_23
    :try_start_23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_58

    if-eqz v0, :cond_56

    :try_start_27
    const-string v0, "ContentFetchTask: waiting"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_31} :catch_32
    .catchall {:try_start_27 .. :try_end_31} :catchall_58

    goto :goto_23

    :catch_32
    move-exception v0

    goto :goto_23

    :cond_34
    :try_start_34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/app/Activity;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_48

    goto :goto_18

    :catch_38
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_3f
    :try_start_3f
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzda;->zzjk()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_47} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_47} :catch_48

    goto :goto_18

    :catch_48
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawj:Lcom/google/android/gms/internal/zzjh;

    const-string v2, "ContentFetchTask.run"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzjh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_20

    :cond_56
    :try_start_56
    monitor-exit v1

    goto :goto_0

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public wakeup()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "ContentFetchThread: wakeup"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcx;)Lcom/google/android/gms/internal/zzda$zza;
    .registers 12
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgp()Lcom/google/android/gms/internal/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcz;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbff:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto :goto_9

    :cond_48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_8d

    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_8d

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcx;->zzb(Ljava/lang/String;ZFFFF)V

    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v8, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto :goto_9

    :cond_86
    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto/16 :goto_9

    :cond_8d
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_ae

    instance-of v0, p1, Lcom/google/android/gms/internal/zzmd;

    if-nez v0, :cond_ae

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcx;->zzjd()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzcx;Z)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v8}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto/16 :goto_9

    :cond_a7
    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto/16 :goto_9

    :cond_ae
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d4

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v7

    move v1, v7

    :goto_b6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_cd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcx;)Lcom/google/android/gms/internal/zzda$zza;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/zzda$zza;->zzawy:I

    add-int/2addr v1, v3

    iget v2, v2, Lcom/google/android/gms/internal/zzda$zza;->zzawz:I

    add-int/2addr v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_cd
    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto/16 :goto_9

    :cond_d4
    new-instance v0, Lcom/google/android/gms/internal/zzda$zza;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/zzda$zza;-><init>(Lcom/google/android/gms/internal/zzda;II)V

    goto/16 :goto_9
.end method

.method zza(Landroid/app/Activity;)V
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_29

    move-result-object v0

    :cond_23
    :goto_23
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzda;->zzh(Landroid/view/View;)Z

    goto :goto_2

    :catch_29
    move-exception v1

    const-string v1, "Failed getting root view of activity. Content not extracted."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_23
.end method

.method zza(Lcom/google/android/gms/internal/zzcx;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcx;->zzjc()V

    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcx;->zza(Ljava/lang/String;ZFFFF)V

    :cond_68
    :goto_68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcx;->zzix()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzawi:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcy;->zzb(Lcom/google/android/gms/internal/zzcx;)Z

    :cond_73
    :goto_73
    return-void

    :cond_74
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcx;->zza(Ljava/lang/String;ZFFFF)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8b} :catch_93

    goto :goto_68

    :catch_8c
    move-exception v0

    const-string v0, "Json string may be malformed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_73

    :catch_93
    move-exception v0

    const-string v1, "Failed to get webview content."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawj:Lcom/google/android/gms/internal/zzjh;

    const-string v2, "ContentFetchTask.processWebViewContent"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzjh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_73
.end method

.method zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .registers 4

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzcx;Z)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayu()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcx;->zzjd()V

    new-instance v0, Lcom/google/android/gms/internal/zzda$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzda$2;-><init>(Lcom/google/android/gms/internal/zzda;Lcom/google/android/gms/internal/zzcx;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_7
.end method

.method zzh(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_b
.end method

.method zzh(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzda$1;-><init>(Lcom/google/android/gms/internal/zzda;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_3
.end method

.method zzi(Landroid/view/View;)V
    .registers 10

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzcx;

    iget v1, p0, Lcom/google/android/gms/internal/zzda;->zzavi:I

    iget v2, p0, Lcom/google/android/gms/internal/zzda;->zzawl:I

    iget v3, p0, Lcom/google/android/gms/internal/zzda;->zzavk:I

    iget v4, p0, Lcom/google/android/gms/internal/zzda;->zzawm:I

    iget v5, p0, Lcom/google/android/gms/internal/zzda;->zzawn:I

    iget v6, p0, Lcom/google/android/gms/internal/zzda;->zzawo:I

    iget v7, p0, Lcom/google/android/gms/internal/zzda;->zzawp:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcx;-><init>(IIIIIII)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcx;)Lcom/google/android/gms/internal/zzda$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->zzje()V

    iget v2, v1, Lcom/google/android/gms/internal/zzda$zza;->zzawy:I

    if-nez v2, :cond_23

    iget v2, v1, Lcom/google/android/gms/internal/zzda$zza;->zzawz:I

    if-nez v2, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget v2, v1, Lcom/google/android/gms/internal/zzda$zza;->zzawz:I

    if-nez v2, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcx;->zzjf()I

    move-result v2

    if-eqz v2, :cond_22

    :cond_2d
    iget v1, v1, Lcom/google/android/gms/internal/zzda$zza;->zzawz:I

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawi:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcx;)Z

    move-result v1

    if-nez v1, :cond_22

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawi:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcy;->zzc(Lcom/google/android/gms/internal/zzcx;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_22

    :catch_3f
    move-exception v0

    const-string v1, "Exception in fetchContentOnUIThread"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzawj:Lcom/google/android/gms/internal/zzjh;

    const-string v2, "ContentFetchTask.fetchContent"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzjh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public zzjh()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->mStarted:Z

    if-eqz v0, :cond_e

    const-string v0, "Content hash thread already started, quiting..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->mStarted:Z

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzda;->start()V

    goto :goto_d

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method zzji()Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgp()Lcom/google/android/gms/internal/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcz;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "keyguard"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_21

    if-nez v1, :cond_23

    :cond_21
    move v0, v2

    goto :goto_c

    :cond_23
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v2

    goto :goto_c

    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzda;->zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzda;->zzh(Landroid/content/Context;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_52} :catch_59

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_c

    :cond_57
    move v0, v2

    goto :goto_c

    :catch_59
    move-exception v0

    move v0, v2

    goto :goto_c
.end method

.method public zzjj()Lcom/google/android/gms/internal/zzcx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzda;->zzawi:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->zzjg()Lcom/google/android/gms/internal/zzcx;

    move-result-object v0

    return-object v0
.end method

.method public zzjk()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzda;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public zzjl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzda;->zzawh:Z

    return v0
.end method
