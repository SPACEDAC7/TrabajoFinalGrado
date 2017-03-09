.class public final Ljackpal/androidterm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EmulatorView:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ljackpal/androidterm/R$styleable;->EmulatorView:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
