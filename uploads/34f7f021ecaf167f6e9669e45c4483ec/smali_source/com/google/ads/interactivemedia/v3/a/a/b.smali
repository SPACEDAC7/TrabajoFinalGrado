.class public final Lcom/google/ads/interactivemedia/v3/a/a/b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/a/b$c;,
        Lcom/google/ads/interactivemedia/v3/a/a/b$b;,
        Lcom/google/ads/interactivemedia/v3/a/a/b$a;,
        Lcom/google/ads/interactivemedia/v3/a/a/b$e;,
        Lcom/google/ads/interactivemedia/v3/a/a/b$f;,
        Lcom/google/ads/interactivemedia/v3/a/a/b$d;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:J

.field private E:J

.field private F:F

.field private G:[B

.field private H:I

.field private I:I

.field private J:Ljava/nio/ByteBuffer;

.field private K:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/a/a/a;

.field private final d:I

.field private final e:Landroid/os/ConditionVariable;

.field private final f:[J

.field private final g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

.field private h:Landroid/media/AudioTrack;

.field private i:Landroid/media/AudioTrack;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:J

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:Z

.field private w:J

.field private x:Ljava/lang/reflect/Method;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 175
    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/a/a/b;->a:Z

    .line 184
    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/a/a/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;-><init>(Lcom/google/ads/interactivemedia/v3/a/a/a;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/a/a;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->c:Lcom/google/ads/interactivemedia/v3/a/a/a;

    .line 246
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->d:I

    .line 247
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->e:Landroid/os/ConditionVariable;

    .line 248
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_23

    .line 250
    :try_start_16
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 251
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->x:Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_23} :catch_54

    .line 256
    :cond_23
    :goto_23
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3e

    .line 257
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$c;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    .line 263
    :goto_30
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->f:[J

    .line 264
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->F:F

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    .line 266
    return-void

    .line 258
    :cond_3e
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4c

    .line 259
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a/b$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    goto :goto_30

    .line 261
    :cond_4c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/a/b$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    goto :goto_30

    .line 252
    :catch_54
    move-exception v0

    goto :goto_23
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .registers 5

    .prologue
    .line 1046
    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 1047
    :cond_7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/d;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1051
    :goto_b
    return v0

    .line 1048
    :cond_c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    .line 1049
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a()I

    move-result v0

    goto :goto_b

    .line 1050
    :cond_14
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1c

    .line 1051
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_b

    .line 1053
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private a(J)J
    .registers 6

    .prologue
    .line 916
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->o:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/a/b;)Landroid/os/ConditionVariable;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->e:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 975
    sparse-switch p3, :sswitch_data_78

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 977
    :sswitch_a
    mul-int/lit8 v0, p2, 0x2

    .line 991
    :goto_c
    if-eqz p4, :cond_14

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_18

    .line 992
    :cond_14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 994
    :cond_18
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 995
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 998
    add-int v0, p1, p2

    .line 999
    sparse-switch p3, :sswitch_data_86

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 980
    :sswitch_29
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 981
    goto :goto_c

    .line 983
    :sswitch_2e
    div-int/lit8 v0, p2, 0x2

    goto :goto_c

    .line 1002
    :goto_31
    :sswitch_31
    if-ge p1, v0, :cond_73

    .line 1003
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1004
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1002
    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 1009
    :goto_45
    :sswitch_45
    if-ge p1, v0, :cond_73

    .line 1010
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1011
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1009
    add-int/lit8 p1, p1, 0x3

    goto :goto_45

    .line 1016
    :goto_5c
    :sswitch_5c
    if-ge p1, v0, :cond_73

    .line 1017
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1018
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1016
    add-int/lit8 p1, p1, 0x4

    goto :goto_5c

    .line 1026
    :cond_73
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1027
    return-object p4

    .line 975
    nop

    :sswitch_data_78
    .sparse-switch
        -0x80000000 -> :sswitch_29
        0x3 -> :sswitch_a
        0x40000000 -> :sswitch_2e
    .end sparse-switch

    .line 999
    :sswitch_data_86
    .sparse-switch
        -0x80000000 -> :sswitch_45
        0x3 -> :sswitch_31
        0x40000000 -> :sswitch_5c
    .end sparse-switch
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1066
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1031
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_50

    .line 1041
    :goto_c
    return v0

    .line 1031
    :sswitch_d
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v0

    goto :goto_9

    :sswitch_17
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_21
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_2b
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_9

    .line 1033
    :pswitch_35
    const/4 v0, 0x5

    goto :goto_c

    .line 1035
    :pswitch_37
    const/4 v0, 0x6

    goto :goto_c

    .line 1037
    :pswitch_39
    const/4 v0, 0x7

    goto :goto_c

    .line 1039
    :pswitch_3b
    const/16 v0, 0x8

    goto :goto_c

    .line 1031
    :sswitch_data_3e
    .sparse-switch
        -0x41455b98 -> :sswitch_21
        0xb269698 -> :sswitch_d
        0x59ae0c65 -> :sswitch_17
        0x59c2dc42 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_35
        :pswitch_37
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method

.method private b(J)J
    .registers 8

    .prologue
    .line 920
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .registers 2

    .prologue
    .line 1070
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1071
    return-void
.end method

.method private c(J)J
    .registers 8

    .prologue
    .line 924
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 723
    :goto_6
    return-void

    .line 718
    :cond_7
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 719
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->F:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Landroid/media/AudioTrack;F)V

    goto :goto_6

    .line 721
    :cond_15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->F:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(Landroid/media/AudioTrack;F)V

    goto :goto_6
.end method

.method private m()V
    .registers 3

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    .line 797
    :goto_4
    return-void

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    .line 790
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    .line 791
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/a/b$2;

    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/a/b;Landroid/media/AudioTrack;)V

    .line 796
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/a/b$2;->start()V

    goto :goto_4
.end method

.method private n()Z
    .registers 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private o()V
    .registers 13

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->c()J

    move-result-wide v2

    .line 811
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_d

    .line 888
    :cond_c
    :goto_c
    return-void

    .line 815
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 816
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->u:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_56

    .line 818
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->f:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->r:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 819
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->r:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->r:I

    .line 820
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3b

    .line 821
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    .line 823
    :cond_3b
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->u:J

    .line 824
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->t:J

    .line 825
    const/4 v0, 0x0

    :goto_42
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    if-ge v0, v1, :cond_56

    .line 826
    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->t:J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->f:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->t:J

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 830
    :cond_56
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->s()Z

    move-result v0

    if-nez v0, :cond_c

    .line 836
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->w:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_c

    .line 837
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    .line 838
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    if-eqz v0, :cond_8b

    .line 840
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 841
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->f()J

    move-result-wide v6

    .line 842
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->D:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_e4

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    .line 868
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    if-nez v0, :cond_e0

    .line 872
    :try_start_93
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->x:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->q:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    .line 875
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    .line 877
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_e0

    .line 878
    const-string v0, "AudioTrack"

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    const/16 v1, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_e0} :catch_18f

    .line 886
    :cond_e0
    :goto_e0
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->w:J

    goto/16 :goto_c

    .line 845
    :cond_e4
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_138

    .line 847
    const/16 v8, 0x88

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/a/a/b;->b:Z

    if-eqz v1, :cond_12e

    .line 851
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/a/b$e;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    :cond_12e
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    goto/16 :goto_8b

    .line 855
    :cond_138
    invoke-direct {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8b

    .line 858
    const/16 v8, 0x8a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/a/a/b;->b:Z

    if-eqz v1, :cond_185

    .line 862
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/a/b$e;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_185
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    goto/16 :goto_8b

    .line 881
    :catch_18f
    move-exception v0

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->x:Ljava/lang/reflect/Method;

    goto/16 :goto_e0
.end method

.method private p()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/a/b$d;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 898
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 899
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 900
    return-void

    .line 904
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1e
    .catchall {:try_start_b .. :try_end_10} :catchall_22

    .line 909
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 912
    :goto_12
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/a/b$d;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->k:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/a/b$d;-><init>(IIII)V

    throw v1

    .line 905
    :catch_1e
    move-exception v1

    .line 909
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    goto :goto_12

    :catchall_22
    move-exception v0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    throw v0
.end method

.method private q()J
    .registers 3

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->z:J

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(J)J

    move-result-wide v0

    goto :goto_6
.end method

.method private r()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 932
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->t:J

    .line 933
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    .line 934
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->r:I

    .line 935
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->u:J

    .line 936
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    .line 937
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->w:J

    .line 938
    return-void
.end method

.method private s()Z
    .registers 3

    .prologue
    .line 945
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private t()Z
    .registers 3

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 957
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 958
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 956
    :goto_18
    return v0

    .line 958
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public a(I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/a/b$d;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 469
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 471
    if-nez p1, :cond_5e

    .line 472
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->k:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 479
    :goto_1a
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->p()V

    .line 481
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 482
    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/a/a/b;->a:Z

    if-eqz v0, :cond_4f

    .line 483
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4f

    .line 486
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    .line 487
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_3c

    .line 488
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->m()V

    .line 490
    :cond_3c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    if-nez v0, :cond_4f

    .line 491
    const/16 v2, 0xfa0

    .line 492
    const/4 v3, 0x4

    .line 495
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->d:I

    const/4 v6, 0x0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->h:Landroid/media/AudioTrack;

    .line 501
    :cond_4f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->a(Landroid/media/AudioTrack;Z)V

    .line 502
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->l()V

    .line 504
    return v7

    .line 476
    :cond_5e
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->k:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    goto :goto_1a
.end method

.method public a(Ljava/nio/ByteBuffer;IIJ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/a/b$f;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->s()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 573
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 574
    const/4 v0, 0x0

    .line 673
    :cond_10
    :goto_10
    return v0

    .line 580
    :cond_11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    .line 581
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 582
    const/4 v0, 0x0

    goto :goto_10

    .line 586
    :cond_28
    const/4 v1, 0x0

    .line 587
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    if-nez v0, :cond_171

    .line 590
    if-nez p3, :cond_31

    .line 591
    const/4 v0, 0x2

    goto :goto_10

    .line 594
    :cond_31
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->l:I

    if-eq v0, v2, :cond_da

    const/4 v0, 0x1

    :goto_38
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->K:Z

    .line 595
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->K:Z

    if-eqz v0, :cond_5f

    .line 596
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_dd

    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 598
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->l:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, p3, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    .line 600
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    .line 601
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    .line 602
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    .line 605
    :cond_5f
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    .line 606
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 607
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->A:I

    if-nez v0, :cond_74

    .line 609
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->A:I

    .line 611
    :cond_74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    if-nez v0, :cond_e0

    .line 612
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    .line 613
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    move v0, v1

    .line 631
    :goto_84
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_a0

    .line 633
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->G:[B

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->G:[B

    array-length v1, v1

    if-ge v1, p3, :cond_97

    .line 634
    :cond_93
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->G:[B

    .line 636
    :cond_97
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->G:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 637
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->H:I

    .line 641
    :cond_a0
    :goto_a0
    const/4 v1, 0x0

    .line 642
    sget v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_13c

    .line 644
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->y:J

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    .line 645
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->b()J

    move-result-wide v4

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->o:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 646
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    sub-int v2, v3, v2

    .line 647
    if-lez v2, :cond_d2

    .line 648
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->G:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->H:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 650
    if-ltz v1, :cond_d2

    .line 651
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->H:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->H:I

    .line 659
    :cond_d2
    :goto_d2
    if-gez v1, :cond_14b

    .line 660
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/a/b$f;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b$f;-><init>(I)V

    throw v0

    .line 594
    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 596
    :cond_dd
    const/4 v0, 0x0

    goto/16 :goto_44

    .line 616
    :cond_e0
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->q()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 617
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_12a

    sub-long v4, v2, p4

    .line 618
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x30d40

    cmp-long v0, v4, v6

    if-lez v0, :cond_12a

    .line 619
    const-string v0, "AudioTrack"

    const/16 v4, 0x50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    .line 623
    :cond_12a
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_16e

    .line 626
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    sub-long v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    .line 627
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    .line 628
    const/4 v0, 0x1

    goto/16 :goto_84

    .line 655
    :cond_13c
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->K:Z

    if-eqz v1, :cond_142

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->J:Ljava/nio/ByteBuffer;

    .line 656
    :cond_142
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    invoke-static {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_d2

    .line 663
    :cond_14b
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    .line 664
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    if-nez v2, :cond_15a

    .line 665
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->y:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->y:J

    .line 667
    :cond_15a
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    if-nez v1, :cond_10

    .line 668
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    if-eqz v1, :cond_16a

    .line 669
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->z:J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->A:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->z:J

    .line 671
    :cond_16a
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_10

    :cond_16e
    move v0, v1

    goto/16 :goto_84

    :cond_171
    move v0, v1

    goto/16 :goto_a0
.end method

.method public a(Z)J
    .registers 8

    .prologue
    const-wide/16 v4, 0x3e8

    .line 297
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->n()Z

    move-result v0

    if-nez v0, :cond_b

    .line 298
    const-wide/high16 v0, -0x8000000000000000L

    .line 332
    :cond_a
    :goto_a
    return-wide v0

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 302
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->o()V

    .line 305
    :cond_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 307
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->v:Z

    if-eqz v2, :cond_44

    .line 309
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->e()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 311
    long-to-float v0, v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    .line 312
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 313
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->c(J)J

    move-result-wide v0

    .line 315
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    add-long/2addr v0, v2

    .line 317
    goto :goto_a

    .line 318
    :cond_44
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->s:I

    if-nez v2, :cond_57

    .line 320
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    add-long/2addr v0, v2

    .line 327
    :goto_51
    if-nez p1, :cond_a

    .line 328
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    sub-long/2addr v0, v2

    goto :goto_a

    .line 325
    :cond_57
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->t:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->C:J

    add-long/2addr v0, v2

    goto :goto_51
.end method

.method public a(F)V
    .registers 3

    .prologue
    .line 709
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 710
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->F:F

    .line 711
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->l()V

    .line 713
    :cond_b
    return-void
.end method

.method public a(Landroid/media/PlaybackParams;)V
    .registers 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->a(Landroid/media/PlaybackParams;)V

    .line 703
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .registers 11

    .prologue
    .line 346
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Ljava/lang/String;IIII)V

    .line 347
    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .registers 16

    .prologue
    .line 364
    packed-switch p2, :pswitch_data_fe

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported channel count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :pswitch_1e
    const/4 v0, 0x4

    .line 393
    :goto_1f
    const-string v1, "audio/raw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const/4 v1, 0x1

    move v3, v1

    .line 395
    :goto_29
    if-eqz v3, :cond_5a

    .line 396
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(Ljava/lang/String;)I

    move-result p4

    .line 404
    :cond_2f
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_83

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->l:I

    if-ne v1, p4, :cond_83

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    if-ne v1, p3, :cond_83

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->k:I

    if-ne v1, v0, :cond_83

    .line 445
    :goto_41
    return-void

    .line 369
    :pswitch_42
    const/16 v0, 0xc

    .line 370
    goto :goto_1f

    .line 372
    :pswitch_45
    const/16 v0, 0x1c

    .line 373
    goto :goto_1f

    .line 375
    :pswitch_48
    const/16 v0, 0xcc

    .line 376
    goto :goto_1f

    .line 378
    :pswitch_4b
    const/16 v0, 0xdc

    .line 379
    goto :goto_1f

    .line 381
    :pswitch_4e
    const/16 v0, 0xfc

    .line 382
    goto :goto_1f

    .line 384
    :pswitch_51
    const/16 v0, 0x4fc

    .line 385
    goto :goto_1f

    .line 387
    :pswitch_54
    sget v0, Lcom/google/ads/interactivemedia/v3/a/b;->a:I

    goto :goto_1f

    .line 393
    :cond_57
    const/4 v1, 0x0

    move v3, v1

    goto :goto_29

    .line 397
    :cond_5a
    const/4 v1, 0x3

    if-eq p4, v1, :cond_2f

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2f

    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_2f

    const/high16 v1, 0x40000000

    if-eq p4, v1, :cond_2f

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported PCM encoding: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_83
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->j()V

    .line 412
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->l:I

    .line 413
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->n:Z

    .line 414
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->j:I

    .line 415
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->k:I

    .line 416
    if-eqz v3, :cond_a1

    :goto_90
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    .line 417
    mul-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->o:I

    .line 419
    if-eqz p5, :cond_a3

    .line 420
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    .line 443
    :goto_9a
    if-eqz v3, :cond_f2

    const-wide/16 v0, -0x1

    .line 444
    :goto_9e
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->q:J

    goto :goto_41

    .line 416
    :cond_a1
    const/4 p4, 0x2

    goto :goto_90

    .line 421
    :cond_a3
    if-eqz v3, :cond_ba

    .line 424
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_af

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b4

    .line 426
    :cond_af
    const/16 v0, 0x5000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    goto :goto_9a

    .line 429
    :cond_b4
    const v0, 0xc000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    goto :goto_9a

    .line 432
    :cond_ba
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->m:I

    .line 433
    invoke-static {p3, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 434
    const/4 v0, -0x2

    if-eq v1, v0, :cond_ea

    const/4 v0, 0x1

    :goto_c4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/f/b;->b(Z)V

    .line 435
    mul-int/lit8 v2, v1, 0x4

    .line 436
    const-wide/32 v4, 0x3d090

    invoke-direct {p0, v4, v5}, Lcom/google/ads/interactivemedia/v3/a/a/b;->c(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->o:I

    mul-int/2addr v0, v4

    .line 437
    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    .line 438
    invoke-direct {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/a/a/b;->c(J)J

    move-result-wide v6

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->o:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    .line 437
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 439
    if-ge v2, v0, :cond_ec

    .line 441
    :goto_e7
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    goto :goto_9a

    .line 434
    :cond_ea
    const/4 v0, 0x0

    goto :goto_c4

    .line 440
    :cond_ec
    if-le v2, v1, :cond_f0

    move v0, v1

    goto :goto_e7

    :cond_f0
    move v0, v2

    .line 441
    goto :goto_e7

    .line 444
    :cond_f2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(J)J

    move-result-wide v0

    goto :goto_9e

    .line 364
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->c:Lcom/google/ads/interactivemedia/v3/a/a/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->c:Lcom/google/ads/interactivemedia/v3/a/a/a;

    .line 274
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 273
    :goto_11
    return v0

    .line 274
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/a/b$d;
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->p:I

    return v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->q:J

    return-wide v0
.end method

.method public e()V
    .registers 5

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 538
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->D:J

    .line 539
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 541
    :cond_14
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 548
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 549
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    .line 551
    :cond_8
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 682
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->q()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->a(J)V

    .line 684
    :cond_f
    return-void
.end method

.method public h()Z
    .registers 5

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 691
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->q()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 692
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 690
    :goto_1b
    return v0

    .line 692
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public i()V
    .registers 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 730
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->r()V

    .line 731
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->a()V

    .line 733
    :cond_e
    return-void
.end method

.method public j()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 741
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 742
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->y:J

    .line 743
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->z:J

    .line 744
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->A:I

    .line 745
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->I:I

    .line 746
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->B:I

    .line 747
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->E:J

    .line 748
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->r()V

    .line 749
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 750
    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 751
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 754
    :cond_27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 755
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->i:Landroid/media/AudioTrack;

    .line 756
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->g:Lcom/google/ads/interactivemedia/v3/a/a/b$a;

    invoke-virtual {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/a/a/b$a;->a(Landroid/media/AudioTrack;Z)V

    .line 757
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 758
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/a/b$1;

    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/a/a/b$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/a/b;Landroid/media/AudioTrack;)V

    .line 768
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->start()V

    .line 770
    :cond_3d
    return-void
.end method

.method public k()V
    .registers 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->j()V

    .line 777
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->m()V

    .line 778
    return-void
.end method
