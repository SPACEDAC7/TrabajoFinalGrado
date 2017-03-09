.class Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpMatchFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView$1;)V
    .registers 2
    .param p1, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView$1;

    .prologue
    .line 240
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;-><init>()V

    return-void
.end method

.method private startsWith(Ljava/lang/CharSequence;IILjava/lang/String;)Z
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    .line 249
    .local v2, "prefixLen":I
    sub-int v0, p3, p2

    .line 250
    .local v0, "fragmentLen":I
    if-le v2, v0, :cond_a

    .line 258
    :cond_9
    :goto_9
    return v3

    .line 253
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_1c

    .line 254
    add-int v4, p2, v1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_9

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 258
    :cond_1c
    const/4 v3, 0x1

    goto :goto_9
.end method


# virtual methods
.method public acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 242
    const-string v0, "http:"

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;->startsWith(Ljava/lang/CharSequence;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "https:"

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;->startsWith(Ljava/lang/CharSequence;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
