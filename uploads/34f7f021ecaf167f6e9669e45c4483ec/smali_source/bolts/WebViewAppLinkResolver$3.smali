.class Lbolts/WebViewAppLinkResolver$3;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lbolts/Capture;

.field final synthetic val$contentType:Lbolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V
    .registers 5

    .prologue
    .line 85
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$3;->this$0:Lbolts/WebViewAppLinkResolver;

    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    iput-object p3, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    iput-object p4, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lbolts/WebViewAppLinkResolver$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "currentURL":Ljava/net/URL;
    const/4 v0, 0x0

    .line 90
    .local v0, "connection":Ljava/net/URLConnection;
    :goto_c
    if-eqz v1, :cond_51

    .line 92
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 93
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1d

    move-object v3, v0

    .line 96
    check-cast v3, Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 98
    :cond_1d
    const-string v3, "Prefer-Html-Meta-Tags"

    const-string v4, "al"

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 101
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_4f

    move-object v2, v0

    .line 102
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 103
    .local v2, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_4d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_4d

    .line 104
    new-instance v1, Ljava/net/URL;

    .end local v1    # "currentURL":Ljava/net/URL;
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v1    # "currentURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    .line 107
    :cond_4d
    const/4 v1, 0x0

    goto :goto_c

    .line 110
    .end local v2    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_4f
    const/4 v1, 0x0

    goto :goto_c

    .line 115
    :cond_51
    :try_start_51
    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    # invokes: Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->access$300(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbolts/Capture;->set(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_6e

    .line 118
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_6c

    .line 119
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_6c
    const/4 v3, 0x0

    return-object v3

    .line 118
    .restart local v0    # "connection":Ljava/net/URLConnection;
    :catchall_6e
    move-exception v3

    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_78

    .line 119
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_78
    throw v3
.end method
