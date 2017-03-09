.class Lcom/comscore/streaming/plugin/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/plugin/StreamSensePlugin;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v0

    if-nez v0, :cond_19

    :cond_13
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->d(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto :goto_18

    :cond_27
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-eqz v0, :cond_14d

    :cond_51
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_139

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v6

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_139

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v6

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;I)J

    move-result-wide v8

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_14b

    move v0, v1

    :goto_cc
    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->i(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v7

    if-le v6, v7, :cond_f0

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_f0
    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v6

    if-eqz v6, :cond_100

    if-nez v0, :cond_100

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->j(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    :cond_100
    :goto_100
    sget-object v6, Lcom/comscore/streaming/plugin/b;->a:[I

    iget-object v7, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/comscore/streaming/StreamSenseState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_30a

    :cond_111
    :goto_111
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    if-eq v3, v0, :cond_302

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_123
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPostStateChange(Lcom/comscore/streaming/StreamSenseState;)V

    goto :goto_123

    :cond_139
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->h(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v6

    if-lt v0, v6, :cond_18

    :cond_14b
    move v0, v2

    goto :goto_cc

    :cond_14d
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    iget-object v8, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v8}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_100

    :pswitch_168
    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->k(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_1f5

    if-nez v0, :cond_1f5

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)Z

    move-result v6

    if-nez v6, :cond_1f5

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v6

    sget-object v7, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v8, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v8}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v8

    invoke-interface {v0, v6, v7, v8}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseEventType;Z)Z

    move-result v0

    if-nez v0, :cond_18e

    :cond_1ae
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->n(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->o(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-nez v0, :cond_1dd

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ns_st_ui"

    const-string v6, "seek"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v6, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-virtual {v1, v6, v0, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    :goto_1d1
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->c(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_111

    :cond_1dd
    iget-object v1, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v6, Lcom/comscore/streaming/StreamSenseEventType;->PLAY:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v6, v10, v8, v9}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto :goto_1d1

    :cond_1f5
    iget-object v2, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v2

    if-eqz v2, :cond_111

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_111

    :pswitch_206
    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->g(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v6

    if-eqz v6, :cond_248

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_234

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v7, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v7

    sget-object v8, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-interface {v0, v7, v8, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseEventType;Z)Z

    move-result v0

    if-nez v0, :cond_21a

    :cond_234
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v2, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v6

    invoke-virtual {v0, v2, v10, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v1}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_111

    :cond_248
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->p(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_294

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->a(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)Z

    move-result v0

    if-eqz v0, :cond_294

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_262
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v6

    sget-object v7, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-interface {v0, v6, v7, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseEventType;Z)Z

    move-result v0

    if-nez v0, :cond_262

    :cond_27c
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->END:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Lcom/comscore/streaming/plugin/StreamSensePlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/comscore/streaming/plugin/StreamSensePlayer;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0, v1, v10, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;Z)Z

    goto/16 :goto_111

    :cond_294
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->q(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->r(Lcom/comscore/streaming/plugin/StreamSensePlugin;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v0, v0, v6

    if-gtz v0, :cond_111

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->m(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/plugin/StreamSensePluginListener;

    iget-object v6, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v6}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v6

    sget-object v7, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    invoke-interface {v0, v6, v7, v2}, Lcom/comscore/streaming/plugin/StreamSensePluginListener;->onPreStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseEventType;Z)Z

    move-result v0

    if-nez v0, :cond_2bd

    :cond_2d7
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    sget-object v1, Lcom/comscore/streaming/StreamSenseEventType;->PAUSE:Lcom/comscore/streaming/StreamSenseEventType;

    iget-object v2, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v2}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->l(Lcom/comscore/streaming/plugin/StreamSensePlugin;)J

    move-result-wide v6

    invoke-virtual {v0, v1, v10, v6, v7}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->notify(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;J)V

    goto/16 :goto_111

    :cond_2e6
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-virtual {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->getState()Lcom/comscore/streaming/StreamSenseState;

    move-result-object v0

    sget-object v1, Lcom/comscore/streaming/StreamSenseState;->PAUSED:Lcom/comscore/streaming/StreamSenseState;

    if-ne v0, v1, :cond_302

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->e(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->f(Lcom/comscore/streaming/plugin/StreamSensePlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_302
    iget-object v0, p0, Lcom/comscore/streaming/plugin/a;->a:Lcom/comscore/streaming/plugin/StreamSensePlugin;

    invoke-static {v0, v4, v5}, Lcom/comscore/streaming/plugin/StreamSensePlugin;->b(Lcom/comscore/streaming/plugin/StreamSensePlugin;J)J

    goto/16 :goto_18

    nop

    :pswitch_data_30a
    .packed-switch 0x1
        :pswitch_168
        :pswitch_168
        :pswitch_168
        :pswitch_206
    .end packed-switch
.end method
