.class final Lcom/buzzfeed/android/util/BuzzUtils$2;
.super Ljava/util/ArrayList;
.source "BuzzUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/BuzzUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    const-string v0, "buzzfeed://buzz/"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/util/BuzzUtils$2;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v0, "/buzz/"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/util/BuzzUtils$2;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v0, "/"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/util/BuzzUtils$2;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method
