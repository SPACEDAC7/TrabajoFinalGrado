.class public Lcom/urbanairship/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x6

    sput v0, Lcom/urbanairship/Logger;->logLevel:I

    .line 29
    const-string v0, "UALib"

    sput-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 87
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 88
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_c
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_e

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 100
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_e
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 133
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 134
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_c
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_e

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 157
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_e
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_e

    if-eqz p0, :cond_e

    .line 145
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_e
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 111
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_c
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_e

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 123
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_e
    return-void
.end method

.method static parseLogLevel(Ljava/lang/String;I)I
    .registers 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x3

    const/4 v4, 0x2

    .line 170
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 197
    .end local p1    # "defaultValue":I
    :goto_b
    return p1

    .line 174
    .restart local p1    # "defaultValue":I
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_b8

    :cond_18
    :goto_18
    packed-switch v6, :pswitch_data_d6

    .line 191
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_9e

    move-result v0

    .line 192
    .local v0, "intValue":I
    const/4 v2, 0x7

    if-gt v0, v2, :cond_7c

    if-lt v0, v4, :cond_7c

    move p1, v0

    .line 193
    goto :goto_b

    .line 174
    .end local v0    # "intValue":I
    :sswitch_2a
    const-string v8, "ASSERT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v6, 0x0

    goto :goto_18

    :sswitch_34
    const-string v8, "NONE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v6, 0x1

    goto :goto_18

    :sswitch_3e
    const-string v8, "DEBUG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v6, v4

    goto :goto_18

    :sswitch_48
    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v6, v0

    goto :goto_18

    :sswitch_52
    const-string v8, "INFO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v6, v3

    goto :goto_18

    :sswitch_5c
    const-string v8, "VERBOSE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v6, v5

    goto :goto_18

    :sswitch_66
    const-string v8, "WARN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v6, v2

    goto :goto_18

    .line 177
    :pswitch_70
    const/4 p1, 0x7

    goto :goto_b

    :pswitch_72
    move p1, v0

    .line 179
    goto :goto_b

    :pswitch_74
    move p1, v2

    .line 181
    goto :goto_b

    :pswitch_76
    move p1, v3

    .line 183
    goto :goto_b

    :pswitch_78
    move p1, v4

    .line 185
    goto :goto_b

    :pswitch_7a
    move p1, v5

    .line 187
    goto :goto_b

    .line 196
    .restart local v0    # "intValue":I
    :cond_7c
    :try_start_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid log level. Falling back to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_9c} :catch_9e

    goto/16 :goto_b

    .line 198
    .end local v0    # "intValue":I
    :catch_9e
    move-exception v1

    .line 199
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid log level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :sswitch_data_b8
    .sparse-switch
        0x225cae -> :sswitch_52
        0x24a738 -> :sswitch_34
        0x288a86 -> :sswitch_66
        0x3de9e33 -> :sswitch_3e
        0x3f2d9e8 -> :sswitch_48
        0x3fb90562 -> :sswitch_5c
        0x73a36746 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_72
        :pswitch_74
        :pswitch_76
        :pswitch_78
        :pswitch_7a
    .end packed-switch
.end method

.method public static verbose(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 77
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_c
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 43
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_c
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_e

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 55
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_e
    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_c

    if-eqz p0, :cond_c

    .line 66
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_c
    return-void
.end method
