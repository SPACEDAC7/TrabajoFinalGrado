.class public final Lcom/squareup/leakcanary/RefWatcher;
.super Ljava/lang/Object;
.source "RefWatcher.java"


# static fields
.field public static final DISABLED:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/squareup/leakcanary/RefWatcher;

    invoke-direct {v0}, Lcom/squareup/leakcanary/RefWatcher;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public watch(Ljava/lang/Object;)V
    .registers 2
    .param p1, "watchedReference"    # Ljava/lang/Object;

    .prologue
    .line 15
    return-void
.end method

.method public watch(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "watchedReference"    # Ljava/lang/Object;
    .param p2, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method
