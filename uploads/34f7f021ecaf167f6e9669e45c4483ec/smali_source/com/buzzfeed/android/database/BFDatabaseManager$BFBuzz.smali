.class Lcom/buzzfeed/android/database/BFDatabaseManager$BFBuzz;
.super Ljava/lang/Object;
.source "BFDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/database/BFDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BFBuzz"
.end annotation


# static fields
.field public static final BLURB:Ljava/lang/String; = "blurb"

.field public static final BOOKMARKED:Ljava/lang/String; = "bookmarked"

.field public static final BUZZ_ID:Ljava/lang/String; = "buzzId"

.field public static final JSON:Ljava/lang/String; = "json"

.field public static final LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field public static final LINK:Ljava/lang/String; = "link"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TABLE_NAME:Ljava/lang/String; = "bfBuzz"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/database/BFDatabaseManager;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/database/BFDatabaseManager;)V
    .registers 2

    .prologue
    .line 592
    iput-object p1, p0, Lcom/buzzfeed/android/database/BFDatabaseManager$BFBuzz;->this$0:Lcom/buzzfeed/android/database/BFDatabaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
