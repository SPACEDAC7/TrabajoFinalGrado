.class public Lcom/buzzfeed/toolkit/util/GsonUtils;
.super Ljava/lang/Object;
.source "GsonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static safeBooleanAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static safeIntegerAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static safeLongAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/toolkit/util/GsonUtils;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/util/GsonUtils;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/buzzfeed/toolkit/util/GsonUtils$1;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/GsonUtils$1;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeBooleanAdapter:Lcom/google/gson/TypeAdapter;

    .line 46
    new-instance v0, Lcom/buzzfeed/toolkit/util/GsonUtils$2;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/GsonUtils$2;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeLongAdapter:Lcom/google/gson/TypeAdapter;

    .line 82
    new-instance v0, Lcom/buzzfeed/toolkit/util/GsonUtils$3;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/GsonUtils$3;-><init>()V

    sput-object v0, Lcom/buzzfeed/toolkit/util/GsonUtils;->safeIntegerAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/buzzfeed/toolkit/util/GsonUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method
