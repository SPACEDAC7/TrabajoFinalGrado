.class Lcom/buzzfeed/analytics/client/DustbusterClient$1;
.super Ljava/util/ArrayList;
.source "DustbusterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/analytics/client/DustbusterClient;->getAuthorInfo(Lcom/buzzfeed/toolkit/content/PostContent;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/analytics/client/DustbusterClient;


# direct methods
.method constructor <init>(Lcom/buzzfeed/analytics/client/DustbusterClient;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/analytics/client/DustbusterClient;
    .param p2, "x0"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object p1, p0, Lcom/buzzfeed/analytics/client/DustbusterClient$1;->this$0:Lcom/buzzfeed/analytics/client/DustbusterClient;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient$1;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0, v0}, Lcom/buzzfeed/analytics/client/DustbusterClient$1;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
