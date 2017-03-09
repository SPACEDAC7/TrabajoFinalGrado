.class public Lcom/comscore/measurement/Measurement;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/comscore/measurement/Label;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:J


# direct methods
.method protected constructor <init>(Lcom/comscore/analytics/Core;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getPixelURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/measurement/Measurement;->setPixelURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/measurement/Measurement;->c:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/measurement/Measurement;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/comscore/measurement/Label;->value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14
.end method

.method protected a(Lcom/comscore/measurement/Label;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 6

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/comscore/measurement/PrivilegedLabel;

    invoke-direct {v0, p1, p2, p3}, Lcom/comscore/measurement/PrivilegedLabel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/measurement/Measurement;->a(Lcom/comscore/measurement/Label;)V

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/comscore/measurement/Label;

    invoke-direct {v0, p1, p2, p3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/measurement/Measurement;->a(Lcom/comscore/measurement/Label;)V

    goto :goto_e
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/comscore/measurement/Measurement;->a(Ljava/util/HashMap;Z)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/comscore/measurement/Measurement;->setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p0, p1, p3, p4}, Lcom/comscore/measurement/Measurement;->removeLabel(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/comscore/measurement/Measurement;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public getLabel(Ljava/lang/String;)Lcom/comscore/measurement/Label;
    .registers 3

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    return-object v0
.end method

.method public getPixelURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public removeLabel(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    if-eqz v0, :cond_1f

    instance-of v0, v0, Lcom/comscore/measurement/PrivilegedLabel;

    if-eqz v0, :cond_1a

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1a
    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public retrieveLabelsAsString([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/comscore/measurement/Measurement;->a:Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    array-length v5, p1

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_29

    aget-object v6, p1, v1

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/comscore/measurement/Label;->pack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    sget-object v0, Lcom/comscore/utils/Constants;->LABELS_ORDER:[Ljava/lang/String;

    if-eq p1, v0, :cond_4b

    sget-object v5, Lcom/comscore/utils/Constants;->LABELS_ORDER:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_31
    if-ge v1, v6, :cond_4b

    aget-object v7, v5, v1

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/comscore/measurement/Label;->pack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4b
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/measurement/Label;

    invoke-virtual {v0}, Lcom/comscore/measurement/Label;->pack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_67
    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_7d

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_7c
    return-object v0

    :cond_7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c
.end method

.method public setLabel(Lcom/comscore/measurement/Label;)V
    .registers 5

    iget-object v0, p1, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/comscore/measurement/Label;->aggregate:Ljava/lang/Boolean;

    instance-of v2, p1, Lcom/comscore/measurement/PrivilegedLabel;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/comscore/measurement/Measurement;->removeLabel(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/comscore/measurement/Measurement;->a(Lcom/comscore/measurement/Label;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/comscore/measurement/Measurement;->setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/comscore/measurement/Measurement;->removeLabel(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/comscore/measurement/Measurement;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setPixelURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/measurement/Measurement;->b:Ljava/lang/String;

    return-void
.end method
