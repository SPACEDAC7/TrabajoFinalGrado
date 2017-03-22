.class Lhecticman/jsterm/emulatorview/EmulatorView$3;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/emulatorview/EmulatorView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mComposingTextEnd:I

.field private mComposingTextStart:I

.field private mCursor:I

.field private mInBatchEdit:Z

.field private mSelectedTextEnd:I

.field private mSelectedTextStart:I

.field final synthetic this$0:Lhecticman/jsterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearComposingText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 538
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 539
    .local v0, "len":I
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-gt v1, v0, :cond_13

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-le v1, v0, :cond_18

    .line 540
    :cond_13
    iput v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 553
    :goto_17
    return-void

    .line 543
    :cond_18
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 545
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-lt v1, v2, :cond_56

    .line 547
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-ge v1, v2, :cond_5b

    .line 548
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 552
    :cond_56
    :goto_56
    iput v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    goto :goto_17

    .line 550
    :cond_5b
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    goto :goto_56
.end method

.method private mapAndSend(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0xa00000

    .line 403
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$13(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TermKeyListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->mapControlChar(I)I

    move-result v0

    .line 404
    .local v0, "result":I
    if-ge v0, v2, :cond_1d

    .line 405
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$14(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhecticman/jsterm/emulatorview/TermSession;->write(I)V

    .line 409
    :goto_17
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$15(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    .line 410
    return-void

    .line 407
    :cond_1d
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$13(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TermKeyListener;

    move-result-object v1

    sub-int v2, v0, v2

    iget-object v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleKeyCode(IZ)Z

    goto :goto_17
.end method

.method private sendChar(I)V
    .registers 3
    .param p1, "c"    # I

    .prologue
    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mapAndSend(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 376
    :goto_3
    return-void

    .line 373
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private sendText(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 379
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 382
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-lt v3, v4, :cond_8

    .line 400
    :goto_7
    return-void

    .line 383
    :cond_8
    :try_start_8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 384
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 386
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_24

    .line 387
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 392
    .local v1, "codePoint":I
    :goto_1e
    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mapAndSend(I)V

    .line 382
    .end local v1    # "codePoint":I
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 390
    :cond_24
    const v1, 0xfffd

    .restart local v1    # "codePoint":I
    goto :goto_1e

    .line 394
    .end local v1    # "codePoint":I
    :cond_28
    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mapAndSend(I)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 397
    .end local v0    # "c":C
    :catch_2c
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "EmulatorView"

    const-string v6, "error writing "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 417
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 418
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 419
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 420
    iput-boolean v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mInBatchEdit:Z

    .line 421
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/inputmethod/CompletionInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 530
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->clearComposingText()V

    .line 531
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 534
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

    .line 560
    if-lez p1, :cond_15

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-lt v0, p1, :cond_a

    .line 571
    .end local v0    # "i":I
    :cond_8
    :goto_8
    const/4 v1, 0x1

    return v1

    .line 563
    .restart local v0    # "i":I
    :cond_a
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 562
    invoke-virtual {p0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 565
    .end local v0    # "i":I
    :cond_15
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 568
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 567
    invoke-virtual {p0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_8
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mInBatchEdit:Z

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    const-string v1, ""

    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 453
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 454
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 455
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .param p1, "arg0"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "arg1"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 645
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 646
    .local v0, "len":I
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    if-ge v1, v0, :cond_14

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    if-le v1, v2, :cond_17

    .line 647
    :cond_14
    const-string v1, ""

    .line 649
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

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
    .line 479
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 480
    .local v0, "len":I
    if-lez v0, :cond_25

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    if-ltz v1, :cond_25

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_28

    .line 481
    :cond_25
    const-string v1, ""

    .line 483
    :goto_27
    return-object v1

    :cond_28
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

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
    .line 490
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 491
    .local v0, "len":I
    if-lez v0, :cond_1a

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    if-ltz v1, :cond_1a

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 492
    :cond_1a
    const-string v1, ""

    .line 494
    :goto_1c
    return-object v1

    :cond_1d
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    sub-int/2addr v2, v0

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .param p1, "actionCode"    # I

    .prologue
    .line 578
    if-nez p1, :cond_7

    .line 580
    const-string v0, "\r"

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .param p1, "arg0"    # Z

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 593
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingRegion(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 633
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 634
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;->clearComposingText()V

    .line 635
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 636
    iput p2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 638
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

    .line 601
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 602
    .local v0, "len":I
    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-gt v2, v0, :cond_13

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-le v2, v0, :cond_14

    .line 610
    :cond_13
    :goto_13
    return v1

    .line 605
    :cond_14
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v4}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 607
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 608
    if-lez p2, :cond_5a

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_56
    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 610
    const/4 v1, 0x1

    goto :goto_13

    .line 609
    :cond_5a
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    sub-int/2addr v1, p2

    goto :goto_56
.end method

.method public setSelection(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 617
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 618
    .local v0, "length":I
    if-ne p1, p2, :cond_19

    if-lez p1, :cond_19

    if-ge p1, v0, :cond_19

    .line 619
    const/4 v1, 0x0

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    .line 620
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 626
    :cond_17
    :goto_17
    const/4 v1, 0x1

    return v1

    .line 621
    :cond_19
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    if-ge p2, v0, :cond_17

    .line 622
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    .line 623
    iput p2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    .line 624
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$3;->mCursor:I

    goto :goto_17
.end method
