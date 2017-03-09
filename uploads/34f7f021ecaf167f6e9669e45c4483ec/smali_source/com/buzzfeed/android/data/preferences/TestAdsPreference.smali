.class public final Lcom/buzzfeed/android/data/preferences/TestAdsPreference;
.super Lcom/buzzfeed/android/data/preferences/StringPreference;
.source "TestAdsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/preferences/StringPreference;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultValue(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/preferences/TestAdsPreference;->getDefaultValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyResourceId()I
    .registers 2

    .prologue
    .line 18
    const v0, 0x7f09029c

    return v0
.end method
