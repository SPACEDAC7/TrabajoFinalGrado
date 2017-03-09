.class Ljackpal/androidterm/compat/ActionBarApi11OrLater;
.super Ljackpal/androidterm/compat/ActionBarCompat;
.source "ActionBarCompat.java"


# instance fields
.field private bar:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "bar"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0}, Ljackpal/androidterm/compat/ActionBarCompat;-><init>()V

    .line 73
    check-cast p1, Landroid/app/ActionBar;

    .end local p1    # "bar":Ljava/lang/Object;
    iput-object p1, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    .line 74
    return-void
.end method

.method private wrapOnNavigationCallback(Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)Landroid/app/ActionBar$OnNavigationListener;
    .registers 4
    .param p1, "callback"    # Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    .prologue
    .line 77
    move-object v0, p1

    .line 78
    .local v0, "cb":Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;
    new-instance v1, Ljackpal/androidterm/compat/ActionBarApi11OrLater$1;

    invoke-direct {v1, p0, v0}, Ljackpal/androidterm/compat/ActionBarApi11OrLater$1;-><init>(Ljackpal/androidterm/compat/ActionBarApi11OrLater;Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)V

    return-object v1
.end method


# virtual methods
.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 111
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setDisplayOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .prologue
    .line 118
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 119
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 122
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    .prologue
    .line 126
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-direct {p0, p2}, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->wrapOnNavigationCallback(Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)Landroid/app/ActionBar$OnNavigationListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 127
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 130
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 131
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 135
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 138
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 139
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljackpal/androidterm/compat/ActionBarApi11OrLater;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 147
    return-void
.end method
