.class public Lcom/buzzfeed/android/util/BuzzUtils;
.super Ljava/lang/Object;
.source "BuzzUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;
    }
.end annotation


# static fields
.field private static final BUZZFEED_DOMAIN_BASE:Ljava/lang/String; = "buzzfeed.com"

.field private static BUZZFEED_MOBILE_PARAM:Ljava/lang/String; = null

.field public static final BUZZFEED_STATIC_IMAGE_URL:Ljava/lang/String; = "https://img.buzzfeed.com"

.field public static final ERROR_INVALID_SESSION:Ljava/lang/String; = "invalid_session"

.field public static FEEDBACK_EMAIL:Ljava/lang/String;

.field private static MOBILE_APP_PARAM_KEY:Ljava/lang/String;

.field private static MOBILE_APP_PARAM_VALUE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final standardizeBuzzFeedUriReplacementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/buzzfeed/android/util/BuzzUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "support@buzzfeed.com"

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->FEEDBACK_EMAIL:Ljava/lang/String;

    .line 69
    const-string v0, "s"

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    .line 70
    const-string v0, "mobile_app"

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_VALUE:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->BUZZFEED_MOBILE_PARAM:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/buzzfeed/android/util/BuzzUtils$2;

    invoke-direct {v0}, Lcom/buzzfeed/android/util/BuzzUtils$2;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/util/BuzzUtils;->standardizeBuzzFeedUriReplacementList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendMobileAppParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_8
    const-string p0, ""

    .line 159
    .end local p0    # "uri":Ljava/lang/String;
    .local v0, "mobileAppParam":Ljava/lang/String;
    .local v5, "url":Landroid/net/Uri;
    :cond_a
    :goto_a
    return-object p0

    .line 135
    .end local v0    # "mobileAppParam":Ljava/lang/String;
    .end local v5    # "url":Landroid/net/Uri;
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 136
    .restart local v5    # "url":Landroid/net/Uri;
    sget-object v7, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "mobileAppParam":Ljava/lang/String;
    if-eqz v0, :cond_1f

    sget-object v7, Lcom/buzzfeed/android/util/BuzzUtils;->BUZZFEED_MOBILE_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 141
    :cond_1f
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 142
    .local v2, "newUri":Landroid/net/Uri$Builder;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3b

    .line 147
    .end local v4    # "s":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    .line 148
    .local v6, "urlQueryParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 149
    sget-object v7, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    sget-object v8, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    :cond_5c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 151
    :cond_65
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "name":Ljava/lang/String;
    sget-object v8, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 153
    sget-object v8, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_KEY:Ljava/lang/String;

    sget-object v9, Lcom/buzzfeed/android/util/BuzzUtils;->MOBILE_APP_PARAM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_6d

    .line 155
    :cond_89
    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_6d
.end method

.method public static baseUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 204
    const-string v7, "\\?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 205
    .local v5, "p1":Ljava/util/regex/Pattern;
    const-string v7, "#"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 206
    .local v6, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 207
    .local v3, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 208
    .local v4, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 209
    .local v2, "len":I
    move v0, v2

    .line 210
    .local v0, "l1":I
    move v1, v0

    .line 211
    .local v1, "l2":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 212
    :cond_25
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 213
    :cond_2f
    if-lt v0, v2, :cond_33

    if-ge v1, v2, :cond_39

    .line 214
    :cond_33
    if-ge v0, v1, :cond_3a

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 217
    .end local p0    # "uri":Ljava/lang/String;
    :cond_39
    :goto_39
    return-object p0

    .line 215
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_3a
    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_39
.end method

.method public static changeFont(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 6
    .param p0, "layout"    # Landroid/view/ViewGroup;
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 434
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    .line 436
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/buzzfeed/android/util/BuzzUtils;->changeFont(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 433
    :cond_14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    .restart local v0    # "child":Landroid/view/View;
    :cond_17
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_14

    .line 438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v3

    invoke-static {v2, v0, v3, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;)V

    goto :goto_14

    .line 441
    :cond_29
    return-void
.end method

.method public static clearSearchSuggestions(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.buzzfeed.android.data.SearchSuggester"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    .local v0, "searchHelper":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 126
    return-void
.end method

.method public static createViewBuzzIntentExcludingBfApp(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "buzzUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, "targetedViewIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v5, "viewBuzzIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_72

    .line 225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 226
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1f

    .line 227
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 228
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 229
    .local v3, "targetBuzzIntent":Landroid/content/Intent;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 234
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "targetBuzzIntent":Landroid/content/Intent;
    :cond_4d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_72

    .line 235
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const v7, 0x7f0900b3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    new-array v6, v9, [Landroid/os/Parcelable;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    :goto_71
    return-object v0

    :cond_72
    const/4 v0, 0x0

    goto :goto_71
.end method

.method public static createViewBuzzIntentWithoutChooser(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "buzzUri"    # Landroid/net/Uri;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v0, "viewBuzzIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    return-object v0
.end method

.method public static getApplication(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzFeedApplication;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/BuzzFeedApplication;

    return-object v0
.end method

.method public static getBuzzFeedUserAgentSuffix(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const v0, 0x7f090235

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7a8f2

    .line 341
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 339
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCsrfToken(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;
    .registers 3
    .param p0, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "token":Ljava/lang/String;
    const-string v1, "invalid_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    .line 261
    :cond_d
    return-object v0
.end method

.method private static getCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;
    .registers 9
    .param p0, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getCsrfTokenInternal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "TAG":Ljava/lang/String;
    const/4 v5, 0x0

    .line 286
    .local v5, "token":Ljava/lang/String;
    if-eqz p0, :cond_56

    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 288
    :try_start_1e
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->requestCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Lretrofit2/Response;

    move-result-object v3

    .line 289
    .local v3, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v3}, Lretrofit2/Response;->code()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_2d

    const-string v6, "invalid_session"

    .line 301
    .end local v3    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :goto_2c
    return-object v6

    .line 291
    .restart local v3    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :cond_2d
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v6, "success"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_56

    .line 294
    const-string/jumbo v6, "token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    if-eqz v5, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_52} :catch_58
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_52} :catch_5f
    .catch Lcom/buzzfeed/toolkit/util/HttpException; {:try_start_1e .. :try_end_52} :catch_61

    move-result v6

    if-nez v6, :cond_56

    const/4 v5, 0x0

    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .end local v4    # "result":Ljava/lang/String;
    :cond_56
    :goto_56
    move-object v6, v5

    .line 301
    goto :goto_2c

    .line 297
    :catch_58
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    :goto_59
    const-string v6, "Error getting CSRF token"

    invoke-static {v0, v6, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56

    .line 297
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5f
    move-exception v1

    goto :goto_59

    :catch_61
    move-exception v1

    goto :goto_59
.end method

.method public static getCsrfTokenOrInvalidSession(Lcom/buzzfeed/android/data/BuzzUser;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1b

    const-string v1, "invalid_session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 270
    invoke-static {p0, p1}, Lcom/buzzfeed/android/util/BuzzApiClient;->updateSessionToken(Lcom/buzzfeed/android/data/BuzzUser;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 271
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/BuzzUser;->saveToStorage(Landroid/content/Context;)V

    .line 272
    invoke-static {p0}, Lcom/buzzfeed/android/util/BuzzUtils;->getCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_1b
    return-object v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isBuzzFeedStaticImageUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 88
    const/4 v2, 0x0

    .line 93
    :goto_7
    return v2

    .line 91
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "authority":Ljava/lang/String;
    const-string v2, "https://img.buzzfeed.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7
.end method

.method public static isBuzzFeedUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 78
    const/4 v2, 0x0

    .line 83
    :goto_7
    return v2

    .line 81
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "authority":Ljava/lang/String;
    const-string v2, "buzzfeed.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_7
.end method

.method public static isMainThread()Z
    .registers 2

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isPlayStoreInstalled(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".isPlayStoreInstalled()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 318
    .local v2, "pacman":Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 319
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_24} :catch_26

    move-result-object v3

    .line 322
    :goto_25
    return-object v3

    .line 320
    :catch_26
    move-exception v1

    .line 321
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Unable to find PackageManager"

    invoke-static {v0, v3, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_25
.end method

.method public static isPoundEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    new-instance v0, Lcom/buzzfeed/android/data/preferences/PoundPreference;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/preferences/PoundPreference;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, "poundPreference":Lcom/buzzfeed/android/data/preferences/PoundPreference;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/preferences/PoundPreference;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static loadAndSetAdvertisingData(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;-><init>(Lcom/buzzfeed/android/util/BuzzUtils$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils$AdvertisingIdFetcher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method

.method public static openFeedback(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/buzzfeed/android/util/BuzzUtils;->FEEDBACK_EMAIL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "BuzzFeed Android (502002) Feedback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->buildFeedbackInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    const-string v1, "Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 397
    return-void
.end method

.method public static openLink(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".openLink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL. Unable to open link. url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_31
    return-void

    .line 333
    :cond_32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public static removeCacheBuster(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p0, :cond_29

    .line 164
    const-string v4, "&z=\\d+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 165
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 166
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 168
    .local v1, "more":Z
    :goto_15
    if-eqz v1, :cond_21

    .line 169
    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 170
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_15

    .line 172
    :cond_21
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "more":Z
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_28
    return-object v4

    :cond_29
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private static requestCsrfTokenInternal(Lcom/buzzfeed/android/data/BuzzUser;)Lretrofit2/Response;
    .registers 5
    .param p0, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/android/data/BuzzUser;",
            ")",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/buzzfeed/toolkit/util/HttpException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v2, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;

    invoke-direct {v2}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;-><init>()V

    .line 306
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/BuzzUser;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->sessionKey(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$CrsfTokenRequestParamBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 309
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/buzzfeed/toolkit/networking/NetworkService;->getReactionsService()Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    move-result-object v2

    .line 310
    invoke-virtual {v2, v0}, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;->getCsrfTokenInternal(Ljava/util/Map;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    move-result-object v1

    .line 311
    .local v1, "request":Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;, "Lcom/buzzfeed/toolkit/util/retrofit/SafeCall<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;->execute()Lretrofit2/Response;

    move-result-object v2

    return-object v2
.end method

.method public static setIsPoundEnabled(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "poundEnabled"    # Z

    .prologue
    .line 416
    new-instance v0, Lcom/buzzfeed/android/data/preferences/PoundPreference;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/data/preferences/PoundPreference;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "poundPreference":Lcom/buzzfeed/android/data/preferences/PoundPreference;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/data/preferences/PoundPreference;->setValue(Ljava/lang/Boolean;)V

    .line 418
    return-void
.end method

.method public static showSnackBarNotification(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 119
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 120
    return-void
.end method

.method public static showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 101
    invoke-static {}, Lcom/buzzfeed/android/util/BuzzUtils;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 104
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_11
    return-void

    .line 106
    :cond_12
    new-instance v2, Lcom/buzzfeed/android/util/BuzzUtils$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/buzzfeed/android/util/BuzzUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public static standardizeBuzzFeedUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".standardizeBuzzFeedUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 191
    sget-object v2, Lcom/buzzfeed/android/util/BuzzUtils;->standardizeBuzzFeedUriReplacementList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "replacement":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v4

    iget-object v4, v4, Lcom/buzzfeed/toolkit/networking/Environment;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 198
    .end local v1    # "replacement":Ljava/lang/String;
    :cond_59
    return-object p0
.end method

.method public static startIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/util/BuzzUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".startIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "TAG":Ljava/lang/String;
    :try_start_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_18} :catch_19

    .line 250
    :goto_18
    return-void

    .line 247
    :catch_19
    move-exception v1

    .line 248
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "Couldn\'t start intent"

    invoke-static {v0, v2, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public static stripSchemeAndHost(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 421
    if-nez p0, :cond_4

    .line 422
    const/4 v1, 0x0

    .line 429
    :goto_3
    return-object v1

    .line 425
    :cond_4
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 426
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 427
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 428
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_3
.end method
