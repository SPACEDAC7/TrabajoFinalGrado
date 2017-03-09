.class public Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a:Ljava/util/TimeZone;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    const/16 v1, 0x30

    if-lt v0, v1, :cond_12

    const/16 v1, 0x39

    if-le v0, v1, :cond_13

    .line 349
    :cond_12
    :goto_12
    return p1

    .line 345
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 349
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_12
.end method

.method private static a(Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 301
    if-ltz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    if-le p1, p2, :cond_12

    .line 302
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_12
    const/4 v0, 0x0

    .line 308
    if-ge p1, p2, :cond_71

    .line 309
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    if-gez v0, :cond_3e

    .line 311
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_3e
    neg-int v0, v0

    .line 315
    :goto_3f
    if-ge v1, p2, :cond_6f

    .line 316
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 317
    if-gez v1, :cond_6a

    .line 318
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_6a
    mul-int/lit8 v0, v0, 0xa

    .line 321
    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_3f

    .line 323
    :cond_6f
    neg-int v0, v0

    return v0

    :cond_71
    move v1, p1

    goto :goto_3f
.end method

.method public static a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2b

    const/4 v11, 0x5

    const/16 v10, 0x2d

    const/4 v0, 0x0

    .line 124
    .line 126
    :try_start_6
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 129
    add-int/lit8 v1, v2, 0x4

    invoke-static {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v6

    .line 130
    const/16 v2, 0x2d

    invoke-static {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_255

    .line 131
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 135
    :goto_1b
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v7

    .line 136
    const/16 v2, 0x2d

    invoke-static {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_252

    .line 137
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 141
    :goto_2c
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v8

    .line 149
    const/16 v2, 0x54

    invoke-static {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v2

    .line 151
    if-nez v2, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_4f

    .line 152
    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v2, v7, -0x1

    invoke-direct {v0, v6, v2, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 259
    :goto_4e
    return-object v0

    .line 158
    :cond_4f
    if-eqz v2, :cond_24c

    .line 161
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v3

    .line 162
    const/16 v2, 0x3a

    invoke-static {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v2

    if-eqz v2, :cond_249

    .line 163
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 166
    :goto_64
    add-int/lit8 v1, v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v2

    .line 167
    const/16 v4, 0x3a

    invoke-static {p0, v1, v4}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_243

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 173
    const/16 v5, 0x5a

    if-eq v4, v5, :cond_243

    if-eq v4, v12, :cond_243

    if-eq v4, v10, :cond_243

    .line 174
    add-int/lit8 v4, v1, 0x2

    invoke-static {p0, v1, v4}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v1

    .line 175
    const/16 v5, 0x3b

    if-le v1, v5, :cond_96

    const/16 v5, 0x3f

    if-ge v1, v5, :cond_96

    const/16 v1, 0x3b

    .line 177
    :cond_96
    const/16 v5, 0x2e

    invoke-static {p0, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;IC)Z

    move-result v5

    if-eqz v5, :cond_23c

    .line 178
    add-int/lit8 v5, v4, 0x1

    .line 179
    add-int/lit8 v0, v5, 0x1

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;I)I

    move-result v4

    .line 180
    add-int/lit8 v0, v5, 0x3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 181
    invoke-static {p0, v5, v9}, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a(Ljava/lang/String;II)I

    move-result v0

    .line 183
    sub-int v5, v9, v5

    packed-switch v5, :pswitch_data_258

    :goto_b5
    move v5, v3

    move v3, v1

    move v1, v4

    move v4, v2

    move v2, v0

    .line 200
    :goto_ba
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_12a

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No time zone indicator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_c8} :catch_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c8} :catch_1fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_c8} :catch_21d

    .line 262
    :catch_c8
    move-exception v0

    move-object v2, v0

    .line 269
    :goto_ca
    if-nez p0, :cond_221

    const/4 v0, 0x0

    .line 270
    :goto_cd
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 272
    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :cond_fa
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse date ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {v3, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v3

    .line 185
    :pswitch_124
    mul-int/lit8 v0, v0, 0xa

    .line 186
    goto :goto_b5

    .line 188
    :pswitch_127
    mul-int/lit8 v0, v0, 0x64

    .line 189
    goto :goto_b5

    .line 205
    :cond_12a
    :try_start_12a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 207
    const/16 v9, 0x5a

    if-ne v0, v9, :cond_16a

    .line 208
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a:Ljava/util/TimeZone;

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 248
    :cond_136
    :goto_136
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v0, 0x1

    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/4 v0, 0x2

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v0, 0x5

    invoke-virtual {v9, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v0, 0xb

    invoke-virtual {v9, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v0, 0xd

    invoke-virtual {v9, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v0, 0xe

    invoke-virtual {v9, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_4e

    .line 210
    :cond_16a
    if-eq v0, v12, :cond_16e

    if-ne v0, v10, :cond_1fe

    .line 211
    :cond_16e
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_190

    .line 216
    :goto_178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    .line 218
    const-string v9, "+0000"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18d

    const-string v9, "+00:00"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a4

    .line 219
    :cond_18d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/b/a/a/a;->a:Ljava/util/TimeZone;

    goto :goto_136

    .line 214
    :cond_190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "00"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_178

    .line 225
    :cond_1a4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_136

    .line 237
    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 238
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_136

    .line 239
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatching time zone indicator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " given, resolves to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :catch_1fa
    move-exception v0

    move-object v2, v0

    .line 268
    goto/16 :goto_ca

    .line 245
    :cond_1fe
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12a .. :try_end_21d} :catch_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_12a .. :try_end_21d} :catch_1fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12a .. :try_end_21d} :catch_21d

    .line 266
    :catch_21d
    move-exception v0

    move-object v2, v0

    .line 267
    goto/16 :goto_ca

    .line 269
    :cond_221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cd

    :cond_23c
    move v5, v3

    move v3, v1

    move v1, v4

    move v4, v2

    move v2, v0

    goto/16 :goto_ba

    :cond_243
    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v0

    goto/16 :goto_ba

    :cond_249
    move v2, v1

    goto/16 :goto_64

    :cond_24c
    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    goto/16 :goto_ba

    :cond_252
    move v2, v1

    goto/16 :goto_2c

    :cond_255
    move v2, v1

    goto/16 :goto_1b

    .line 183
    :pswitch_data_258
    .packed-switch 0x1
        :pswitch_127
        :pswitch_124
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;IC)Z
    .registers 4

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
