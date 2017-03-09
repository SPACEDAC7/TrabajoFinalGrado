.class public Lcom/comscore/android/id/DeviceId;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/android/id/DeviceId;->b:Ljava/lang/String;

    iput v0, p0, Lcom/comscore/android/id/DeviceId;->c:I

    iput v0, p0, Lcom/comscore/android/id/DeviceId;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/android/id/DeviceId;->b:Ljava/lang/String;

    iput p2, p0, Lcom/comscore/android/id/DeviceId;->c:I

    iput p3, p0, Lcom/comscore/android/id/DeviceId;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/android/id/DeviceId;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/comscore/android/id/DeviceId;->b:Ljava/lang/String;

    iput p3, p0, Lcom/comscore/android/id/DeviceId;->c:I

    iput p4, p0, Lcom/comscore/android/id/DeviceId;->d:I

    return-void
.end method


# virtual methods
.method public getCommonness()I
    .registers 2

    iget v0, p0, Lcom/comscore/android/id/DeviceId;->c:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/android/id/DeviceId;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/android/id/DeviceId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistency()I
    .registers 2

    iget v0, p0, Lcom/comscore/android/id/DeviceId;->d:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comscore/android/id/DeviceId;->getCommonness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/comscore/android/id/DeviceId;->getPersistency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
