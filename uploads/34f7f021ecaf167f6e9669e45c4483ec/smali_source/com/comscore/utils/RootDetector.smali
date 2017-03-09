.class public Lcom/comscore/utils/RootDetector;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static b()Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_f

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isDeviceRooted()Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/comscore/utils/RootDetector;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/comscore/utils/RootDetector;->b()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method
