.class public final Lcom/google/android/gms/dynamic/zzh;
.super Lcom/google/android/gms/dynamic/zzc$zza;


# instance fields
.field private Qg:Landroid/support/v4/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/zzc$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public static zza(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/zzh;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/google/android/gms/dynamic/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zzh;-><init>(Landroid/support/v4/app/Fragment;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getArguments()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    return v0
.end method

.method public getRetainInstance()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getRetainInstance()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetRequestCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetRequestCode()I

    move-result v0

    return v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public isAdded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isDetached()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isInLayout()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public isRemoving()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public isResumed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public zzac(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public zzad(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public zzbdp()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzbdq()Lcom/google/android/gms/dynamic/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzh;->zza(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/zzh;

    move-result-object v0

    return-object v0
.end method

.method public zzbdr()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzbds()Lcom/google/android/gms/dynamic/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzh;->Qg:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzh;->zza(Landroid/support/v4/app/Fragment;)Lcom/google/android/gms/dynamic/zzh;

    move-result-object v0

    return-object v0
.end method
