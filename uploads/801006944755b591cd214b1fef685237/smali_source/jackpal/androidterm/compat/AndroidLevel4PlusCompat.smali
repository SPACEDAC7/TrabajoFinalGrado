.class Ljackpal/androidterm/compat/AndroidLevel4PlusCompat;
.super Ljava/lang/Object;
.source "AndroidCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSDKInt()I
    .registers 1

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
