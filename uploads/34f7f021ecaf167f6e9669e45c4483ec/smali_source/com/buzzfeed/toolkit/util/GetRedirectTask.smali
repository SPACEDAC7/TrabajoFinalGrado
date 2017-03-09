.class public Lcom/buzzfeed/toolkit/util/GetRedirectTask;
.super Landroid/os/AsyncTask;
.source "GetRedirectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;

.field redirectedUri:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->uri:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->listener:Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;

    .line 24
    return-void
.end method

.method private getRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 48
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 50
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 51
    .local v2, "responseCode":I
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_25

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_25

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_31

    .line 52
    :cond_25
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "location":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .end local v1    # "location":Ljava/lang/String;
    :goto_30
    return-object v1

    :cond_31
    const/4 v1, 0x0

    goto :goto_30
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->getRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->redirectedUri:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    .line 33
    :goto_8
    const/4 v0, 0x0

    return-object v0

    .line 30
    :catch_a
    move-exception v0

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->redirectedUri:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->listener:Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->redirectedUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;->onRedirect(Ljava/lang/String;)V

    .line 43
    :goto_b
    return-void

    .line 41
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/GetRedirectTask;->listener:Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/util/GetRedirectTask$RedirectListener;->onRedirectNotFound()V

    goto :goto_b
.end method
