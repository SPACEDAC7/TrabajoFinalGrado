.class public Lhecticman/jsterm/Exec;
.super Ljava/lang/Object;
.source "Exec.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "jackpal-androidterm4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close(Ljava/io/FileDescriptor;)V
.end method

.method public static native createSubprocess(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Ljava/io/FileDescriptor;
.end method

.method public static native getEnvPath(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static native hangupProcessGroup(I)V
.end method

.method public static native setEnvPath(Ljava/io/FileDescriptor;Ljava/lang/String;)V
.end method

.method public static native setPtyUTF8Mode(Ljava/io/FileDescriptor;Z)V
.end method

.method public static native setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V
.end method

.method public static native waitFor(I)I
.end method
