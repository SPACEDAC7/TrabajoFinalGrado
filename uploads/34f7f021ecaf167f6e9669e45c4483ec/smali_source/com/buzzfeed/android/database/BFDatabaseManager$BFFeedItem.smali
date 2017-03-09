.class Lcom/buzzfeed/android/database/BFDatabaseManager$BFFeedItem;
.super Ljava/lang/Object;
.source "BFDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/database/BFDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BFFeedItem"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "bfFeedItem"


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/database/BFDatabaseManager;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/database/BFDatabaseManager;)V
    .registers 2

    .prologue
    .line 584
    iput-object p1, p0, Lcom/buzzfeed/android/database/BFDatabaseManager$BFFeedItem;->this$0:Lcom/buzzfeed/android/database/BFDatabaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
