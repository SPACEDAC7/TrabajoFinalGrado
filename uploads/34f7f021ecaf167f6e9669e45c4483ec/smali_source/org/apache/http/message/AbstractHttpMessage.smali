.class public abstract Lorg/apache/http/message/AbstractHttpMessage;
.super Ljava/lang/Object;
.source "AbstractHttpMessage.java"

# interfaces
.implements Lorg/apache/http/HttpMessage;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected headergroup:Lorg/apache/http/message/HeaderGroup;

.field protected params:Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 59
    iput-object p1, p0, Lorg/apache/http/message/AbstractHttpMessage;->params:Lorg/apache/http/params/HttpParams;

    .line 60
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "Header name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 107
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 100
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->params:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_b

    .line 167
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->params:Lorg/apache/http/params/HttpParams;

    .line 169
    :cond_b
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->iterator()Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->iterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->removeHeader(Lorg/apache/http/Header;)V

    .line 132
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p1, :cond_3

    .line 146
    :cond_2
    return-void

    .line 140
    :cond_3
    iget-object v2, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v2}, Lorg/apache/http/message/HeaderGroup;->iterator()Lorg/apache/http/HeaderIterator;

    move-result-object v1

    .local v1, "i":Lorg/apache/http/HeaderIterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 142
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 143
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->remove()V

    goto :goto_9
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "Header name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->updateHeader(Lorg/apache/http/Header;)V

    .line 120
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->updateHeader(Lorg/apache/http/Header;)V

    .line 113
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/http/message/HeaderGroup;->setHeaders([Lorg/apache/http/Header;)V

    .line 126
    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .registers 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    const-string v0, "HTTP parameters"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/params/HttpParams;

    iput-object v0, p0, Lorg/apache/http/message/AbstractHttpMessage;->params:Lorg/apache/http/params/HttpParams;

    .line 179
    return-void
.end method
