.class public Lcom/buzzfeed/toolkit/util/Hashids;
.super Ljava/lang/Object;
.source "Hashids.java"


# static fields
.field private static final DEFAULT_ALPHABET:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"


# instance fields
.field private alphabet:Ljava/lang/String;

.field private guards:Ljava/lang/String;

.field private minHashLength:I

.field private salt:Ljava/lang/String;

.field private seps:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/buzzfeed/toolkit/util/Hashids;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/Hashids;-><init>(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "minHashLength"    # I

    .prologue
    .line 33
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/util/Hashids;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 20
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "minHashLength"    # I
    .param p3, "alphabet"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    .line 19
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 20
    const-string v12, "cfhistuCFHISTU"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 21
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    .line 37
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    .line 38
    if-gez p2, :cond_7d

    .line 39
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    .line 42
    :goto_27
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 44
    const-string v11, ""

    .line 45
    .local v11, "uniqueAlphabet":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v5, v12, :cond_84

    .line 46
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7a

    .line 47
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 45
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 41
    .end local v5    # "i":I
    .end local v11    # "uniqueAlphabet":Ljava/lang/String;
    :cond_7d
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    goto :goto_27

    .line 51
    .restart local v5    # "i":I
    .restart local v11    # "uniqueAlphabet":Ljava/lang/String;
    :cond_84
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 53
    const/16 v7, 0x10

    .line 54
    .local v7, "minAlphabetLength":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v7, :cond_b3

    .line 55
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alphabet must contain at least "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " unique characters"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 58
    :cond_b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c7

    .line 59
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "alphabet cannot contains spaces"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 64
    :cond_c7
    const/4 v5, 0x0

    :goto_c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v5, v12, :cond_145

    .line 65
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 66
    .local v6, "j":I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_116

    .line 67
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 64
    :goto_113
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 69
    :cond_116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    goto :goto_113

    .line 73
    .end local v6    # "j":I
    :cond_145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    const-string v13, "\\s+"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    const-string v13, "\\s+"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/buzzfeed/toolkit/util/Hashids;->consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 77
    const-wide/high16 v8, 0x400c000000000000L

    .line 78
    .local v8, "sepDiv":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    div-int/2addr v12, v13

    int-to-double v12, v12

    cmpl-double v12, v12, v8

    if-lez v12, :cond_1f1

    .line 79
    :cond_19b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 81
    .local v10, "seps_len":I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1af

    .line 82
    add-int/lit8 v10, v10, 0x1

    .line 85
    :cond_1af
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v10, v12, :cond_23a

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v10, v12

    .line 87
    .local v2, "diff":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 94
    .end local v2    # "diff":I
    .end local v10    # "seps_len":I
    :cond_1f1
    :goto_1f1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/buzzfeed/toolkit/util/Hashids;->consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 96
    const/16 v4, 0xc

    .line 97
    .local v4, "guardDiv":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    int-to-double v14, v4

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 99
    .local v3, "guardCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_248

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    .line 106
    :goto_239
    return-void

    .line 90
    .end local v3    # "guardCount":I
    .end local v4    # "guardDiv":I
    .restart local v10    # "seps_len":I
    :cond_23a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    goto :goto_1f1

    .line 103
    .end local v10    # "seps_len":I
    .restart local v3    # "guardCount":I
    .restart local v4    # "guardDiv":I
    :cond_248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    goto :goto_239
.end method

.method private _decode(Ljava/lang/String;Ljava/lang/String;)[J
    .registers 20
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "alphabet"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 284
    .local v7, "i":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "regexp":Ljava/lang/String;
    const-string v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "hashBreakdown":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "hashArray":[Ljava/lang/String;
    array-length v13, v5

    const/4 v14, 0x3

    if-eq v13, v14, :cond_39

    array-length v13, v5

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3a

    .line 289
    :cond_39
    const/4 v7, 0x1

    .line 292
    :cond_3a
    aget-object v6, v5, v7

    .line 294
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const/4 v14, 0x0

    aget-char v9, v13, v14

    .line 296
    .local v9, "lottery":C
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 301
    array-length v14, v5

    const/4 v13, 0x0

    :goto_73
    if-ge v13, v14, :cond_b6

    aget-object v2, v5, v13

    .line 302
    .local v2, "aHashArray":Ljava/lang/String;
    move-object v12, v2

    .line 303
    .local v12, "subHash":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "buffer":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/buzzfeed/toolkit/util/Hashids;->consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/buzzfeed/toolkit/util/Hashids;->unhash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    .line 309
    .end local v2    # "aHashArray":Ljava/lang/String;
    .end local v4    # "buffer":Ljava/lang/String;
    .end local v12    # "subHash":Ljava/lang/String;
    :cond_b6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v3, v13, [J

    .line 310
    .local v3, "arr":[J
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_bd
    array-length v13, v3

    if-ge v8, v13, :cond_cf

    .line 311
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v3, v8

    .line 310
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 314
    :cond_cf
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/buzzfeed/toolkit/util/Hashids;->_encode([J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e0

    .line 315
    const/4 v13, 0x0

    new-array v3, v13, [J

    .line 318
    :cond_e0
    return-object v3
.end method

.method private varargs _encode([J)Ljava/lang/String;
    .registers 26
    .param p1, "numbers"    # [J

    .prologue
    .line 224
    const/4 v12, 0x0

    .line 225
    .local v12, "numberHashInt":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_21

    .line 226
    int-to-long v0, v12

    move-wide/from16 v18, v0

    aget-wide v20, p1, v8

    add-int/lit8 v17, v8, 0x64

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    rem-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 225
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 228
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    .line 229
    .local v2, "alphabet":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    rem-int v18, v12, v18

    aget-char v13, v17, v18

    .line 233
    .local v13, "ret":C
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "ret_str":Ljava/lang/String;
    const/4 v8, 0x0

    :goto_47
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_f7

    .line 237
    aget-wide v10, p1, v8

    .line 238
    .local v10, "num":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->salt:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "buffer":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/buzzfeed/toolkit/util/Hashids;->consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2}, Lcom/buzzfeed/toolkit/util/Hashids;->hash(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "last":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 245
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f3

    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    aget-char v17, v17, v18

    add-int v17, v17, v8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    rem-long v10, v10, v18

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    rem-long v18, v10, v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 248
    .local v15, "sepsIndex":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->seps:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    aget-char v18, v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    .end local v15    # "sepsIndex":I
    :cond_f3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_47

    .line 252
    .end local v3    # "buffer":Ljava/lang/String;
    .end local v9    # "last":Ljava/lang/String;
    .end local v10    # "num":J
    :cond_f7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_185

    .line 253
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    aget-char v17, v17, v18

    add-int v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    rem-int v6, v17, v18

    .line 254
    .local v6, "guardIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    aget-char v5, v17, v6

    .line 256
    .local v5, "guard":C
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 258
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_185

    .line 259
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x2

    aget-char v17, v17, v18

    add-int v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    rem-int v6, v17, v18

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->guards:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    aget-char v5, v17, v6

    .line 262
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 266
    .end local v5    # "guard":C
    .end local v6    # "guardIndex":I
    :cond_185
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v7, v17, 0x2

    .line 267
    .local v7, "halfLen":I
    :cond_18b
    :goto_18b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1e5

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v2}, Lcom/buzzfeed/toolkit/util/Hashids;->consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 270
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 271
    .local v4, "excess":I
    if-lez v4, :cond_18b

    .line 272
    div-int/lit8 v16, v4, 0x2

    .line 273
    .local v16, "start_pos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/buzzfeed/toolkit/util/Hashids;->minHashLength:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_18b

    .line 277
    .end local v4    # "excess":I
    .end local v16    # "start_pos":I
    :cond_1e5
    return-object v14
.end method

.method public static checkedCast(J)I
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 370
    long-to-int v0, p0

    .line 371
    .local v0, "result":I
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_1f

    .line 373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_1f
    return v0
.end method

.method private consistentShuffle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "alphabet"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 323
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_9

    move-object v0, p1

    .line 340
    .end local p1    # "alphabet":Ljava/lang/String;
    .local v0, "alphabet":Ljava/lang/String;
    :goto_8
    return-object v0

    .line 326
    .end local v0    # "alphabet":Ljava/lang/String;
    .restart local p1    # "alphabet":Ljava/lang/String;
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 329
    .local v1, "arr":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    const/4 v7, 0x0

    .local v7, "v":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_15
    if-lez v3, :cond_6f

    .line 330
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/2addr v7, v8

    .line 331
    aget-char v2, v1, v7

    .line 332
    .local v2, "asc_val":I
    add-int/2addr v5, v2

    .line 333
    add-int v8, v2, v7

    add-int/2addr v8, v5

    rem-int v4, v8, v3

    .line 335
    .local v4, "j":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 336
    .local v6, "tmp":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .end local v2    # "asc_val":I
    .end local v4    # "j":I
    .end local v6    # "tmp":C
    :cond_6f
    move-object v0, p1

    .line 340
    .end local p1    # "alphabet":Ljava/lang/String;
    .restart local v0    # "alphabet":Ljava/lang/String;
    goto :goto_8
.end method

.method private hash(JLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "input"    # J
    .param p3, "alphabet"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v2, ""

    .line 345
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 346
    .local v0, "alphabetLen":I
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 349
    .local v1, "arr":[C
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v0

    rem-long v4, p1, v4

    long-to-int v4, v4

    aget-char v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    int-to-long v4, v0

    div-long/2addr p1, v4

    .line 351
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_a

    .line 353
    return-object v2
.end method

.method private unhash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 19
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "alphabet"    # Ljava/lang/String;

    .prologue
    .line 357
    const-wide/16 v4, 0x0

    .line 358
    .local v4, "number":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 360
    .local v3, "input_arr":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_2f

    .line 361
    aget-char v8, v3, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    int-to-long v6, v8

    .line 362
    .local v6, "pos":J
    long-to-double v8, v4

    long-to-double v10, v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v2

    add-int/lit8 v14, v14, -0x1

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-long v4, v8

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 365
    .end local v6    # "pos":J
    :cond_2f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[J
    .registers 4
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x0

    new-array v0, v1, [J

    .line 177
    .local v0, "ret":[J
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    .end local v0    # "ret":[J
    :goto_b
    return-object v0

    .restart local v0    # "ret":[J
    :cond_c
    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/Hashids;->alphabet:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/buzzfeed/toolkit/util/Hashids;->_decode(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_b
.end method

.method public decodeHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v3, ""

    .line 214
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->decode(Ljava/lang/String;)[J

    move-result-object v2

    .line 216
    .local v2, "numbers":[J
    array-length v5, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_29

    aget-wide v0, v2, v4

    .line 217
    .local v0, "number":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 220
    .end local v0    # "number":J
    :cond_29
    return-object v3
.end method

.method public decrypt(Ljava/lang/String;)[J
    .registers 3
    .param p1, "hash"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->decode(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public decryptHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "hash"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->decodeHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs encode([J)Ljava/lang/String;
    .registers 10
    .param p1, "numbers"    # [J

    .prologue
    .line 154
    array-length v4, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_17

    aget-wide v0, p1, v3

    .line 155
    .local v0, "number":J
    const-wide/high16 v6, 0x20000000000000L

    cmp-long v5, v0, v6

    if-lez v5, :cond_14

    .line 156
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "number can not be greater than 9007199254740992L"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    .end local v0    # "number":J
    :cond_17
    const-string v2, ""

    .line 161
    .local v2, "retval":Ljava/lang/String;
    array-length v3, p1

    if-nez v3, :cond_1d

    .line 165
    .end local v2    # "retval":Ljava/lang/String;
    :goto_1c
    return-object v2

    .restart local v2    # "retval":Ljava/lang/String;
    :cond_1d
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->_encode([J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c
.end method

.method public encodeHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "hexa"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v4, "^[0-9a-fA-F]+$"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 191
    const-string v4, ""

    .line 203
    :goto_a
    return-object v4

    .line 193
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "matched":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v4, "[\\w\\W]{1,12}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 196
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_1a
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 200
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 201
    .local v3, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_61

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 203
    :cond_61
    invoke-direct {p0, v3}, Lcom/buzzfeed/toolkit/util/Hashids;->_encode([J)Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method public varargs encrypt([J)Ljava/lang/String;
    .registers 3
    .param p1, "numbers"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->encode([J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "hexa"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/util/Hashids;->encodeHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    const-string v0, "1.0.0"

    return-object v0
.end method
