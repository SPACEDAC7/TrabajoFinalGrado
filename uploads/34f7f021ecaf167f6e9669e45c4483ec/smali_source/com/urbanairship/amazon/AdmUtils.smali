.class public Lcom/urbanairship/amazon/AdmUtils;
.super Ljava/lang/Object;
.source "AdmUtils.java"


# static fields
.field private static isAdmAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-static {}, Lcom/urbanairship/amazon/AdmUtils;->isAdmSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    invoke-static {p0}, Lcom/urbanairship/amazon/AdmWrapper;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isAdmAvailable()Z
    .registers 2

    .prologue
    .line 21
    sget-object v1, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 22
    sget-object v1, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 32
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_a
    return v1

    .line 26
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_b
    :try_start_b
    const-string v1, "com.amazon.device.messaging.ADM"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable:Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_17} :catch_1e

    .line 32
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_17
    sget-object v1, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_a

    .line 28
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1e
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable:Ljava/lang/Boolean;

    goto :goto_17
.end method

.method public static isAdmSupported()Z
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/urbanairship/amazon/AdmUtils;->isAdmAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/urbanairship/amazon/AdmWrapper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static startRegistration(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-static {}, Lcom/urbanairship/amazon/AdmUtils;->isAdmSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    invoke-static {p0}, Lcom/urbanairship/amazon/AdmWrapper;->startRegistration(Landroid/content/Context;)V

    .line 51
    :cond_9
    return-void
.end method
