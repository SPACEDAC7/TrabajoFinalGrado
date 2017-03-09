.class Landroid/support/v13/app/FragmentCompatICSMR1;
.super Ljava/lang/Object;
.source "FragmentCompatICSMR1.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "isVisible"    # Z

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 26
    :cond_9
    return-void
.end method
