.class public final enum Lcom/buzzfeed/toolkit/util/ShareItemType;
.super Ljava/lang/Enum;
.source "ShareItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/toolkit/util/ShareItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum CopyLink:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Email:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum FacebookMessenger:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Generic:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum GooglePlus:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Instagram:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Line:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum LinkedIn:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum More:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Pinterest:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Tumblr:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum Twitter:Lcom/buzzfeed/toolkit/util/ShareItemType;

.field public static final enum WhatsApp:Lcom/buzzfeed/toolkit/util/ShareItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v3}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 5
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Pinterest"

    invoke-direct {v0, v1, v4}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Pinterest:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 6
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Email"

    invoke-direct {v0, v1, v5}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Email:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 7
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Twitter"

    invoke-direct {v0, v1, v6}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Twitter:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 8
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Sms"

    invoke-direct {v0, v1, v7}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 9
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "WhatsApp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->WhatsApp:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 10
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "CopyLink"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->CopyLink:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 11
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Instagram"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Instagram:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 12
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Line"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Line:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 13
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "FacebookMessenger"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->FacebookMessenger:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 14
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Tumblr"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Tumblr:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 15
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "GooglePlus"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->GooglePlus:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 16
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "LinkedIn"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->LinkedIn:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 17
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "More"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->More:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 18
    new-instance v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    const-string v1, "Generic"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/toolkit/util/ShareItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->Generic:Lcom/buzzfeed/toolkit/util/ShareItemType;

    .line 3
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/buzzfeed/toolkit/util/ShareItemType;

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Facebook:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Pinterest:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Email:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Twitter:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/buzzfeed/toolkit/util/ShareItemType;->Sms:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->WhatsApp:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->CopyLink:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Instagram:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Line:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->FacebookMessenger:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Tumblr:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->GooglePlus:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->LinkedIn:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->More:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/buzzfeed/toolkit/util/ShareItemType;->Generic:Lcom/buzzfeed/toolkit/util/ShareItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->$VALUES:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/toolkit/util/ShareItemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/util/ShareItemType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/toolkit/util/ShareItemType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/buzzfeed/toolkit/util/ShareItemType;->$VALUES:[Lcom/buzzfeed/toolkit/util/ShareItemType;

    invoke-virtual {v0}, [Lcom/buzzfeed/toolkit/util/ShareItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/toolkit/util/ShareItemType;

    return-object v0
.end method
