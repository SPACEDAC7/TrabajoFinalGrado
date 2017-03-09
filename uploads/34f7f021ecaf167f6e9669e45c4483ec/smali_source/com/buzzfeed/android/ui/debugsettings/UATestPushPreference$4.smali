.class Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;
.super Ljava/lang/Object;
.source "UATestPushPreference.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->onTestPushSelected(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->setEnabled(Z)V

    .line 149
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;->this$0:Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->setEnabled(Z)V

    .line 144
    return-void
.end method
