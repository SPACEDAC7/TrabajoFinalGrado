.class public interface abstract Lcom/twitter/sdk/android/core/services/ConfigurationService;
.super Ljava/lang/Object;
.source "ConfigurationService.java"


# virtual methods
.method public abstract configuration(Lcom/twitter/sdk/android/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Configuration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/1.1/help/configuration.json"
    .end annotation
.end method
