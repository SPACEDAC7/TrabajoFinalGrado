.class public Lcom/buzzfeed/android/util/BuzzFeedJsonReader;
.super Ljava/lang/Object;
.source "BuzzFeedJsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    }
.end annotation


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field static final TAG:Ljava/lang/String;

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Lcom/buzzfeed/android/util/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 190
    const-class v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Lcom/buzzfeed/android/util/StringPool;

    invoke-direct {v0}, Lcom/buzzfeed/android/util/StringPool;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stringPool:Lcom/buzzfeed/android/util/StringPool;

    .line 201
    iput-boolean v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    .line 209
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    .line 210
    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 211
    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    .line 216
    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartLine:I

    .line 217
    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    .line 221
    sget-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->push(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 242
    iput-boolean v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    .line 248
    if-nez p1, :cond_34

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_34
    iput-object p1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->in:Ljava/io/Reader;

    .line 252
    return-void
.end method

.method private advance()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 387
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 388
    .local v0, "result":Landroid/util/JsonToken;
    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 389
    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 390
    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->name:Ljava/lang/String;

    .line 391
    return-object v0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    if-nez v0, :cond_b

    .line 852
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 854
    :cond_b
    return-void
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1124
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1126
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 1151
    :goto_10
    return-object v0

    .line 1127
    :cond_11
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    if-ne v0, v5, :cond_6e

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_29

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6e

    :cond_29
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_6e

    :cond_3f
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_53

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    :cond_53
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_67

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    .line 1132
    :cond_67
    const-string v0, "null"

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 1133
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    goto :goto_10

    .line 1134
    :cond_6e
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    if-ne v0, v5, :cond_d3

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_86

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d3

    :cond_86
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9e

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d3

    :cond_9e
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b4

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_d3

    :cond_b4
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_ca

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_d3

    .line 1139
    :cond_ca
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 1140
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    goto/16 :goto_10

    .line 1141
    :cond_d3
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14e

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_ec

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14e

    :cond_ec
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_104

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14e

    :cond_104
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_118

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_14e

    :cond_118
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_130

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14e

    :cond_130
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_146

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_14e

    .line 1147
    :cond_146
    const-string v0, "false"

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 1148
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    goto/16 :goto_10

    .line 1150
    :cond_14e
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stringPool:Lcom/buzzfeed/android/util/StringPool;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/buzzfeed/android/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 1151
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    goto/16 :goto_10
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .registers 10
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1162
    move v1, p2

    .line 1163
    .local v1, "i":I
    aget-char v0, p1, v1

    .line 1165
    .local v0, "c":I
    if-ne v0, v5, :cond_f

    .line 1166
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1169
    :cond_f
    if-ne v0, v3, :cond_26

    .line 1170
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1180
    :cond_15
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_3c

    .line 1181
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1182
    :goto_1d
    if-lt v0, v3, :cond_3c

    if-gt v0, v4, :cond_3c

    .line 1183
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1d

    .line 1171
    :cond_26
    const/16 v2, 0x31

    if-lt v0, v2, :cond_39

    if-gt v0, v4, :cond_39

    .line 1172
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1173
    :goto_30
    if-lt v0, v3, :cond_15

    if-gt v0, v4, :cond_15

    .line 1174
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_30

    .line 1177
    :cond_39
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 1205
    :goto_3b
    return-object v2

    .line 1187
    :cond_3c
    const/16 v2, 0x65

    if-eq v0, v2, :cond_44

    const/16 v2, 0x45

    if-ne v0, v2, :cond_66

    .line 1188
    :cond_44
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1189
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_4e

    if-ne v0, v5, :cond_52

    .line 1190
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1192
    :cond_52
    if-lt v0, v3, :cond_63

    if-gt v0, v4, :cond_63

    .line 1193
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1194
    :goto_5a
    if-lt v0, v3, :cond_66

    if-gt v0, v4, :cond_66

    .line 1195
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_5a

    .line 1198
    :cond_63
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    goto :goto_3b

    .line 1202
    :cond_66
    add-int v2, p2, p3

    if-ne v1, v2, :cond_6d

    .line 1203
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    goto :goto_3b

    .line 1205
    :cond_6d
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    goto :goto_3b
.end method

.method private expect(Landroid/util/JsonToken;)V
    .registers 5
    .param p1, "expected"    # Landroid/util/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 323
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    if-eq v0, p1, :cond_2e

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2e
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 327
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 11
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    if-ge v0, v4, :cond_21

    .line 739
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1a

    .line 740
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartLine:I

    .line 741
    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    .line 738
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 743
    :cond_1a
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    goto :goto_17

    .line 747
    :cond_21
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    if-eq v4, v5, :cond_79

    .line 748
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    .line 749
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget-object v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v7, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    :goto_39
    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 756
    :cond_3b
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    iget-object v7, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    array-length v7, v7

    iget v8, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_7c

    .line 757
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    .line 760
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartLine:I

    if-ne v4, v2, :cond_74

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    if-ne v4, v2, :cond_74

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-lez v4, :cond_74

    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    aget-char v4, v4, v3

    const v5, 0xfeff

    if-ne v4, v5, :cond_74

    .line 762
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 763
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    .line 766
    :cond_74
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-lt v4, p1, :cond_3b

    .line 770
    :goto_78
    return v2

    .line 751
    .end local v1    # "total":I
    :cond_79
    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    goto :goto_39

    .restart local v1    # "total":I
    :cond_7c
    move v2, v3

    .line 770
    goto :goto_78
.end method

.method private getColumnNumber()I
    .registers 5

    .prologue
    .line 784
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartColumn:I

    .line 785
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    if-ge v0, v2, :cond_16

    .line 786
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    .line 787
    const/4 v1, 0x1

    .line 785
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 789
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 792
    :cond_16
    return v1
.end method

.method private getLineNumber()I
    .registers 5

    .prologue
    .line 774
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->bufferStartLine:I

    .line 775
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    if-ge v0, v2, :cond_14

    .line 776
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 777
    add-int/lit8 v1, v1, 0x1

    .line 775
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 780
    :cond_14
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/16 v5, 0x14

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v2, "snippet":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1221
    .local v1, "beforePos":I
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1222
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1223
    .local v0, "afterPos":I
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1224
    return-object v2
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .registers 3
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    if-eqz p1, :cond_19

    .line 601
    sget-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->replaceTop(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 617
    :goto_7
    :sswitch_7
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 632
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 633
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    :goto_18
    return-object v0

    .line 604
    :cond_19
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    .line 613
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 606
    :sswitch_27
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 607
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_18

    .line 609
    :sswitch_2f
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    goto :goto_7

    .line 619
    :sswitch_33
    if-eqz p1, :cond_3d

    .line 620
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 621
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_18

    .line 627
    :cond_3d
    :sswitch_3d
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 628
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 629
    const-string v0, "null"

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 630
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_18

    .line 617
    nop

    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_3d
        0x3b -> :sswitch_3d
        0x5d -> :sswitch_33
    .end sparse-switch

    .line 604
    :sswitch_data_5e
    .sparse-switch
        0x2c -> :sswitch_7
        0x3b -> :sswitch_2f
        0x5d -> :sswitch_27
    .end sparse-switch
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .registers 4
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    if-eqz p1, :cond_3d

    .line 645
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_68

    .line 650
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 666
    :sswitch_f
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v0

    .line 667
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_6e

    .line 674
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 675
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 676
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->name:Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 678
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 647
    .end local v0    # "quote":I
    :pswitch_35
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 648
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 683
    :goto_3c
    return-object v1

    .line 653
    :cond_3d
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    .line 661
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 655
    :sswitch_4b
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .line 656
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_3c

    .line 669
    .restart local v0    # "quote":I
    :sswitch_53
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 671
    :sswitch_56
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->name:Ljava/lang/String;

    .line 682
    :cond_5d
    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->DANGLING_NAME:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->replaceTop(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 683
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_3c

    .line 645
    nop

    :pswitch_data_68
    .packed-switch 0x7d
        :pswitch_35
    .end packed-switch

    .line 667
    :sswitch_data_6e
    .sparse-switch
        0x22 -> :sswitch_56
        0x27 -> :sswitch_53
    .end sparse-switch

    .line 653
    :sswitch_data_78
    .sparse-switch
        0x2c -> :sswitch_f
        0x3b -> :sswitch_f
        0x7d -> :sswitch_4b
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .registers 8
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    .line 950
    iput v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    .line 951
    const/4 v1, 0x0

    .line 955
    .local v1, "i":I
    :cond_8
    :goto_8
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-ge v3, v4, :cond_33

    .line 956
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_88

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 962
    :sswitch_1c
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 1006
    :goto_1f
    :sswitch_1f
    if-eqz p1, :cond_68

    if-nez v0, :cond_68

    .line 1007
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valuePos:I

    .line 1008
    const/4 v2, 0x0

    .line 1017
    .local v2, "result":Ljava/lang/String;
    :goto_28
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    .line 1018
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 1019
    return-object v2

    .line 983
    .end local v2    # "result":Ljava/lang/String;
    :cond_33
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_47

    .line 984
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 987
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1f

    .line 993
    :cond_47
    if-nez v0, :cond_4e

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4e
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 997
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    .line 998
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 999
    const/4 v1, 0x0

    .line 1000
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1f

    .line 1009
    :cond_68
    iget-boolean v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    if-eqz v3, :cond_6f

    .line 1010
    const-string v2, "skipped!"

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_28

    .line 1011
    .end local v2    # "result":Ljava/lang/String;
    :cond_6f
    if-nez v0, :cond_7c

    .line 1012
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stringPool:Lcom/buzzfeed/android/util/StringPool;

    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/buzzfeed/android/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_28

    .line 1014
    .end local v2    # "result":Ljava/lang/String;
    :cond_7c
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_28

    .line 956
    :sswitch_data_88
    .sparse-switch
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1f
        0xc -> :sswitch_1f
        0xd -> :sswitch_1f
        0x20 -> :sswitch_1f
        0x23 -> :sswitch_1c
        0x2c -> :sswitch_1f
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_1f
        0x3b -> :sswitch_1c
        0x3d -> :sswitch_1c
        0x5b -> :sswitch_1f
        0x5c -> :sswitch_1c
        0x5d -> :sswitch_1f
        0x7b -> :sswitch_1f
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 796
    :goto_1
    :sswitch_1
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-lt v2, v3, :cond_d

    invoke-direct {p0, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 797
    :cond_d
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v0, v2, v3

    .line 798
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_6a

    .line 843
    :cond_1a
    :goto_1a
    return v0

    .line 806
    :sswitch_1b
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-ne v2, v3, :cond_27

    invoke-direct {p0, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 810
    :cond_27
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 811
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v1, v2, v3

    .line 812
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_84

    goto :goto_1a

    .line 815
    :sswitch_34
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 816
    const-string v2, "*/"

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 817
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 819
    :cond_49
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    goto :goto_1

    .line 824
    :sswitch_50
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 825
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipToEndOfLine()V

    goto :goto_1

    .line 838
    .end local v1    # "peek":C
    :sswitch_5a
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 839
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipToEndOfLine()V

    goto :goto_1

    .line 847
    .end local v0    # "c":I
    :cond_61
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    nop

    :sswitch_data_6a
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_5a
        0x2f -> :sswitch_1b
    .end sparse-switch

    .line 812
    :sswitch_data_84
    .sparse-switch
        0x2a -> :sswitch_34
        0x2f -> :sswitch_50
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .registers 3
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nextString(CZ)Ljava/lang/String;
    .registers 11
    .param p1, "quote"    # C
    .param p2, "unescape"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nextString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "TAG":Ljava/lang/String;
    const/4 v1, 0x0

    .line 899
    .local v1, "builder":Ljava/lang/StringBuilder;
    :cond_18
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 900
    .local v3, "start":I
    :cond_1a
    :goto_1a
    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-ge v4, v5, :cond_78

    .line 901
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v2, v4, v5

    .line 903
    .local v2, "c":I
    if-ne v2, p1, :cond_52

    .line 904
    iget-boolean v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    if-eqz v4, :cond_33

    .line 905
    const-string v4, "skipped!"

    .line 910
    :goto_32
    return-object v4

    .line 906
    :cond_33
    if-nez v1, :cond_43

    .line 907
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stringPool:Lcom/buzzfeed/android/util/StringPool;

    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/buzzfeed/android/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    .line 909
    :cond_43
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    .line 912
    :cond_52
    if-ne v2, v7, :cond_1a

    .line 913
    if-nez v1, :cond_5b

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_5b
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 917
    if-eqz p2, :cond_71

    .line 918
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->readEscapeCharacter()C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :goto_6e
    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    goto :goto_1a

    .line 920
    :cond_71
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->readEscapeCharacterWithoutModification(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 927
    .end local v2    # "c":I
    :cond_78
    if-nez v1, :cond_7f

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_7f
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 931
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 933
    const-string v4, "Unterminated string"

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4
.end method

.method private nextValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v0

    .line 710
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_36

    .line 726
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 727
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    :goto_11
    return-object v1

    .line 712
    :sswitch_12
    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->push(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 713
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_11

    .line 716
    :sswitch_1c
    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->EMPTY_ARRAY:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->push(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 717
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_11

    .line 720
    :sswitch_26
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 722
    :sswitch_29
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 723
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_11

    .line 710
    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private objectValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 701
    :pswitch_7
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 695
    :pswitch_e
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 696
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2e

    .line 697
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 704
    :cond_2e
    :pswitch_2e
    sget-object v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_OBJECT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->replaceTop(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 705
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 691
    :pswitch_data_38
    .packed-switch 0x3a
        :pswitch_2e
        :pswitch_7
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method private peekStack()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    return-object v0
.end method

.method private pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    return-object v0
.end method

.method private push(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V
    .registers 3
    .param p1, "newTop"    # Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1036
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1037
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1040
    :cond_15
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v0, v2, v3

    .line 1041
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_60

    .line 1069
    .end local v0    # "escaped":C
    :goto_22
    return v0

    .line 1043
    .restart local v0    # "escaped":C
    :sswitch_23
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-le v2, v3, :cond_38

    invoke-direct {p0, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1044
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1046
    :cond_38
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stringPool:Lcom/buzzfeed/android/util/StringPool;

    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/buzzfeed/android/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    .line 1048
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_22

    .line 1051
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_50
    const/16 v0, 0x9

    goto :goto_22

    .line 1054
    :sswitch_53
    const/16 v0, 0x8

    goto :goto_22

    .line 1057
    :sswitch_56
    const/16 v0, 0xa

    goto :goto_22

    .line 1060
    :sswitch_59
    const/16 v0, 0xd

    goto :goto_22

    .line 1063
    :sswitch_5c
    const/16 v0, 0xc

    goto :goto_22

    .line 1041
    nop

    :sswitch_data_60
    .sparse-switch
        0x62 -> :sswitch_53
        0x66 -> :sswitch_5c
        0x6e -> :sswitch_56
        0x72 -> :sswitch_59
        0x74 -> :sswitch_50
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private readEscapeCharacterWithoutModification(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1084
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1085
    const-string v1, "Unterminated escape sequence"

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1088
    :cond_15
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v0, v1, v2

    .line 1089
    .local v0, "escaped":C
    packed-switch v0, :pswitch_data_4c

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    :goto_25
    return-void

    .line 1091
    :pswitch_26
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-le v1, v2, :cond_3b

    invoke-direct {p0, v4}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1092
    const-string v1, "Unterminated escape sequence"

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1094
    :cond_3b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1095
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {p1, v1, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1096
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    goto :goto_25

    .line 1089
    :pswitch_data_4c
    .packed-switch 0x75
        :pswitch_26
    .end packed-switch
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 1110
    iget v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->valueLength:I

    if-nez v0, :cond_12

    .line 1111
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1113
    :cond_12
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 1114
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_21

    .line 1115
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->checkLenient()V

    .line 1117
    :cond_21
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    return-object v0
.end method

.method private replaceTop(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V
    .registers 4
    .param p1, "newTop"    # Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 5
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    :goto_0
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-le v1, v2, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 873
    :cond_15
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 874
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_30

    .line 872
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    goto :goto_0

    .line 873
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 878
    :cond_33
    const/4 v1, 0x1

    .line 880
    .end local v0    # "c":I
    :goto_34
    return v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_34
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    :cond_0
    iget v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->limit:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 863
    :cond_d
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->buffer:[C

    iget v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pos:I

    aget-char v0, v1, v2

    .line 864
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 868
    .end local v0    # "c":C
    :cond_1f
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1215
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->expect(Landroid/util/JsonToken;)V

    .line 292
    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->expect(Landroid/util/JsonToken;)V

    .line 308
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 550
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->CLOSED:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 553
    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->expect(Landroid/util/JsonToken;)V

    .line 300
    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->expect(Landroid/util/JsonToken;)V

    .line 316
    return-void
.end method

.method public getArrayObjectAsJson()Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".getArrayObjectAsJson"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->isLenient()Z

    move-result v3

    .line 1237
    .local v3, "isLenient":Z
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->setLenient(Z)V

    .line 1238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_22
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->beginObject()V

    .line 1242
    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const/4 v6, 0x1

    .line 1244
    .local v6, "objectLevel":I
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v8

    int-to-char v1, v8

    .line 1245
    .local v1, "c":C
    :cond_31
    :goto_31
    if-lez v6, :cond_6b

    .line 1246
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1247
    const/16 v8, 0x7b

    if-ne v1, v8, :cond_3c

    add-int/lit8 v6, v6, 0x1

    .line 1248
    :cond_3c
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_42

    add-int/lit8 v6, v6, -0x1

    .line 1249
    :cond_42
    const/16 v8, 0x22

    if-eq v1, v8, :cond_4a

    const/16 v8, 0x27

    if-ne v1, v8, :cond_63

    :cond_4a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextString(CZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_63
    if-lez v6, :cond_31

    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextNonWhitespace()I

    move-result v8

    int-to-char v1, v8

    goto :goto_31

    .line 1252
    :cond_6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1253
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Buzz JSON String: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->pop()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_88} :catch_91
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_88} :catch_b2
    .catchall {:try_start_22 .. :try_end_88} :catchall_ad

    .line 1262
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->setLenient(Z)V

    .line 1266
    :try_start_8b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_90} :catch_d2

    .line 1272
    .end local v1    # "c":C
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "objectLevel":I
    :goto_90
    return-object v4

    .line 1255
    :catch_91
    move-exception v2

    .line 1256
    .local v2, "e":Ljava/io/IOException;
    :try_start_92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing Buzz JSON string from reader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1257
    throw v2
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_ad

    .line 1262
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_ad
    move-exception v8

    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->setLenient(Z)V

    throw v8

    .line 1258
    :catch_b2
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing Buzz JSON string from reader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cd
    .catchall {:try_start_b3 .. :try_end_cd} :catchall_ad

    .line 1260
    const/4 v4, 0x0

    .line 1262
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->setLenient(Z)V

    goto :goto_90

    .line 1267
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "c":C
    .restart local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "objectLevel":I
    :catch_d2
    move-exception v2

    .line 1268
    .local v2, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing Buzz JSON string from reader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_e2

    const-string v5, "null"

    .end local v5    # "jsonString":Ljava/lang/String;
    :cond_e2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    throw v2
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 334
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 439
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_24

    .line 440
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_24
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    if-ne v1, v2, :cond_30

    const/4 v0, 0x1

    .line 444
    .local v0, "result":Z
    :goto_2c
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 445
    return v0

    .line 443
    .end local v0    # "result":Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 473
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2a

    .line 474
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_2a
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 478
    .local v0, "result":D
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 479
    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 525
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2a

    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2a

    .line 526
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    :cond_2a
    :try_start_2a
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2f} :catch_34

    move-result v3

    .line 540
    .local v3, "result":I
    :cond_30
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 541
    return v3

    .line 532
    .end local v3    # "result":I
    :catch_34
    move-exception v2

    .line 533
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 534
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 535
    .restart local v3    # "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_30

    .line 536
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 494
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v6, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v3, v6, :cond_2a

    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v3, v6, :cond_2a

    .line 495
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2f} :catch_34

    move-result-wide v4

    .line 509
    .local v4, "result":J
    :cond_30
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 510
    return-wide v4

    .line 501
    .end local v4    # "result":J
    :catch_34
    move-exception v2

    .line 502
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 503
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 504
    .restart local v4    # "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_30

    .line 505
    new-instance v3, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 403
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_26

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_26
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->name:Ljava/lang/String;

    .line 407
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 408
    return-object v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 457
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_24

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_24
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 462
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    .line 421
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2c

    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_2c
    iget-object v0, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->value:Ljava/lang/String;

    .line 426
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    .line 427
    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    if-eqz v3, :cond_9

    .line 342
    iget-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    .line 372
    :cond_8
    :goto_8
    return-object v1

    .line 345
    :cond_9
    sget-object v3, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$1;->$SwitchMap$com$buzzfeed$android$util$BuzzFeedJsonReader$JsonScope:[I

    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peekStack()Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8a

    .line 377
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 347
    :pswitch_1e
    sget-object v3, Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;->NONEMPTY_DOCUMENT:Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->replaceTop(Lcom/buzzfeed/android/util/BuzzFeedJsonReader$JsonScope;)V

    .line 348
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v1

    .line 349
    .local v1, "firstToken":Landroid/util/JsonToken;
    iget-boolean v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v4, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    sget-object v4, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_8

    .line 350
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    .end local v1    # "firstToken":Landroid/util/JsonToken;
    :pswitch_52
    invoke-direct {p0, v6}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 357
    :pswitch_57
    invoke-direct {p0, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 359
    :pswitch_5c
    invoke-direct {p0, v6}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 361
    :pswitch_61
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 363
    :pswitch_66
    invoke-direct {p0, v5}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v1

    goto :goto_8

    .line 366
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v2

    .line 367
    .local v2, "token":Landroid/util/JsonToken;
    iget-boolean v3, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    if-eqz v3, :cond_75

    move-object v1, v2

    .line 368
    goto :goto_8

    .line 370
    :cond_75
    const-string v3, "Expected EOF"

    invoke-direct {p0, v3}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_7c
    .catch Ljava/io/EOFException; {:try_start_6b .. :try_end_7c} :catch_7c

    .line 371
    .end local v2    # "token":Landroid/util/JsonToken;
    :catch_7c
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->token:Landroid/util/JsonToken;

    goto :goto_8

    .line 375
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_82
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
        :pswitch_82
    .end packed-switch
.end method

.method public setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->lenient:Z

    .line 277
    return-void
.end method

.method public skipValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 561
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    .line 563
    :try_start_4
    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1e

    .line 564
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No element left to skip"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1a

    .line 576
    :catchall_1a
    move-exception v2

    iput-boolean v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    throw v2

    .line 566
    :cond_1e
    const/4 v0, 0x0

    .line 568
    .local v0, "count":I
    :cond_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v1

    .line 569
    .local v1, "token":Landroid/util/JsonToken;
    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2b

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1a

    if-ne v1, v2, :cond_32

    .line 570
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 574
    :cond_2d
    :goto_2d
    if-nez v0, :cond_1f

    .line 576
    iput-boolean v4, p0, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->skipping:Z

    .line 578
    return-void

    .line 571
    :cond_32
    :try_start_32
    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_3a

    sget-object v2, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_1a

    if-ne v1, v2, :cond_2d

    .line 572
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/buzzfeed/android/util/BuzzFeedJsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
