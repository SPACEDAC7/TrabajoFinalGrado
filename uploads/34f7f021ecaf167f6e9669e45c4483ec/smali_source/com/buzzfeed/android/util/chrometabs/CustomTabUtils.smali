.class public Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;
.super Ljava/lang/Object;
.source "CustomTabUtils.java"


# static fields
.field private static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field static final BETA_PACKAGE:Ljava/lang/String; = "com.chrome.beta"

.field static final DEV_PACKAGE:Ljava/lang/String; = "com.chrome.dev"

.field static final LOCAL_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome"

.field static final STABLE_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final TAG:Ljava/lang/String;

.field private static sPackageNameToUse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 77
    sget-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    if-eqz v8, :cond_8

    sget-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    .line 119
    :goto_7
    return-object v8

    .line 79
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 81
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    const-string v9, "http://www.example.com"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 83
    .local v1, "defaultViewHandlerInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 84
    .local v2, "defaultViewHandlerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 85
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 89
    :cond_24
    invoke-virtual {v5, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 90
    .local v6, "resolvedActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, "packagesSupportingCustomTabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v7, "serviceIntent":Landroid/content/Intent;
    const-string v9, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v5, v7, v10}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_31

    .line 96
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 102
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    :cond_5c
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_68

    .line 103
    const/4 v8, 0x0

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    .line 119
    :cond_65
    :goto_65
    sget-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_7

    .line 104
    :cond_68
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_78

    .line 105
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65

    .line 106
    :cond_78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8d

    .line 107
    invoke-static {p0, v0}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->hasSpecializedHandlerIntents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_8d

    .line 108
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 109
    sput-object v2, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65

    .line 110
    :cond_8d
    const-string v8, "com.android.chrome"

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 111
    const-string v8, "com.android.chrome"

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65

    .line 112
    :cond_9a
    const-string v8, "com.chrome.beta"

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 113
    const-string v8, "com.chrome.beta"

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65

    .line 114
    :cond_a7
    const-string v8, "com.chrome.dev"

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 115
    const-string v8, "com.chrome.dev"

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65

    .line 116
    :cond_b4
    const-string v8, "com.google.android.apps.chrome"

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 117
    const-string v8, "com.google.android.apps.chrome"

    sput-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->sPackageNameToUse:Ljava/lang/String;

    goto :goto_65
.end method

.method public static getPackages()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.chrome"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static hasSpecializedHandlerIntents(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".hasSpecialHandlerIntents"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "TAG":Ljava/lang/String;
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 132
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_28

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_29

    .line 148
    .end local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_28
    :goto_28
    return v6

    .line 138
    .restart local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 140
    .local v2, "filter":Landroid/content/IntentFilter;
    if-eqz v2, :cond_2d

    .line 141
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v8

    if-eqz v8, :cond_2d

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v8

    if-eqz v8, :cond_2d

    .line 142
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_4b} :catch_4f

    if-eqz v8, :cond_2d

    .line 143
    const/4 v6, 0x1

    goto :goto_28

    .line 145
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_4f
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v7, "Runtime exception while getting specialized handlers"

    invoke-static {v0, v7}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public static openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 38
    .local v0, "customTabsIntent":Landroid/support/customtabs/CustomTabsIntent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->openCustomTab(Landroid/app/Activity;Landroid/support/customtabs/CustomTabsIntent;Landroid/net/Uri;)V

    .line 39
    return-void
.end method

.method private static openCustomTab(Landroid/app/Activity;Landroid/support/customtabs/CustomTabsIntent;Landroid/net/Uri;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customTabsIntent"    # Landroid/support/customtabs/CustomTabsIntent;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".openCustomTab"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p0}, Lcom/buzzfeed/android/util/chrometabs/CustomTabUtils;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_21

    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasIceCreamSandwichMR1()Z

    move-result v4

    if-nez v4, :cond_46

    .line 50
    :cond_21
    invoke-static {p0, p2}, Lcom/buzzfeed/android/util/BuzzUtils;->createViewBuzzIntentExcludingBfApp(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_42

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find activity to handle intent with url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_41
    return-void

    .line 55
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_42
    invoke-static {p0, v2}, Lcom/buzzfeed/android/util/BuzzUtils;->startIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_41

    .line 57
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_46
    iget-object v4, p1, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :try_start_4b
    invoke-virtual {p1, p0, p2}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_41

    .line 60
    :catch_4f
    move-exception v1

    .line 61
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open custom tabs with url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method
