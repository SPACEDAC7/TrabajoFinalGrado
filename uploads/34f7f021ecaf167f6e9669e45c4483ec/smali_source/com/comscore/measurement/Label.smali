.class public Lcom/comscore/measurement/Label;
.super Ljava/lang/Object;


# instance fields
.field public aggregate:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/comscore/measurement/Label;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/comscore/measurement/Label;->aggregate:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x7a

    if-le v3, v4, :cond_30

    :cond_1c
    const/16 v4, 0x30

    if-lt v3, v4, :cond_24

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_24
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_30

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_30

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_33

    :cond_30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pack()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/comscore/measurement/Label;->value:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/comscore/measurement/Label;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/comscore/measurement/Label;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    :try_start_19
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/measurement/Label;->value:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_3f} :catch_41

    move-result-object v0

    :goto_40
    return-object v0

    :catch_41
    move-exception v0

    :cond_42
    const-string v0, ""

    goto :goto_40
.end method
