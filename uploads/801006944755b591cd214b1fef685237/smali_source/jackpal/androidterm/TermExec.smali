.class public Ljackpal/androidterm/TermExec;
.super Ljava/lang/Object;
.source "TermExec.java"


# static fields
.field public static final SERVICE_ACTION_V1:Ljava/lang/String; = "jackpal.androidterm.action.START_TERM.v1"

.field private static descriptorField:Ljava/lang/reflect/Field;


# instance fields
.field private final command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "jackpal-termexec2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljackpal/androidterm/TermExec;->environment:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljackpal/androidterm/TermExec;-><init>(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method static createSubprocess(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p0, "masterFd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "envVars"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_f

    .line 106
    invoke-static {p0}, Ljackpal/androidterm/FdHelperHoneycomb;->getFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    .line 120
    .local v1, "integerFd":I
    :goto_a
    invoke-static {p1, p2, p3, v1}, Ljackpal/androidterm/TermExec;->createSubprocessInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 109
    .end local v1    # "integerFd":I
    :cond_f
    :try_start_f
    sget-object v2, Ljackpal/androidterm/TermExec;->descriptorField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_23

    .line 110
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ljackpal/androidterm/TermExec;->descriptorField:Ljava/lang/reflect/Field;

    .line 111
    sget-object v2, Ljackpal/androidterm/TermExec;->descriptorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    :cond_23
    sget-object v2, Ljackpal/androidterm/TermExec;->descriptorField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_2e

    move-result v1

    .restart local v1    # "integerFd":I
    goto :goto_a

    .line 115
    .end local v1    # "integerFd":I
    :catch_2e
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain file descriptor on this OS version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native createSubprocessInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method public static native sendSignal(II)V
.end method

.method public static native waitFor(I)I
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljackpal/androidterm/TermExec;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljackpal/androidterm/TermExec;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 55
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljackpal/androidterm/TermExec;
    .registers 4
    .param p1, "command"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermExec;->command(Ljava/util/List;)Ljackpal/androidterm/TermExec;

    move-result-object v0

    return-object v0
.end method

.method public command()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    return-object v0
.end method

.method public environment()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Ljackpal/androidterm/TermExec;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public start(Landroid/os/ParcelFileDescriptor;)I
    .registers 11
    .param p1, "ptmxFd"    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_12

    .line 71
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "This method must not be called from the main thread!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 73
    :cond_12
    iget-object v7, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_22

    .line 74
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Empty command!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_22
    iget-object v7, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "cmd":Ljava/lang/String;
    iget-object v7, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    iget-object v8, p0, Ljackpal/androidterm/TermExec;->command:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 78
    .local v1, "cmdArray":[Ljava/lang/String;
    iget-object v7, p0, Ljackpal/androidterm/TermExec;->environment:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 79
    .local v3, "envArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 80
    .local v4, "i":I
    iget-object v7, p0, Ljackpal/androidterm/TermExec;->environment:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    move v4, v5

    .line 82
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_4e

    .line 84
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_83
    invoke-static {p1, v0, v1, v3}, Ljackpal/androidterm/TermExec;->createSubprocess(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method
