.class public Lcom/buzzfeed/toolkit/util/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# static fields
.field private static final FORMATTER:Ljava/util/Formatter;

.field private static final FORMAT_BUILDER:Ljava/lang/StringBuilder;

.field private static final FORMAT_TIME_DURATION_LONG:Ljava/lang/String; = "%d:%02d:%02d"

.field private static final FORMAT_TIME_DURATION_MEDIUM:Ljava/lang/String; = "%02d:%02d"

.field private static final FORMAT_TIME_DURATION_SHORT:Ljava/lang/String; = "%d:%02d"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMAT_BUILDER:Ljava/lang/StringBuilder;

    .line 22
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMAT_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMATTER:Ljava/util/Formatter;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static formatMs(J)Ljava/lang/String;
    .registers 14
    .param p0, "milliseconds"    # J

    .prologue
    .line 39
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_9

    .line 40
    const-string v6, "00:00"

    .line 55
    :goto_8
    return-object v6

    .line 43
    :cond_9
    const-wide/32 v6, 0xea60

    rem-long v6, p0, v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 44
    .local v4, "seconds":J
    const-wide/32 v6, 0x36ee80

    rem-long v6, p0, v6

    const-wide/32 v8, 0xea60

    div-long v2, v6, v8

    .line 45
    .local v2, "minutes":J
    const-wide/32 v6, 0x5265c00

    rem-long v6, p0, v6

    const-wide/32 v8, 0x36ee80

    div-long v0, v6, v8

    .line 48
    .local v0, "hours":J
    sget-object v6, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMAT_BUILDER:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_57

    .line 51
    sget-object v6, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMATTER:Ljava/util/Formatter;

    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 52
    :cond_57
    const-wide/16 v6, 0xa

    cmp-long v6, v2, v6

    if-ltz v6, :cond_7b

    .line 53
    sget-object v6, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMATTER:Ljava/util/Formatter;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 55
    :cond_7b
    sget-object v6, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->FORMATTER:Ljava/util/Formatter;

    const-string v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8
.end method
