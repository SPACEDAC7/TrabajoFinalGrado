.class public final Lcom/facebook/share/widget/GameRequestDialog$Result;
.super Ljava/lang/Object;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/GameRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/GameRequestDialog$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/facebook/share/widget/GameRequestDialog$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/widget/GameRequestDialog$Result;->requestId:Ljava/lang/String;

    return-object v0
.end method
