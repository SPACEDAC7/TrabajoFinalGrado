.class public Lcom/google/android/gms/internal/zzmk;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;)V
    .registers 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    return-void
.end method

.method private final zza(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzmd;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    check-cast p1, Lcom/google/android/gms/internal/zzmd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzwy()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8
.end method

.method private static zza(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/gms/internal/zzmk$3;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzmk$3;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzmk$2;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzmk$2;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmk$1;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzmk$1;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .registers 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/google/android/gms/internal/zzmk$6;

    invoke-direct {v3, p4, v2}, Lcom/google/android/gms/internal/zzmk$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzmk$5;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzmk$5;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmk$4;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/zzmk$4;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final zzyr()Z
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzmd;

    if-nez v0, :cond_a

    const-string v0, "Tried to close a WebView that wasn\'t an AdWebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzmd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "Tried to close an AdWebView not associated with an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    goto :goto_9
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "JS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_60
    return v0

    :cond_61
    sget-object v1, Lcom/google/android/gms/internal/zzmk$7;->M:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_88

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    :goto_73
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_60

    :pswitch_78
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    goto :goto_73

    :pswitch_7c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_73

    :pswitch_80
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    goto :goto_73

    :pswitch_84
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_73

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_80
        :pswitch_84
    .end packed-switch
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8

    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 15

    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_d
    return-void

    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_26

    cmp-long v0, p5, v0

    if-gtz v0, :cond_23

    const-wide/32 v0, 0x100000

    cmp-long v0, p5, v0

    if-gtz v0, :cond_23

    :goto_1f
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_d

    :cond_23
    const-wide/16 p5, 0x0

    goto :goto_1f

    :cond_26
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_3c

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, p3

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    goto :goto_1f

    :cond_3c
    const-wide/32 v2, 0x100000

    sub-long/2addr v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_49

    add-long/2addr p3, p5

    :cond_49
    move-wide p5, p3

    goto :goto_1f
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmk;->zzyr()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_a
    return-void
.end method

.method public final onHideCustomView()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Could not get ad overlay when hiding custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzpl()V

    goto :goto_d
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 11

    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p3

    const-wide/32 v2, 0x20000

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_11
    return-void

    :cond_12
    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_11
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method protected final zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmk;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "Could not get ad overlay when showing custom view."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    goto :goto_10
.end method

.method protected zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .registers 10

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p7, :cond_f

    invoke-static {p1, v0, p3, p4, p6}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    :goto_d
    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-static {v0, p3, p5}, Lcom/google/android/gms/internal/zzmk;->zza(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_d

    :catch_13
    move-exception v0

    const-string v1, "Fail to display Dialog."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
