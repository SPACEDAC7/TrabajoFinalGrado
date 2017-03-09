.class public final Lcom/urbanairship/actions/ActionArguments;
.super Ljava/lang/Object;
.source "ActionArguments.java"


# static fields
.field public static final ACTION_SCHEDULE_METADATA:Ljava/lang/String; = "com.urbanairship.ACTION_SCHEDULE"

.field public static final PUSH_MESSAGE_METADATA:Ljava/lang/String; = "com.urbanairship.PUSH_MESSAGE"

.field public static final REGISTRY_ACTION_NAME_METADATA:Ljava/lang/String; = "com.urbanairship.REGISTRY_ACTION_NAME"

.field public static final REMOTE_INPUT_METADATA:Ljava/lang/String; = "com.urbanairship.REMOTE_INPUT"

.field public static final RICH_PUSH_ID_METADATA:Ljava/lang/String; = "com.urbanairship.RICH_PUSH_ID_METADATA"


# instance fields
.field private final metadata:Landroid/os/Bundle;

.field private final situation:I

.field private final value:Lcom/urbanairship/actions/ActionValue;


# direct methods
.method public constructor <init>(ILcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "situation"    # I
    .param p2, "value"    # Lcom/urbanairship/actions/ActionValue;
    .param p3, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/urbanairship/actions/ActionArguments;->situation:I

    .line 56
    if-nez p2, :cond_c

    new-instance p2, Lcom/urbanairship/actions/ActionValue;

    .end local p2    # "value":Lcom/urbanairship/actions/ActionValue;
    invoke-direct {p2}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    :cond_c
    iput-object p2, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    .line 57
    if-nez p3, :cond_18

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_15
    iput-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    .line 58
    return-void

    .line 57
    :cond_18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_15
.end method


# virtual methods
.method public getMetadata()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSituation()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/urbanairship/actions/ActionArguments;->situation:I

    return v0
.end method

.method public getValue()Lcom/urbanairship/actions/ActionValue;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionArguments { situation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/actions/ActionArguments;->situation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
