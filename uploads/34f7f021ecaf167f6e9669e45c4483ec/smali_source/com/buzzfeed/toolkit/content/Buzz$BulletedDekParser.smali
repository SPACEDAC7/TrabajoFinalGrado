.class Lcom/buzzfeed/toolkit/content/Buzz$BulletedDekParser;
.super Ljava/lang/Object;
.source "Buzz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BulletedDekParser"
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final LIST_ITEM_MATCH:Ljava/lang/String; = "<li>(.+?)</li>"

.field private static final LIST_ITEM_PATTERN:Ljava/util/regex/Pattern;

.field private static final REMOVE_TAG_MATCH:Ljava/lang/String; = "<[^>]*>"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1497
    const-string v0, "<li>(.+?)</li>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/content/Buzz$BulletedDekParser;->LIST_ITEM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBulletedDek(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    .local v1, "listItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 1512
    :cond_d
    return-object v1

    .line 1504
    :cond_e
    sget-object v3, Lcom/buzzfeed/toolkit/content/Buzz$BulletedDekParser;->LIST_ITEM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1506
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_14
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1507
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "item":Ljava/lang/String;
    const-string v3, "<[^>]*>"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method
