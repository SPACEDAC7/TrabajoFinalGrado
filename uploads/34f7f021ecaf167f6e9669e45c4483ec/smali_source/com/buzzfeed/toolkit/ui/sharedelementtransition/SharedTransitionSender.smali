.class public Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;
.super Ljava/lang/Object;
.source "SharedTransitionSender.java"


# instance fields
.field private mElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "elements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;->mElements:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public getElementForKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionSender;->mElements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/sharedelementtransition/SharedTransitionElement;

    return-object v0
.end method
