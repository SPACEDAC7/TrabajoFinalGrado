.class Ljackpal/androidterm/shortcuts/ColorValue$1;
.super Ljava/lang/Object;
.source "ColorValue.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$hexWindow:[Landroid/widget/TextView;

.field final synthetic val$sb:[Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/ColorValue;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    iput-object p2, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->val$hexWindow:[Landroid/widget/TextView;

    iput-object p3, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->val$sb:[Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 104
    if-eqz p3, :cond_b5

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->started:Z
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$000(Ljackpal/androidterm/shortcuts/ColorValue;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 106
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 107
    .local v3, "me":I
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v6}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v6}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v6}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    or-int v2, v5, v6

    .line 108
    .local v2, "k":I
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->value:Landroid/widget/EditText;
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$200(Ljackpal/androidterm/shortcuts/ColorValue;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 110
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$300(Ljackpal/androidterm/shortcuts/ColorValue;)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$400(Ljackpal/androidterm/shortcuts/ColorValue;)[Z

    move-result-object v5

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_a9

    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v0, 0x3

    .line 112
    .local v0, "end":I
    :goto_5f
    move v1, v4

    .local v1, "i":I
    :goto_60
    if-gt v1, v0, :cond_b5

    .line 114
    if-eq v1, v3, :cond_76

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->barLock:Z
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$300(Ljackpal/androidterm/shortcuts/ColorValue;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->locks:[Z
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$400(Ljackpal/androidterm/shortcuts/ColorValue;)[Z

    move-result-object v5

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_a6

    .line 116
    :cond_76
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v5}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v5

    aput p2, v5, v1

    .line 117
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    iget-object v6, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->val$hexWindow:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    iget-object v7, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->this$0:Ljackpal/androidterm/shortcuts/ColorValue;

    # getter for: Ljackpal/androidterm/shortcuts/ColorValue;->color:[I
    invoke-static {v7}, Ljackpal/androidterm/shortcuts/ColorValue;->access$100(Ljackpal/androidterm/shortcuts/ColorValue;)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v5, v6, v7}, Ljackpal/androidterm/shortcuts/ColorValue;->toHexWindow(Landroid/widget/TextView;I)V

    .line 118
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->val$sb:[Landroid/widget/SeekBar;

    aget-object v5, v5, v1

    const/high16 v6, -0x1000000

    mul-int/lit8 v7, v1, 0x8

    rsub-int/lit8 v7, v7, 0x18

    shl-int v7, p2, v7

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 119
    iget-object v5, p0, Ljackpal/androidterm/shortcuts/ColorValue$1;->val$sb:[Landroid/widget/SeekBar;

    aget-object v5, v5, v1

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 111
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v4    # "start":I
    :cond_a9
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "end":I
    move v4, v0

    .restart local v4    # "start":I
    goto :goto_5f

    .line 123
    .end local v0    # "end":I
    .end local v2    # "k":I
    .end local v3    # "me":I
    .end local v4    # "start":I
    :cond_b5
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Ljackpal/androidterm/shortcuts/ColorValue$1;->doProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 101
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljackpal/androidterm/shortcuts/ColorValue$1;->doProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 127
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljackpal/androidterm/shortcuts/ColorValue$1;->doProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 131
    return-void
.end method
