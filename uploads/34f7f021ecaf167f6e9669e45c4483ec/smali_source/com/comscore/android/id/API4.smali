.class public Lcom/comscore/android/id/API4;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/comscore/android/id/API4;->a:Z

    sput-boolean v0, Lcom/comscore/android/id/API4;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPackageInstalledFromGooglePlayStore(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/comscore/android/id/API4;->a:Z

    if-eqz v2, :cond_9

    sget-boolean v0, Lcom/comscore/android/id/API4;->b:Z

    :goto_8
    return v0

    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_36

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_2f

    move-result-object v2

    const-string v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "com.google.play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_2a
    sput-boolean v0, Lcom/comscore/android/id/API4;->a:Z

    sput-boolean v0, Lcom/comscore/android/id/API4;->b:Z

    goto :goto_8

    :catch_2f
    move-exception v2

    sput-boolean v0, Lcom/comscore/android/id/API4;->a:Z

    sput-boolean v1, Lcom/comscore/android/id/API4;->b:Z

    move v0, v1

    goto :goto_8

    :cond_36
    sput-boolean v0, Lcom/comscore/android/id/API4;->a:Z

    sput-boolean v1, Lcom/comscore/android/id/API4;->b:Z

    move v0, v1

    goto :goto_8
.end method
