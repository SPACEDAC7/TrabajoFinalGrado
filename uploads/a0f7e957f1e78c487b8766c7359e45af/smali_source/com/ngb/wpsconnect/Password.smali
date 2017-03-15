.class public Lcom/ngb/wpsconnect/Password;
.super Ljava/lang/Object;
.source "Password.java"


# instance fields
.field private final netName:Ljava/lang/String;

.field private final netPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "netName"    # Ljava/lang/String;
    .param p2, "netPwd"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ngb/wpsconnect/Password;->netName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ngb/wpsconnect/Password;->netPwd:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getNetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ngb/wpsconnect/Password;->netName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetPwd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ngb/wpsconnect/Password;->netPwd:Ljava/lang/String;

    return-object v0
.end method
