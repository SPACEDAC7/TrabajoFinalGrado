.class final Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;
.super Ljava/util/HashMap;
.source "FixedShareBarABTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/experiment/FixedShareBarABTest;->getFixedShareBarVariant(Landroid/content/Context;)Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 43
    iput-object p1, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    iput-object p2, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v0, "Control"

    iget-object v1, p0, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->val$abVariantBlockFallback:Lcom/buzzfeed/androidabframework/data/VariantBlockInterface;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Solid_Buttons"

    new-instance v1, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2$1;-><init>(Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "Flat_Buttons"

    new-instance v1, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2$2;-><init>(Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/experiment/FixedShareBarABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
