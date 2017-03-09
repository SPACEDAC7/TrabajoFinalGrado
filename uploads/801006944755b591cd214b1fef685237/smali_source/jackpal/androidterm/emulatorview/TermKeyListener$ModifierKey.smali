.class Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;
.super Ljava/lang/Object;
.source "TermKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/TermKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModifierKey"
.end annotation


# static fields
.field private static final LOCKED:I = 0x4

.field private static final PRESSED:I = 0x1

.field private static final RELEASED:I = 0x2

.field private static final UNPRESSED:I = 0x0

.field private static final USED:I = 0x3


# instance fields
.field private mState:I

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/TermKeyListener;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/emulatorview/TermKeyListener;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->this$0:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    .line 224
    return-void
.end method


# virtual methods
.method public adjustAfterKeypress()V
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_e

    .line 272
    :goto_5
    return-void

    .line 263
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 266
    :pswitch_a
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 261
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public getUIMode()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_c

    .line 282
    const/4 v0, 0x0

    .line 288
    :goto_6
    return v0

    .line 286
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 288
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 279
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPress()V
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_12

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    .line 244
    :goto_8
    :pswitch_8
    return-void

    .line 232
    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_8

    .line 238
    :pswitch_d
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_8

    .line 227
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method public onRelease()V
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_e

    .line 258
    :goto_5
    :pswitch_5
    return-void

    .line 249
    :pswitch_6
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 252
    :pswitch_a
    const/4 v0, 0x2

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 247
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
