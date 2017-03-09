.class public Lcom/facebook/login/LoginClient$Request;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/LoginClient$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private final defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private isRerequest:Z

.field private final loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 522
    new-instance v0, Lcom/facebook/login/LoginClient$Request$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$Request$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-boolean v4, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "enumValue":Ljava/lang/String;
    if-eqz v0, :cond_44

    invoke-static {v0}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    :goto_11
    iput-object v2, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v1, "permissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 499
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/facebook/login/DefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;

    move-result-object v3

    :cond_2c
    iput-object v3, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    :goto_41
    iput-boolean v2, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 505
    return-void

    .end local v1    # "permissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_44
    move-object v2, v3

    .line 496
    goto :goto_11

    .restart local v1    # "permissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_46
    move v2, v4

    .line 504
    goto :goto_41
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/login/LoginClient$1;

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "loginBehavior"    # Lcom/facebook/login/LoginBehavior;
    .param p3, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;
    .param p4, "applicationId"    # Ljava/lang/String;
    .param p5, "authId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/login/LoginBehavior;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 454
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 455
    if-eqz p2, :cond_13

    .end local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_a
    iput-object p2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 456
    iput-object p3, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 457
    iput-object p4, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    .line 458
    iput-object p5, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    .line 459
    return-void

    .line 455
    .restart local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method isRerequest()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    return v0
.end method

.method setPermissions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "permissions"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    .line 468
    return-void
.end method

.method setRerequest(Z)V
    .registers 2
    .param p1, "isRerequest"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    .line 492
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/login/LoginClient$Request;->permissions:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 516
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    invoke-virtual {v0}, Lcom/facebook/login/DefaultAudience;->name()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->authId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->isRerequest:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    :goto_34
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 520
    return-void

    :cond_39
    move-object v0, v1

    .line 514
    goto :goto_b

    .line 519
    :cond_3b
    const/4 v0, 0x0

    goto :goto_34
.end method
