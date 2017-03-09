.class public Lcom/urbanairship/job/Job$Builder;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/job/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private airshipComponentName:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/urbanairship/job/Job$Builder;->action:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/urbanairship/job/Job$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/urbanairship/job/Job$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/urbanairship/job/Job$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/job/Job$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/job/Job$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/job/Job$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/job/Job$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->airshipComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/job/Job$Builder;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/job/Job$Builder;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/urbanairship/job/Job;
    .registers 3

    .prologue
    .line 207
    new-instance v0, Lcom/urbanairship/job/Job;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/job/Job;-><init>(Lcom/urbanairship/job/Job$Builder;Lcom/urbanairship/job/Job$1;)V

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/urbanairship/job/Job$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/urbanairship/job/Job$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/urbanairship/job/Job$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 181
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/urbanairship/job/Job$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/urbanairship/AirshipComponent;",
            ">;)",
            "Lcom/urbanairship/job/Job$Builder;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/urbanairship/AirshipComponent;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/job/Job$Builder;->airshipComponentName:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/urbanairship/job/Job$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;

    .line 118
    return-object p0
.end method
