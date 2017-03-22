.class Lyuku/ambilwarna/AmbilWarnaDialog$5;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$5;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$5;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v0, v0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    if-eqz v0, :cond_f

    .line 123
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$5;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v0, v0, Lyuku/ambilwarna/AmbilWarnaDialog;->listener:Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;

    iget-object v1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$5;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-interface {v0, v1}, Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;->onCancel(Lyuku/ambilwarna/AmbilWarnaDialog;)V

    .line 126
    :cond_f
    return-void
.end method
