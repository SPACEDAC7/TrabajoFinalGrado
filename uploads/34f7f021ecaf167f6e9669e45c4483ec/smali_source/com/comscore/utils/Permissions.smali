.class public Lcom/comscore/utils/Permissions;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;

    if-nez v2, :cond_1b

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    sput-object v2, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_37

    :cond_1b
    :goto_1b
    sget-object v2, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;

    if-eqz v2, :cond_39

    :goto_1f
    sget-object v2, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    sget-object v2, Lcom/comscore/utils/Permissions;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_33
    return-object v0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catch_37
    move-exception v2

    goto :goto_1b

    :cond_39
    move-object v0, v1

    goto :goto_33
.end method
