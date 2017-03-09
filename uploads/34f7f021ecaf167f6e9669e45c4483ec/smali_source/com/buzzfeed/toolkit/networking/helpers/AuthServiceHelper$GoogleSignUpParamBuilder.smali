.class public final Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;
.super Ljava/lang/Object;
.source "AuthServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleSignUpParamBuilder"
.end annotation


# static fields
.field private static final KEY_ALLOW_EMAIL_UPDATES:Ljava/lang/String; = "allow_email_updates"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_GOOGLEPLUSID:Ljava/lang/String; = "googleplus_uid"

.field private static final KEY_GOOGLEPLUS_IMAGE:Ljava/lang/String; = "googleplus_image"

.field private static final KEY_IMPORT_FB_PROFILE:Ljava/lang/String; = "import_fb_profile"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_SIGNUP_PASSWORD:Ljava/lang/String; = "pw"

.field private static final KEY_SIGNUP_PASSWORD2:Ljava/lang/String; = "pw2"


# instance fields
.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "import_fb_profile"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "allow_email_updates"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "googleplus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "api_client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;
    .registers 4
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public userInfo(Lorg/json/JSONObject;)Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;
    .registers 5
    .param p1, "bfInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string/jumbo v2, "username"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v1, "username"

    const-string/jumbo v2, "username"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "pw"

    const-string v2, "password"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "pw2"

    const-string v2, "password"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "googleplus_uid"

    const-string v2, "googleplus_uid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "googleplus_image"

    const-string v2, "googleplus_image"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/helpers/AuthServiceHelper$GoogleSignUpParamBuilder;->mParamMap:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object p0
.end method
