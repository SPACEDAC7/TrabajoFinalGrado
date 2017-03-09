.class Landroid/support/v4/app/BundleCompatGingerbread;
.super Ljava/lang/Object;
.source "BundleCompatGingerbread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatGingerbread"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 36
    sget-boolean v1, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethodFetched:Z

    if-nez v1, :cond_20

    .line 38
    :try_start_6
    const-class v1, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 39
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1e} :catch_33

    .line 43
    :goto_1e
    sput-boolean v7, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethodFetched:Z

    .line 46
    :cond_20
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_46

    .line 48
    :try_start_24
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_32} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_32} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_32} :catch_48

    .line 55
    :goto_32
    return-object v1

    .line 40
    :catch_33
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BundleCompatGingerbread"

    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 49
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3c
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    :goto_3d
    const-string v1, "BundleCompatGingerbread"

    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    sput-object v2, Landroid/support/v4/app/BundleCompatGingerbread;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    move-object v1, v2

    .line 55
    goto :goto_32

    .line 49
    :catch_48
    move-exception v0

    goto :goto_3d

    :catch_4a
    move-exception v0

    goto :goto_3d
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    .line 59
    sget-boolean v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethodFetched:Z

    if-nez v1, :cond_24

    .line 61
    :try_start_5
    const-class v1, Landroid/os/Bundle;

    const-string v2, "putIBinder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 63
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_22} :catch_37

    .line 67
    :goto_22
    sput-boolean v6, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethodFetched:Z

    .line 70
    :cond_24
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_36

    .line 72
    :try_start_28
    sget-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_36} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_36} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_36} :catch_4c

    .line 79
    :cond_36
    :goto_36
    return-void

    .line 64
    :catch_37
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BundleCompatGingerbread"

    const-string v2, "Failed to retrieve putIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 73
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_40
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    :goto_41
    const-string v1, "BundleCompatGingerbread"

    const-string v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/app/BundleCompatGingerbread;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_36

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4c
    move-exception v0

    goto :goto_41

    :catch_4e
    move-exception v0

    goto :goto_41
.end method
