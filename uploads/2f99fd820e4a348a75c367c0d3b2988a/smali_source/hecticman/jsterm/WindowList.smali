.class public Lhecticman/jsterm/WindowList;
.super Landroid/app/ListActivity;
.source "WindowList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/WindowList$CloseButton;
    }
.end annotation


# instance fields
.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Lhecticman/jsterm/TermService;

.field private mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

.field private sessions:Lhecticman/jsterm/util/SessionList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 71
    new-instance v0, Lhecticman/jsterm/WindowList$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/WindowList$1;-><init>(Lhecticman/jsterm/WindowList;)V

    iput-object v0, p0, Lhecticman/jsterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/WindowList;Lhecticman/jsterm/TermService;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lhecticman/jsterm/WindowList;->mTermService:Lhecticman/jsterm/TermService;

    return-void
.end method

.method static synthetic access$1(Lhecticman/jsterm/WindowList;)V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Lhecticman/jsterm/WindowList;->populateList()V

    return-void
.end method

.method private populateList()V
    .registers 4

    .prologue
    .line 126
    iget-object v1, p0, Lhecticman/jsterm/WindowList;->mTermService:Lhecticman/jsterm/TermService;

    invoke-virtual {v1}, Lhecticman/jsterm/TermService;->getSessions()Lhecticman/jsterm/util/SessionList;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    .line 128
    iget-object v1, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-nez v1, :cond_20

    .line 129
    new-instance v0, Lhecticman/jsterm/WindowListAdapter;

    iget-object v1, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    invoke-direct {v0, v1}, Lhecticman/jsterm/WindowListAdapter;-><init>(Lhecticman/jsterm/util/SessionList;)V

    .line 130
    .local v0, "adapter":Lhecticman/jsterm/WindowListAdapter;
    invoke-virtual {p0, v0}, Lhecticman/jsterm/WindowList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iput-object v0, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    .line 135
    .end local v0    # "adapter":Lhecticman/jsterm/WindowListAdapter;
    :goto_18
    iget-object v1, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    iget-object v2, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Lhecticman/jsterm/util/SessionList;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 136
    return-void

    .line 133
    :cond_20
    iget-object v1, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    iget-object v2, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1, v2}, Lhecticman/jsterm/WindowListAdapter;->setSessions(Lhecticman/jsterm/util/SessionList;)V

    goto :goto_18
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lhecticman/jsterm/WindowList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 88
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lhecticman/jsterm/WindowList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "newWindow":Landroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 91
    invoke-virtual {p0, v5}, Lhecticman/jsterm/WindowList;->setResult(I)V

    .line 94
    sget v3, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2b

    .line 95
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    .line 96
    .local v0, "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    if-eqz v0, :cond_2b

    .line 97
    invoke-virtual {v0, v6, v6}, Lhecticman/jsterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 100
    .end local v0    # "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    :cond_2b
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "hecticman.jsterm.window_id"

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lhecticman/jsterm/WindowList;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lhecticman/jsterm/WindowList;->finish()V

    .line 144
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 154
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 151
    :pswitch_c
    invoke-virtual {p0}, Lhecticman/jsterm/WindowList;->finish()V

    .line 152
    const/4 v0, 0x1

    goto :goto_b

    .line 148
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 116
    iget-object v0, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v0, :cond_e

    .line 117
    iget-object v0, p0, Lhecticman/jsterm/WindowList;->sessions:Lhecticman/jsterm/util/SessionList;

    iget-object v1, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/util/SessionList;->removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)Z

    .line 119
    :cond_e
    iget-object v0, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-eqz v0, :cond_18

    .line 120
    iget-object v0, p0, Lhecticman/jsterm/WindowList;->mWindowListAdapter:Lhecticman/jsterm/WindowListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhecticman/jsterm/WindowListAdapter;->setSessions(Lhecticman/jsterm/util/SessionList;)V

    .line 122
    :cond_18
    iget-object v0, p0, Lhecticman/jsterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lhecticman/jsterm/WindowList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lhecticman/jsterm/TermService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "TSIntent":Landroid/content/Intent;
    iget-object v1, p0, Lhecticman/jsterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lhecticman/jsterm/WindowList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 108
    const-string v1, "Term"

    const-string v2, "bind to service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1a
    return-void
.end method
