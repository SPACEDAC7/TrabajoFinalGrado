.class public Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;
.super Landroid/preference/Preference;
.source "UAChannelIDPreference.java"


# instance fields
.field private mChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->initialize()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->initialize()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->initialize()V

    .line 23
    return-void
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 41
    const-string v0, "UA Channel ID"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->mChannelId:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->mChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method private shareChannelId()V
    .registers 6

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Urban Airship channel id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->mChannelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "UA Share Channel Id"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 49
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UAChannelIDPreference;->shareChannelId()V

    .line 50
    return-void
.end method
