.class public Lcom/twitter/sdk/android/core/models/UserValue;
.super Ljava/lang/Object;
.source "UserValue.java"


# instance fields
.field public final idStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "idStr"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserValue;->idStr:Ljava/lang/String;

    .line 28
    return-void
.end method
