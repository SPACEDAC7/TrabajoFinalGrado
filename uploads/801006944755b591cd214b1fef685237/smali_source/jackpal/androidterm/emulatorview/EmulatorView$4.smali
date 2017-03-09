.class Ljackpal/androidterm/emulatorview/EmulatorView$4;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EmulatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mComposingTextEnd:I

.field private mComposingTextStart:I

.field private mCursor:I

.field private mSelectedTextEnd:I

.field private mSelectedTextStart:I

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;Landroid/view/View;Z)V
    .registers 4
    .param p2, "x0"    # Landroid/view/View;
    .param p3, "x1"    # Z

    .prologue
    .line 634
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private clearComposingText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 803
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 804
    .local v0, "len":I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    if-gt v1, v0, :cond_13

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    if-le v1, v0, :cond_18

    .line 805
    :cond_13
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    .line 818
    :goto_17
    return-void

    .line 808
    :cond_18
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 810
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    if-ge v1, v2, :cond_51

    .line 817
    :goto_4c
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    goto :goto_17

    .line 812
    :cond_51
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    if-ge v1, v2, :cond_5c

    .line 813
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    goto :goto_4c

    .line 815
    :cond_5c
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    goto :goto_4c
.end method

.method private mapAndSend(I)V
    .registers 7
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0xa00000

    .line 669
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1500(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->mapControlChar(I)I

    move-result v0

    .line 670
    .local v0, "result":I
    if-ge v0, v2, :cond_1d

    .line 671
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1600(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljackpal/androidterm/emulatorview/TermSession;->write(I)V

    .line 675
    :goto_17
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1700(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    .line 676
    return-void

    .line 673
    :cond_1d
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1500(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;

    move-result-object v1

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleKeyCode(ILandroid/view/KeyEvent;Z)Z

    goto :goto_17
.end method

.method private sendText(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 645
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 648
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v4, :cond_33

    .line 649
    :try_start_7
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 650
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 652
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_23

    .line 653
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 658
    .local v1, "codePoint":I
    :goto_1d
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mapAndSend(I)V

    .line 648
    .end local v1    # "codePoint":I
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 656
    :cond_23
    const v1, 0xfffd

    .restart local v1    # "codePoint":I
    goto :goto_1d

    .line 660
    .end local v1    # "codePoint":I
    :cond_27
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mapAndSend(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_20

    .line 663
    .end local v0    # "c":C
    :catch_2b
    move-exception v2

    .line 664
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "EmulatorView"

    const-string v6, "error writing "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v2    # "e":Ljava/io/IOException;
    :cond_33
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 683
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    .line 684
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    .line 685
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    .line 686
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 795
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->clearComposingText()V

    .line 796
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->sendText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 7
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    const/16 v3, 0x43

    const/4 v2, 0x0

    .line 825
    if-lez p1, :cond_13

    .line 826
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, p1, :cond_1f

    .line 827
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 830
    .end local v0    # "i":I
    :cond_13
    if-nez p1, :cond_1f

    if-nez p2, :cond_1f

    .line 832
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 836
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->sendText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 716
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    .line 717
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    .line 718
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 4
    .param p1, "reqModes"    # I

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "mode":I
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_7

    .line 728
    or-int/lit16 v0, v0, 0x1000

    .line 730
    :cond_7
    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .param p1, "arg0"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "arg1"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 910
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 911
    .local v0, "len":I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextEnd:I

    if-ge v1, v0, :cond_14

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextStart:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextEnd:I

    if-le v1, v2, :cond_17

    .line 912
    :cond_14
    const-string v1, ""

    .line 914
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextStart:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextEnd:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 745
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 746
    .local v0, "len":I
    if-lez v0, :cond_25

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    if-ltz v1, :cond_25

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_28

    .line 747
    :cond_25
    const-string v1, ""

    .line 749
    :goto_27
    return-object v1

    :cond_28
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 756
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 757
    .local v0, "len":I
    if-lez v0, :cond_1a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    if-ltz v1, :cond_1a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 758
    :cond_1a
    const-string v1, ""

    .line 760
    :goto_1c
    return-object v1

    :cond_1d
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    sub-int/2addr v2, v0

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .param p1, "actionCode"    # I

    .prologue
    .line 843
    if-nez p1, :cond_7

    .line 845
    const-string v0, "\r"

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->sendText(Ljava/lang/CharSequence;)V

    .line 847
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .param p1, "arg0"    # Z

    .prologue
    .line 781
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 858
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 859
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingRegion(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 898
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 899
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView$4;->clearComposingText()V

    .line 900
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    .line 901
    iput p2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    .line 903
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 866
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 867
    .local v0, "len":I
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    if-gt v2, v0, :cond_13

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    if-le v2, v0, :cond_14

    .line 875
    :cond_13
    :goto_13
    return v1

    .line 870
    :cond_14
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 872
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    .line 873
    if-lez p2, :cond_5a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextEnd:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_56
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    .line 875
    const/4 v1, 0x1

    goto :goto_13

    .line 873
    :cond_5a
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mComposingTextStart:I

    sub-int/2addr v1, p2

    goto :goto_56
.end method

.method public setSelection(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 882
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 883
    .local v0, "length":I
    if-ne p1, p2, :cond_19

    if-lez p1, :cond_19

    if-ge p1, v0, :cond_19

    .line 884
    const/4 v1, 0x0

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextEnd:I

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextStart:I

    .line 885
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    .line 891
    :cond_17
    :goto_17
    const/4 v1, 0x1

    return v1

    .line 886
    :cond_19
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    if-ge p2, v0, :cond_17

    .line 887
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextStart:I

    .line 888
    iput p2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mSelectedTextEnd:I

    .line 889
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$4;->mCursor:I

    goto :goto_17
.end method
