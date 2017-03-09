.class public Lcom/comscore/utils/id/IdChecker;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/comscore/utils/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0123456789ABCDEF"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0123456789abcdef"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "9774d56d682e549c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "9774D56D682E549C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANDROID_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/utils/id/IdChecker;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/Storage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/id/IdChecker;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/comscore/utils/id/IdChecker;->e:Lcom/comscore/utils/Storage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdChecker;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/comscore/utils/id/IdChecker;->e:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private b()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_11
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/id/IdChecker;->e:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_23
    iget-object v0, p0, Lcom/comscore/utils/id/IdChecker;->e:Lcom/comscore/utils/Storage;

    invoke-virtual {v0, p2, p1}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lcom/comscore/utils/id/IdChecker;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdChecker;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/comscore/utils/id/IdChecker;->d:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iput-boolean v4, p0, Lcom/comscore/utils/id/IdChecker;->c:Z

    invoke-direct {p0}, Lcom/comscore/utils/id/IdChecker;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    :cond_18
    invoke-direct {p0}, Lcom/comscore/utils/id/IdChecker;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    :cond_24
    move-object v0, v3

    goto :goto_9

    :cond_26
    move v1, v2

    :goto_27
    sget-object v5, Lcom/comscore/utils/id/IdChecker;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_37

    sget-object v5, Lcom/comscore/utils/id/IdChecker;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    move v2, v4

    :cond_37
    if-eqz v2, :cond_3f

    iput-object v0, p0, Lcom/comscore/utils/id/IdChecker;->d:Ljava/lang/String;

    goto :goto_9

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3f
    move-object v0, v3

    goto :goto_9
.end method

.method public checkCrossPublisherId(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/comscore/utils/id/IdChecker;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "adIdCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/id/IdChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "adIdCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/id/IdChecker;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public checkVisitorId()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdChecker;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v2, "idCheckData"

    invoke-direct {p0, v1, v2}, Lcom/comscore/utils/id/IdChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v0, "idCheckData"

    invoke-direct {p0, v1, v0}, Lcom/comscore/utils/id/IdChecker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7
.end method
