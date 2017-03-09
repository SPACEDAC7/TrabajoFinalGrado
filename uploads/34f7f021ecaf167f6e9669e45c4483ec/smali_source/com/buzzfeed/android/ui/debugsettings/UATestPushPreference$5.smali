.class Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;
.super Ljava/util/HashMap;
.source "UATestPushPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->createPushNotificationBody(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V
    .registers 4
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v0, "show_icon_url"

    const-string v1, "https://videoapp-assets-ak.buzzfeed.com/prod/show/avatars/0e3ce727f8e64d3eafdf1212eb5d1df5.PNG"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "show_title"

    const-string v1, "Tasty"

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
