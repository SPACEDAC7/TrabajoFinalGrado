.class final Lcom/crashlytics/android/answers/SessionEvent;
.super Ljava/lang/Object;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/answers/SessionEvent$1;,
        Lcom/crashlytics/android/answers/SessionEvent$Builder;,
        Lcom/crashlytics/android/answers/SessionEvent$Type;
    }
.end annotation


# static fields
.field static final ACTIVITY_KEY:Ljava/lang/String; = "activity"

.field static final SESSION_ID_KEY:Ljava/lang/String; = "sessionId"


# instance fields
.field public final customAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final customType:Ljava/lang/String;

.field public final details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final predefinedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final predefinedType:Ljava/lang/String;

.field public final sessionEventMetadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

.field private stringRepresentation:Ljava/lang/String;

.field public final timestamp:J

.field public final type:Lcom/crashlytics/android/answers/SessionEvent$Type;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/answers/SessionEventMetadata;JLcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "sessionEventMetadata"    # Lcom/crashlytics/android/answers/SessionEventMetadata;
    .param p2, "timestamp"    # J
    .param p4, "type"    # Lcom/crashlytics/android/answers/SessionEvent$Type;
    .param p6, "customType"    # Ljava/lang/String;
    .param p8, "predefinedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/answers/SessionEventMetadata;",
            "J",
            "Lcom/crashlytics/android/answers/SessionEvent$Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p5, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p9, "predefinedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEvent;->sessionEventMetadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 67
    iput-wide p2, p0, Lcom/crashlytics/android/answers/SessionEvent;->timestamp:J

    .line 68
    iput-object p4, p0, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 69
    iput-object p5, p0, Lcom/crashlytics/android/answers/SessionEvent;->details:Ljava/util/Map;

    .line 70
    iput-object p6, p0, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    .line 72
    iput-object p8, p0, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    .line 73
    iput-object p9, p0, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/answers/SessionEventMetadata;JLcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/crashlytics/android/answers/SessionEvent$1;)V
    .registers 11
    .param p1, "x0"    # Lcom/crashlytics/android/answers/SessionEventMetadata;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/crashlytics/android/answers/SessionEvent$Type;
    .param p5, "x3"    # Ljava/util/Map;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Ljava/util/Map;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Ljava/util/Map;
    .param p10, "x8"    # Lcom/crashlytics/android/answers/SessionEvent$1;

    .prologue
    .line 8
    invoke-direct/range {p0 .. p9}, Lcom/crashlytics/android/answers/SessionEvent;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;JLcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static crashEventBuilder(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$Builder;
    .registers 4
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v1, "sessionId"

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/crashlytics/android/answers/SessionEvent$Builder;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->CRASH:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/SessionEvent$Builder;-><init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->details(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static customEventBuilder(Lcom/crashlytics/android/answers/CustomEvent;)Lcom/crashlytics/android/answers/SessionEvent$Builder;
    .registers 3
    .param p0, "event"    # Lcom/crashlytics/android/answers/CustomEvent;

    .prologue
    .line 51
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Builder;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;-><init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/CustomEvent;->getCustomType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->customType(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/CustomEvent;->getCustomAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->customAttributes(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static installEventBuilder()Lcom/crashlytics/android/answers/SessionEvent$Builder;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Builder;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;-><init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    return-object v0
.end method

.method public static lifecycleEventBuilder(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent$Builder;
    .registers 5
    .param p0, "type"    # Lcom/crashlytics/android/answers/SessionEvent$Type;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const-string v1, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 38
    .local v0, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/crashlytics/android/answers/SessionEvent$Builder;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/answers/SessionEvent$Builder;-><init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->details(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static predefinedEventBuilder(Lcom/crashlytics/android/answers/PredefinedEvent;)Lcom/crashlytics/android/answers/SessionEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/answers/PredefinedEvent",
            "<*>;)",
            "Lcom/crashlytics/android/answers/SessionEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "event":Lcom/crashlytics/android/answers/PredefinedEvent;, "Lcom/crashlytics/android/answers/PredefinedEvent<*>;"
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent$Builder;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->PREDEFINED:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;-><init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/PredefinedEvent;->getPredefinedType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->predefinedType(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/PredefinedEvent;->getPredefinedAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->predefinedAttributes(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/PredefinedEvent;->getCustomAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionEvent$Builder;->customAttributes(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 130
    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionEvent;->stringRepresentation:Ljava/lang/String;

    if-nez v1, :cond_8e

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->details:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", predefinedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", predefinedAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metadata=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent;->sessionEventMetadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/SessionEvent;->stringRepresentation:Ljava/lang/String;

    .line 144
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_8e
    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionEvent;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method
