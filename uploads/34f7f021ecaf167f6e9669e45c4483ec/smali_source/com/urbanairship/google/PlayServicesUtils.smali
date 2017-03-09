.class public Lcom/urbanairship/google/PlayServicesUtils;
.super Ljava/lang/Object;
.source "PlayServicesUtils.java"


# static fields
.field private static final CONNECTION_SUCCESS:I = 0x0

.field private static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final GOOGLE_PLAY_STORE_PACKAGE_OLD:Ljava/lang/String; = "com.google.market"

.field public static final MISSING_PLAY_SERVICE_DEPENDENCY:I = -0x1

.field private static isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

.field private static isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;

.field private static isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

.field private static isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

.field private static isGooglePlayStoreAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAnyPlayServicesError(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 80
    :cond_6
    :goto_6
    return-void

    .line 60
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_2c

    move-result v1

    .line 66
    .local v1, "errorCode":I
    if-eqz v1, :cond_6

    .line 70
    invoke-static {v1}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isUserRecoverableError(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 71
    const-string v2, "Launching Play Services Activity to resolve error."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 73
    :try_start_18
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/google/PlayServicesErrorActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_22} :catch_23

    goto :goto_6

    .line 74
    :catch_23
    move-exception v0

    .line 75
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 61
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "errorCode":I
    :catch_2c
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play services developer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "errorCode":I
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not user recoverable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static isFusedLocationDependencyAvailable()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 152
    sget-object v2, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    if-nez v2, :cond_11

    .line 153
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 154
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    .line 166
    .local v1, "googleApiClientClass":Ljava/lang/Class;
    :cond_11
    :goto_11
    sget-object v2, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 157
    .end local v1    # "googleApiClientClass":Ljava/lang/Class;
    :cond_18
    :try_start_18
    const-string v2, "com.google.android.gms.location.LocationServices"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    const-string v2, "com.google.android.gms.common.api.GoogleApiClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 159
    .restart local v1    # "googleApiClientClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_34} :catch_35

    goto :goto_11

    .line 160
    :catch_35
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/google/PlayServicesUtils;->isFusedLocationDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_11

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3d
    move v2, v3

    .line 159
    goto :goto_2e
.end method

.method public static isGoogleAdsDependencyAvailable()Z
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 176
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_11

    .line 177
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v1

    if-nez v1, :cond_18

    .line 178
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;

    .line 189
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_11
    :goto_11
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 181
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_18
    :try_start_18
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 182
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_11

    .line 183
    :catch_25
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_11
.end method

.method public static isGoogleCloudMessagingDependencyAvailable()Z
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_11

    .line 130
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v1

    if-nez v1, :cond_18

    .line 131
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    .line 143
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_11
    :goto_11
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 134
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_18
    :try_start_18
    const-string v1, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 135
    const-string v1, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 136
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_29} :catch_2a

    goto :goto_11

    .line 137
    :catch_2a
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_11
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 98
    invoke-static {p0}, Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 100
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static isGooglePlayServicesDependencyAvailable()Z
    .registers 2

    .prologue
    .line 110
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_10

    .line 113
    :try_start_4
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 114
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_10} :catch_17

    .line 120
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_10
    :goto_10
    sget-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 115
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_17
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayServicesDependencyAvailable:Ljava/lang/Boolean;

    goto :goto_10
.end method

.method public static isGooglePlayStoreAvailable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    sget-object v0, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    .line 201
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/urbanairship/google/PlayServicesUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "com.google.market"

    invoke-static {p0, v0}, Lcom/urbanairship/google/PlayServicesUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable:Ljava/lang/Boolean;

    .line 203
    :cond_1b
    sget-object v0, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 201
    :cond_22
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 215
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    .line 216
    const/4 v1, 0x1

    .line 218
    :goto_a
    return v1

    .line 217
    :catch_b
    move-exception v0

    .line 218
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_a
.end method
