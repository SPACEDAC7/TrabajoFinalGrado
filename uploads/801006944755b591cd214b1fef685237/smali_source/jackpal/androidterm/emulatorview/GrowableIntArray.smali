.class Ljackpal/androidterm/emulatorview/GrowableIntArray;
.super Ljava/lang/Object;
.source "GrowableIntArray.java"


# instance fields
.field mData:[I

.field mLength:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "initalCapacity"    # I

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v0, p1, [I

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    .line 7
    return-void
.end method


# virtual methods
.method append(I)V
    .registers 7
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 10
    iget v2, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    array-length v3, v3

    if-le v2, v3, :cond_22

    .line 11
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 13
    .local v1, "temp":[I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    iget v3, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v1, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    .line 16
    .end local v0    # "newLength":I
    .end local v1    # "temp":[I
    :cond_22
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    iget v3, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    aput p1, v2, v3

    .line 17
    return-void
.end method

.method at(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 24
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mData:[I

    aget v0, v0, p1

    return v0
.end method

.method length()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Ljackpal/androidterm/emulatorview/GrowableIntArray;->mLength:I

    return v0
.end method
