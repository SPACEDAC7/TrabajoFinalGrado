.class public Ljackpal/androidterm/WindowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WindowListAdapter.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# instance fields
.field private mSessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/util/SessionList;)V
    .registers 2
    .param p1, "sessions"    # Ljackpal/androidterm/util/SessionList;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    .line 37
    return-void
.end method

.method private static findActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_5

    move-object p0, v1

    .line 112
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "cw":Landroid/content/ContextWrapper;
    :goto_4
    return-object p0

    .line 106
    .end local v0    # "cw":Landroid/content/ContextWrapper;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_c

    .line 107
    check-cast p0, Landroid/app/Activity;

    goto :goto_4

    .line 108
    :cond_c
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1c

    move-object v0, p0

    .line 109
    check-cast v0, Landroid/content/ContextWrapper;

    .line 110
    .restart local v0    # "cw":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljackpal/androidterm/WindowListAdapter;->findActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_4

    .end local v0    # "cw":Landroid/content/ContextWrapper;
    :cond_1c
    move-object p0, v1

    .line 112
    goto :goto_4
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v0, :cond_b

    .line 52
    iget-object v0, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v0

    .line 54
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getSessionTitle(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "position"    # I
    .param p2, "defaultTitle"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, p1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    .line 68
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_14

    instance-of v1, v0, Ljackpal/androidterm/GenericTermSession;

    if-eqz v1, :cond_14

    .line 69
    check-cast v0, Ljackpal/androidterm/GenericTermSession;

    .end local v0    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v0, p2}, Ljackpal/androidterm/GenericTermSession;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    .end local p2    # "defaultTitle":Ljava/lang/String;
    :cond_14
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 76
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ljackpal/androidterm/WindowListAdapter;->findActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030001

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "child":Landroid/view/View;
    const v7, 0x7f070007

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "close":Landroid/view/View;
    const v7, 0x7f070005

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 81
    .local v5, "label":Landroid/widget/TextView;
    const v7, 0x7f09008e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, p1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "defaultTitle":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Ljackpal/androidterm/WindowListAdapter;->getSessionTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    .line 85
    .local v6, "sessions":Ljackpal/androidterm/util/SessionList;
    move v3, p1

    .line 86
    .local v3, "closePosition":I
    new-instance v7, Ljackpal/androidterm/WindowListAdapter$1;

    invoke-direct {v7, p0, v6, v3}, Ljackpal/androidterm/WindowListAdapter$1;-><init>(Ljackpal/androidterm/WindowListAdapter;Ljackpal/androidterm/util/SessionList;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v1
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljackpal/androidterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public setSessions(Ljackpal/androidterm/util/SessionList;)V
    .registers 2
    .param p1, "sessions"    # Ljackpal/androidterm/util/SessionList;

    .prologue
    .line 40
    iput-object p1, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    .line 42
    if-eqz p1, :cond_b

    .line 43
    invoke-virtual {p1, p0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 44
    invoke-virtual {p1, p0}, Ljackpal/androidterm/util/SessionList;->addTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 48
    :goto_a
    return-void

    .line 46
    :cond_b
    invoke-virtual {p0}, Ljackpal/androidterm/WindowListAdapter;->onUpdate()V

    goto :goto_a
.end method
