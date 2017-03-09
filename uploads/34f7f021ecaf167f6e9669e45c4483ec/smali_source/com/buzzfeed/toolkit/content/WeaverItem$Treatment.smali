.class public final enum Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
.super Ljava/lang/Enum;
.source "WeaverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/WeaverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Treatment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

.field public static final enum BREAKING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "breaking"
    .end annotation
.end field

.field public static final enum BULLETED_LIST:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bulleted-list"
    .end annotation
.end field

.field public static final enum FEATURED:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "featured"
    .end annotation
.end field

.field public static final enum FEATURED_NEWS:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "featured-news"
    .end annotation
.end field

.field public static final enum QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quiz"
    .end annotation
.end field

.field public static final enum TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trending"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "FEATURED"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 90
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "FEATURED_NEWS"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED_NEWS:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 92
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "QUIZ"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 94
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "TRENDING"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 96
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "BULLETED_LIST"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 98
    new-instance v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    const-string v1, "BREAKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BREAKING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->FEATURED_NEWS:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->QUIZ:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->TRENDING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BULLETED_LIST:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->BREAKING:Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->$VALUES:[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->$VALUES:[Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/content/WeaverItem$Treatment;

    return-object v0
.end method
