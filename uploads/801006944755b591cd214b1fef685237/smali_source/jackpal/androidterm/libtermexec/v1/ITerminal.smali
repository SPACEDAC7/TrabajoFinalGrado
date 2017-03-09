.class public interface abstract Ljackpal/androidterm/libtermexec/v1/ITerminal;
.super Ljava/lang/Object;
.source "ITerminal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/libtermexec/v1/ITerminal$Stub;
    }
.end annotation


# virtual methods
.method public abstract startSession(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
