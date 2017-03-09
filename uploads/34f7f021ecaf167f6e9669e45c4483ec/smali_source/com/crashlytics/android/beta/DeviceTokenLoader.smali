.class public Lcom/crashlytics/android/beta/DeviceTokenLoader;
.super Ljava/lang/Object;
.source "DeviceTokenLoader.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIRFACTOR_DEVICE_TOKEN_PREFIX:Ljava/lang/String; = "assets/com.crashlytics.android.beta/dirfactor-device-token="


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .registers 6
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_23

    .line 70
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "name":Ljava/lang/String;
    const-string v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    .end local v1    # "name":Ljava/lang/String;
    :goto_22
    return-object v2

    :cond_23
    const-string v2, ""

    goto :goto_22
.end method

.method getZipInputStreamOfAppApkFrom(Landroid/content/Context;)Ljava/util/zip/ZipInputStream;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method public bridge synthetic load(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->load(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 28
    .local v6, "start":J
    const-string v1, ""

    .line 29
    .local v1, "token":Ljava/lang/String;
    const/4 v8, 0x0

    .line 34
    .local v8, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->getZipInputStreamOfAppApkFrom(Landroid/content/Context;)Ljava/util/zip/ZipInputStream;

    move-result-object v8

    .line 35
    invoke-virtual {p0, v8}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_e} :catch_71
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_90
    .catchall {:try_start_7 .. :try_end_e} :catchall_b1

    move-result-object v1

    .line 43
    if-eqz v8, :cond_14

    .line 45
    :try_start_11
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_45

    .line 52
    :cond_14
    :goto_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 53
    .local v2, "end":J
    sub-long v10, v2, v6

    long-to-double v10, v10

    const-wide v12, 0x412e848000000000L

    div-double v4, v10, v12

    .line 54
    .local v4, "millis":D
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Beta device token load took "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v1

    .line 46
    .end local v2    # "end":J
    .end local v4    # "millis":D
    :catch_45
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to close the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :catch_52
    move-exception v0

    .line 37
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_53
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to find this app in the PackageManager"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_b1

    .line 43
    if-eqz v8, :cond_14

    .line 45
    :try_start_60
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_14

    .line 46
    :catch_64
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to close the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 38
    .end local v0    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_72
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to find the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_b1

    .line 43
    if-eqz v8, :cond_14

    .line 45
    :try_start_7f
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_14

    .line 46
    :catch_83
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to close the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :catch_90
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_91
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to read the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_b1

    .line 43
    if-eqz v8, :cond_14

    .line 45
    :try_start_9e
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a3

    goto/16 :goto_14

    .line 46
    :catch_a3
    move-exception v0

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string v10, "Beta"

    const-string v11, "Failed to close the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_b1
    move-exception v9

    if-eqz v8, :cond_b7

    .line 45
    :try_start_b4
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    .line 48
    :cond_b7
    :goto_b7
    throw v9

    .line 46
    :catch_b8
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v10

    const-string v11, "Beta"

    const-string v12, "Failed to close the APK file"

    invoke-interface {v10, v11, v12, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b7
.end method
