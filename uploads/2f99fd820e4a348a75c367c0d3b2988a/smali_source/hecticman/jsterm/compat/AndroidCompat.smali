.class public Lhecticman/jsterm/compat/AndroidCompat;
.super Ljava/lang/Object;
.source "AndroidCompat.java"


# static fields
.field public static final SDK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 17
    sput v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
