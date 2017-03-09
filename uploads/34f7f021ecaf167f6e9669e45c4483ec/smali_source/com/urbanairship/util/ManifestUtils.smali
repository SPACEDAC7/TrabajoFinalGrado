.class public Lcom/urbanairship/util/ManifestUtils;
.super Ljava/lang/Object;
.source "ManifestUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p0, "activity"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_d
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_18

    move-result-object v2

    .line 45
    :goto_17
    return-object v2

    .line 44
    :catch_18
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public static isPermissionGranted(Ljava/lang/String;)Z
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 26
    :goto_f
    return v0

    .line 27
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isPermissionKnown(Ljava/lang/String;)Z
    .registers 5
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_1
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    .line 58
    const/4 v1, 0x1

    .line 60
    :goto_a
    return v1

    .line 59
    :catch_b
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_a
.end method

.method public static validateManifest()V
    .registers 8

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 73
    .local v3, "receivers":[Landroid/content/pm/ActivityInfo;
    :try_start_1
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_4b

    .line 78
    :goto_10
    if-eqz v3, :cond_6c

    .line 79
    array-length v5, v3

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v5, :cond_6c

    aget-object v1, v3, v4

    .line 81
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    :try_start_18
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    .local v2, "receiverClass":Ljava/lang/Class;
    const-class v6, Lcom/urbanairship/AirshipReceiver;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 83
    iget-boolean v6, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_48

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is exported. This might allow outside applications to message the receiver. Make sure the intent is protected by a permission or prevent the receiver from being exported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_48} :catch_52

    .line 79
    .end local v2    # "receiverClass":Ljava/lang/Class;
    :cond_48
    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 74
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_4b
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unable to query the application\'s receivers."

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_52
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ManifestUtils - Unable to find class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 95
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_6c
    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/util/ManifestUtils;->isPermissionKnown(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 96
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing required permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Verify the applicationId is setin application\'s build.gradle file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_99
    return-void
.end method
