.class Lhecticman/jsterm/compat/ActionBarApi11OrLater$1;
.super Ljava/lang/Object;
.source "ActionBarCompat.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/compat/ActionBarApi11OrLater;->wrapOnNavigationCallback(Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;)Landroid/app/ActionBar$OnNavigationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/compat/ActionBarApi11OrLater;

.field private final synthetic val$cb:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;


# direct methods
.method constructor <init>(Lhecticman/jsterm/compat/ActionBarApi11OrLater;Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/compat/ActionBarApi11OrLater$1;->this$0:Lhecticman/jsterm/compat/ActionBarApi11OrLater;

    iput-object p2, p0, Lhecticman/jsterm/compat/ActionBarApi11OrLater$1;->val$cb:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 5
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 80
    iget-object v0, p0, Lhecticman/jsterm/compat/ActionBarApi11OrLater$1;->val$cb:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;

    invoke-interface {v0, p1, p2, p3}, Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v0

    return v0
.end method
