.class final Ljackpal/androidterm/emulatorview/StyleRow;
.super Ljava/lang/Object;
.source "StyleRow.java"


# instance fields
.field private mColumns:I

.field private mData:[B

.field private mStyle:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "style"    # I
    .param p2, "columns"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    .line 24
    iput p2, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mColumns:I

    .line 25
    return-void
.end method

.method private allocate()V
    .registers 3

    .prologue
    .line 75
    iget v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mColumns:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mColumns:I

    if-ge v0, v1, :cond_15

    .line 77
    iget v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/emulatorview/StyleRow;->setStyle(II)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 79
    :cond_15
    return-void
.end method

.method private getStyle(I)I
    .registers 6
    .param p1, "column"    # I

    .prologue
    .line 82
    mul-int/lit8 v0, p1, 0x3

    .line 83
    .local v0, "index":I
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    .line 84
    .local v1, "line":[B
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    return v2
.end method

.method private setStyle(II)V
    .registers 7
    .param p1, "column"    # I
    .param p2, "value"    # I

    .prologue
    .line 89
    mul-int/lit8 v0, p1, 0x3

    .line 90
    .local v0, "index":I
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    .line 91
    .local v1, "line":[B
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 92
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 93
    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 94
    return-void
.end method


# virtual methods
.method copy(ILjackpal/androidterm/emulatorview/StyleRow;II)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "dst"    # Ljackpal/androidterm/emulatorview/StyleRow;
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 55
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_15

    iget-object v0, p2, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_15

    if-nez p1, :cond_15

    if-nez p3, :cond_15

    iget v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mColumns:I

    if-ne p4, v0, :cond_15

    .line 57
    iget v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    iput v0, p2, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    .line 66
    :goto_14
    return-void

    .line 62
    :cond_15
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/StyleRow;->ensureData()V

    .line 63
    invoke-virtual {p2}, Ljackpal/androidterm/emulatorview/StyleRow;->ensureData()V

    .line 64
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    mul-int/lit8 v1, p1, 0x3

    iget-object v2, p2, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    mul-int/lit8 v3, p3, 0x3

    mul-int/lit8 v4, p4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14
.end method

.method ensureData()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_7

    .line 70
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/StyleRow;->allocate()V

    .line 72
    :cond_7
    return-void
.end method

.method get(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 36
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_7

    .line 37
    iget v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    .line 39
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/StyleRow;->getStyle(I)I

    move-result v0

    goto :goto_6
.end method

.method getSolidStyle()I
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a solid style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    iget v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    return v0
.end method

.method isSolidStyle()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method set(II)V
    .registers 4
    .param p1, "column"    # I
    .param p2, "style"    # I

    .prologue
    .line 28
    iget v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mStyle:I

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/StyleRow;->mData:[B

    if-nez v0, :cond_9

    .line 33
    :goto_8
    return-void

    .line 31
    :cond_9
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/StyleRow;->ensureData()V

    .line 32
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/StyleRow;->setStyle(II)V

    goto :goto_8
.end method
