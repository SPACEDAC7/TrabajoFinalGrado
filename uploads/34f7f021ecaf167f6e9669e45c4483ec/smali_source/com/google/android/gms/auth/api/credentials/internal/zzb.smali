.class public Lcom/google/android/gms/auth/api/credentials/internal/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zzfx(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_9
    const-string v3, "account type cannot be empty"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    move v2, v1

    :cond_27
    const-string v0, "Account type must be an http or https URI"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzb(ZLjava/lang/Object;)V

    return-object p0

    :cond_2d
    move v0, v2

    goto :goto_9
.end method
