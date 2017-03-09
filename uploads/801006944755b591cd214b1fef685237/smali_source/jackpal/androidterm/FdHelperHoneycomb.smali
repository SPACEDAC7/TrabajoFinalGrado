.class Ljackpal/androidterm/FdHelperHoneycomb;
.super Ljava/lang/Object;
.source "TermExec.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFd(Landroid/os/ParcelFileDescriptor;)I
    .registers 2
    .param p0, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    return v0
.end method
