.class abstract Lhecticman/jsterm/emulatorview/BaseTextRenderer;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/TextRenderer;


# static fields
.field static final defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

.field protected static final mCursorPaint:I = -0x7f7f80


# instance fields
.field protected mBackPaint:[I

.field protected mForePaint:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1287
    new-instance v0, Lhecticman/jsterm/emulatorview/ColorScheme;

    const/4 v1, 0x7

    const v2, -0x333334

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-direct {v0, v1, v2, v3, v4}, Lhecticman/jsterm/emulatorview/ColorScheme;-><init>(IIII)V

    .line 1286
    sput-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 1256
    return-void
.end method

.method public constructor <init>(Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 6
    .param p1, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    .line 1273
    iput-object v0, p0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->mForePaint:[I

    .line 1275
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    .line 1283
    iput-object v0, p0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->mBackPaint:[I

    .line 1290
    if-nez p1, :cond_19

    .line 1291
    sget-object p1, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 1293
    :cond_19
    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getForeColorIndex()I

    move-result v0

    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getForeColor()I

    move-result v1

    .line 1294
    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColorIndex()I

    move-result v2

    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v3

    .line 1293
    invoke-direct {p0, v0, v1, v2, v3}, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->setDefaultColors(IIII)V

    .line 1295
    return-void

    .line 1257
    nop

    :array_2e
    .array-data 4
        -0x1000000
        -0x340000
        -0xff3400
        -0x333400
        -0xffff34
        -0x33ff34
        -0xff3334
        -0x333334
        -0x99999a
        -0x10000
        -0xff0100
        -0x100
        -0xffff01
        -0xff01
        -0xff0001
        -0x1
    .end array-data

    .line 1275
    :array_52
    .array-data 4
        -0x1000000
        -0x340000
        -0xff3400
        -0x333400
        -0xffff34
        -0xff34
        -0xff3334
        -0x1
    .end array-data
.end method

.method private setDefaultColors(IIII)V
    .registers 6
    .param p1, "forePaintIndex"    # I
    .param p2, "forePaintColor"    # I
    .param p3, "backPaintIndex"    # I
    .param p4, "backPaintColor"    # I

    .prologue
    .line 1299
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->mForePaint:[I

    aput p2, v0, p1

    .line 1300
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->mBackPaint:[I

    aput p4, v0, p3

    .line 1301
    return-void
.end method
