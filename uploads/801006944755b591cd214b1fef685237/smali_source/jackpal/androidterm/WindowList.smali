.class public Ljackpal/androidterm/WindowList;
.super Landroid/app/ListActivity;
.source "WindowList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/WindowList$CloseButton;
    }
.end annotation


# instance fields
.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Ljackpal/androidterm/TermService;

.field private mWindowListAdapter:Ljackpal/androidterm/WindowListAdapter;

.field private sessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    new-instance v0, Ljackpal/androidterm/WindowList$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/WindowList$1;-><init>(Ljackpal/androidterm/WindowList;)V

    iput-object v0, p0, Ljackpal/androidterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Ljackpal/androidterm/WindowList;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/WindowList;
    .param p1, "x1"    # Ljackpal/androidterm/TermService;

    .prologue
    .line 38
    iput-object p1, p0, Ljackpal/androidterm/WindowList;->mTermService:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method static synthetic access$100(Ljackpal/androidterm/WindowList;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/WindowList;

    .prologue
    .line 38
    invoke-direct {p0}, Ljackpal/androidterm/WindowList;->populateList()V

    return-void
.end method

.method private populateList()V
    .registers 3

    .prologue
    .line 130
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->mTermService:Ljackpal/androidterm/TermService;

    invoke-virtual {v1}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    .line 131
    iget-object v0, p0, Ljackpal/androidterm/WindowList;->mWindowListAdapter:Ljackpal/androidterm/WindowListAdapter;

    .line 133
    .local v0, "adapter":Ljackpal/androidterm/WindowListAdapter;
    if-nez v0, :cond_23

    .line 134
    new-instance v0, Ljackpal/androidterm/WindowListAdapter;

    .end local v0    # "adapter":Ljackpal/androidterm/WindowListAdapter;
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-direct {v0, v1}, Ljackpal/androidterm/WindowListAdapter;-><init>(Ljackpal/androidterm/util/SessionList;)V

    .line 135
    .restart local v0    # "adapter":Ljackpal/androidterm/WindowListAdapter;
    invoke-virtual {p0, v0}, Ljackpal/androidterm/WindowList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iput-object v0, p0, Ljackpal/androidterm/WindowList;->mWindowListAdapter:Ljackpal/androidterm/WindowListAdapter;

    .line 140
    :goto_18
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 141
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/SessionList;->addTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 142
    return-void

    .line 138
    :cond_23
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    goto :goto_18
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 90
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "newWindow":Landroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 93
    invoke-virtual {p0, v5}, Ljackpal/androidterm/WindowList;->setResult(I)V

    .line 96
    sget v3, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2b

    .line 97
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    .line 98
    .local v0, "bar":Ljackpal/androidterm/compat/ActionBarCompat;
    if-eqz v0, :cond_2b

    .line 99
    invoke-virtual {v0, v6, v6}, Ljackpal/androidterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 102
    .end local v0    # "bar":Ljackpal/androidterm/compat/ActionBarCompat;
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
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "jackpal.androidterm.window_id"

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Ljackpal/androidterm/WindowList;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->finish()V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 160
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 157
    :pswitch_c
    invoke-virtual {p0}, Ljackpal/androidterm/WindowList;->finish()V

    .line 158
    const/4 v0, 0x1

    goto :goto_b

    .line 154
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 118
    iget-object v0, p0, Ljackpal/androidterm/WindowList;->mWindowListAdapter:Ljackpal/androidterm/WindowListAdapter;

    .line 119
    .local v0, "adapter":Ljackpal/androidterm/WindowListAdapter;
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v1, :cond_13

    .line 120
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/SessionList;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 121
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->sessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/util/SessionList;->removeTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 123
    :cond_13
    if-eqz v0, :cond_19

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    .line 126
    :cond_19
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Ljackpal/androidterm/WindowList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "TSIntent":Landroid/content/Intent;
    iget-object v1, p0, Ljackpal/androidterm/WindowList;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/WindowList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 110
    const-string v1, "Term"

    const-string v2, "bind to service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1a
    return-void
.end method
