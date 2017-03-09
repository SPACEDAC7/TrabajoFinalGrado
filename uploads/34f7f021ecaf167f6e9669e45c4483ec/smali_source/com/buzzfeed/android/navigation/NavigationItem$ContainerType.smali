.class public final enum Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;
.super Ljava/lang/Enum;
.source "NavigationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/navigation/NavigationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContainerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

.field public static final enum BUFFET:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

.field public static final enum BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

.field public static final enum EXPLORE:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;


# instance fields
.field private final classToLaunch:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final feedArgumentKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    const-string v1, "BUFFET"

    const-class v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;

    const-string v3, "KEY_FEED"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .line 29
    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    const-string v1, "BUFFET_TAB"

    const-class v2, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;

    const-string v3, "KEY_FEED"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .line 30
    new-instance v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    const-string v1, "EXPLORE"

    const-class v2, Lcom/buzzfeed/android/ui/explore/ExploreFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->EXPLORE:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    sget-object v1, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->BUFFET_TAB:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->EXPLORE:Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->$VALUES:[Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p4, "feedArgumentKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "classToLaunch":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->classToLaunch:Ljava/lang/Class;

    .line 37
    iput-object p4, p0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->feedArgumentKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->$VALUES:[Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;

    return-object v0
.end method


# virtual methods
.method public buildFragmentArgsForFeed(Lcom/buzzfeed/android/data/Feed;)Landroid/os/Bundle;
    .registers 4
    .param p1, "feed"    # Lcom/buzzfeed/android/data/Feed;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->isFeedContentSupported()Z

    move-result v1

    if-nez v1, :cond_8

    .line 51
    const/4 v0, 0x0

    .line 56
    :goto_7
    return-object v0

    .line 54
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->feedArgumentKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_7
.end method

.method public getClassToLaunch()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->classToLaunch:Ljava/lang/Class;

    return-object v0
.end method

.method public isFeedContentSupported()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/buzzfeed/android/navigation/NavigationItem$ContainerType;->feedArgumentKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
