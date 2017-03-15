.class public Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/ads/AdRequest;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/AdRequest;Landroid/content/Context;Z)V
    .registers 5
    .param p1, "request"    # Lcom/google/ads/AdRequest;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shareLocation"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    .line 37
    iput-boolean p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->c:Z

    .line 39
    if-nez p2, :cond_d

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Z

    .line 44
    :goto_c
    return-void

    .line 42
    :cond_d
    invoke-virtual {p1, p2}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Z

    goto :goto_c
.end method


# virtual methods
.method public getAgeInYears()Ljava/lang/Integer;
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 67
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 70
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v2, v1, :cond_3c

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
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
    .line 88
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_a

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_9
.end method

.method public getLocation()Landroid/location/Location;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v0}, Lcom/google/ads/AdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->c:Z

    if-nez v0, :cond_e

    .line 101
    :cond_c
    const/4 v0, 0x0

    .line 104
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_d
.end method

.method public isTesting()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Z

    return v0
.end method
