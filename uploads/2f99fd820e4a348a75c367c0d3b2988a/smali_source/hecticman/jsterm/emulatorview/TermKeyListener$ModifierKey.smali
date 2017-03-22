.class Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;
.super Ljava/lang/Object;
.source "EmulatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/emulatorview/TermKeyListener;
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

.field final synthetic this$0:Lhecticman/jsterm/emulatorview/TermKeyListener;


# direct methods
.method public constructor <init>(Lhecticman/jsterm/emulatorview/TermKeyListener;)V
    .registers 3

    .prologue
    .line 2040
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->this$0:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    .line 2042
    return-void
.end method


# virtual methods
.method public adjustAfterKeypress()V
    .registers 2

    .prologue
    .line 2079
    iget v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_e

    .line 2090
    :goto_5
    return-void

    .line 2081
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 2084
    :pswitch_a
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 2079
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 2093
    iget v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

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
    .line 2045
    iget v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_12

    .line 2059
    const/4 v0, 0x1

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    .line 2062
    :goto_8
    :pswitch_8
    return-void

    .line 2050
    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_8

    .line 2056
    :pswitch_d
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_8

    .line 2045
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
    .line 2065
    iget v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    packed-switch v0, :pswitch_data_e

    .line 2076
    :goto_5
    :pswitch_5
    return-void

    .line 2067
    :pswitch_6
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 2070
    :pswitch_a
    const/4 v0, 0x2

    iput v0, p0, Lhecticman/jsterm/emulatorview/TermKeyListener$ModifierKey;->mState:I

    goto :goto_5

    .line 2065
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
