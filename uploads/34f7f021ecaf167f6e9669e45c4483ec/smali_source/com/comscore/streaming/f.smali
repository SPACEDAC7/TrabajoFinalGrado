.class abstract Lcom/comscore/streaming/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/comscore/streaming/StreamSense;


# direct methods
.method private constructor <init>(Lcom/comscore/streaming/StreamSense;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/f;->d:Lcom/comscore/streaming/StreamSense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/comscore/streaming/StreamSense;Lcom/comscore/streaming/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/comscore/streaming/f;-><init>(Lcom/comscore/streaming/StreamSense;)V

    return-void
.end method


# virtual methods
.method public abstract getNextState()Lcom/comscore/streaming/StreamSenseState;
.end method
