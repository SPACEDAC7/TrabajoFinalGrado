.class public interface abstract Lcom/adjust/sdk/IPackageHandler;
.super Ljava/lang/Object;
.source "IPackageHandler.java"


# virtual methods
.method public abstract addPackage(Lcom/adjust/sdk/ActivityPackage;)V
.end method

.method public abstract closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V
.end method

.method public abstract init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
.end method

.method public abstract pauseSending()V
.end method

.method public abstract resumeSending()V
.end method

.method public abstract sendFirstPackage()V
.end method

.method public abstract sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
.end method

.method public abstract teardown(Z)V
.end method

.method public abstract updatePackages(Lcom/adjust/sdk/SessionParameters;)V
.end method
