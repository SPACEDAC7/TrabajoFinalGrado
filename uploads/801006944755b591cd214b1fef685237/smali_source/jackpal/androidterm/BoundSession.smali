.class Ljackpal/androidterm/BoundSession;
.super Ljackpal/androidterm/GenericTermSession;
.source "BoundSession.java"


# instance fields
.field private fullyInitialized:Z

.field private final issuerTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V
    .registers 5
    .param p1, "ptmxFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settings"    # Ljackpal/androidterm/util/TermSettings;
    .param p3, "issuerTitle"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljackpal/androidterm/GenericTermSession;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/util/TermSettings;Z)V

    .line 15
    iput-object p3, p0, Ljackpal/androidterm/BoundSession;->issuerTitle:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/BoundSession;->setTermIn(Ljava/io/InputStream;)V

    .line 18
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/BoundSession;->setTermOut(Ljava/io/OutputStream;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    invoke-super {p0}, Ljackpal/androidterm/GenericTermSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "extraTitle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Ljackpal/androidterm/BoundSession;->issuerTitle:Ljava/lang/String;

    :goto_c
    return-object v1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljackpal/androidterm/BoundSession;->issuerTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public initializeEmulator(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/GenericTermSession;->initializeEmulator(II)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/BoundSession;->fullyInitialized:Z

    .line 35
    return-void
.end method

.method isFailFast()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Ljackpal/androidterm/BoundSession;->fullyInitialized:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
