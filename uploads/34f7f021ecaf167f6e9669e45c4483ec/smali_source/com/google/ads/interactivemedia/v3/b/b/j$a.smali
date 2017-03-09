.class final Lcom/google/ads/interactivemedia/v3/b/b/j$a;
.super Ljava/io/Writer;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 85
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->b:Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;

    .line 88
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->a:Ljava/lang/Appendable;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 98
    return-void
.end method

.method public write([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->b:Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;->a:[C

    .line 93
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/j$a;->b:Lcom/google/ads/interactivemedia/v3/b/b/j$a$a;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 94
    return-void
.end method
