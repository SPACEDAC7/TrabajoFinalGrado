.class public Lcom/buzzfeed/android/navigation/NavigationItem;
.super Ljava/lang/Object;
.source "NavigationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;
    }
.end annotation


# instance fields
.field public feeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public iconResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public titleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "titleResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "iconResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "type"    # Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->id:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->titleResId:I

    .line 86
    iput p3, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->iconResId:I

    .line 87
    iput-object p4, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/buzzfeed/android/navigation/NavigationItem$ContainerType;Ljava/util/List;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "titleResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "iconResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "type"    # Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p5, "feeds":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/Feed;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->id:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->titleResId:I

    .line 75
    iput p3, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->iconResId:I

    .line 76
    iput-object p4, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->type:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .line 77
    iput-object p5, p0, Lcom/buzzfeed/android/navigation/NavigationItem;->feeds:Ljava/util/List;

    .line 78
    return-void
.end method
