.class Ljackpal/androidterm/shortcuts/ColorValue$2;
.super Ljava/lang/Object;
.source "ColorValue.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/shortcuts/ColorValue;->colorValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/shortcuts/ColorValue;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/ColorValue;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    iget-object v1, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v1}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/ColorValue$2;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v2}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    or-int/2addr v1, v2

    # invokes: Ljackpal/androidterm/shortcuts/ColorValue;->buttonHit(II)V
    invoke-static {v0, p2, v1}, Ljackpal/androidterm/shortcuts/ColorValue;->access$500(Ljackpal/androidterm/shortcuts/ColorValue;II)V

    .line 162
    return-void
.end method
