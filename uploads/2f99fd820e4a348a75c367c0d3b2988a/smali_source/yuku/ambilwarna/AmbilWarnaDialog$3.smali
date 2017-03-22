.class Lyuku/ambilwarna/AmbilWarnaDialog$3;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyuku/ambilwarna/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$3;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$3;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v0, v0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$3;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v0, v0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    iget-object v1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$3;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v2, p0, Lyuku/ambilwarna/AmbilWarnaDialog$3;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    # invokes: Lyuku/ambilwarna/AmbilWarnaDialog;->getColor()I
    invoke-static {v2}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$2(Lyuku/ambilwarna/AmbilWarnaDialog;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;->onOk(Lyuku/ambilwarna/AmbilWarnaDialog;I)V

    .line 110
    :cond_15
    return-void
.end method
