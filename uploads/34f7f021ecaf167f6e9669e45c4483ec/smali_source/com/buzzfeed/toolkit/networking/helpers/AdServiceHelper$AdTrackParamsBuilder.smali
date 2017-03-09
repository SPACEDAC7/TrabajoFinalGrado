.class public final Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;
.super Ljava/lang/Object;
.source "AdServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdTrackParamsBuilder"
.end annotation


# static fields
.field private static final REFERER:Ljava/lang/String; = "Referer"


# instance fields
.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public referer(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;
    .registers 4
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AdServiceHelper$AdTrackParamsBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method
