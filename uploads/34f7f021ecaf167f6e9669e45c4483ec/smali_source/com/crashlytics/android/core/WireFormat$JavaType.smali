.class final enum Lcom/crashlytics/android/core/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/core/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum BYTE_STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum DOUBLE:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum ENUM:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum FLOAT:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum INT:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum LONG:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum MESSAGE:Lcom/crashlytics/android/core/WireFormat$JavaType;

.field public static final enum STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->INT:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 80
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->LONG:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 81
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->FLOAT:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 82
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->DOUBLE:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 83
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->BOOLEAN:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 84
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 85
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->BYTE_STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 86
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->ENUM:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 87
    new-instance v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->MESSAGE:Lcom/crashlytics/android/core/WireFormat$JavaType;

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/crashlytics/android/core/WireFormat$JavaType;

    sget-object v1, Lcom/crashlytics/android/core/WireFormat$JavaType;->INT:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/core/WireFormat$JavaType;->LONG:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/core/WireFormat$JavaType;->FLOAT:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/core/WireFormat$JavaType;->DOUBLE:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/crashlytics/android/core/WireFormat$JavaType;->BOOLEAN:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/core/WireFormat$JavaType;->STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/core/WireFormat$JavaType;->BYTE_STRING:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/core/WireFormat$JavaType;->ENUM:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/core/WireFormat$JavaType;->MESSAGE:Lcom/crashlytics/android/core/WireFormat$JavaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->$VALUES:[Lcom/crashlytics/android/core/WireFormat$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .param p3, "defaultDefault"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/crashlytics/android/core/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/core/WireFormat$JavaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/WireFormat$JavaType;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/core/WireFormat$JavaType;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/crashlytics/android/core/WireFormat$JavaType;->$VALUES:[Lcom/crashlytics/android/core/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/crashlytics/android/core/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/core/WireFormat$JavaType;

    return-object v0
.end method


# virtual methods
.method getDefaultDefault()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/crashlytics/android/core/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method
