.class Lcom/ngb/wpsconnect/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/MainActivity;->showAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$2;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 342
    return-void
.end method