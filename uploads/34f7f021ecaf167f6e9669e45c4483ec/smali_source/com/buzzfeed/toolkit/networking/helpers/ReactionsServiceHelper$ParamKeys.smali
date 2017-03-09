.class final Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ParamKeys;
.super Ljava/lang/Object;
.source "ReactionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ParamKeys"
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final BADGE_ID:Ljava/lang/String; = "badge_id"

.field static final BUZZ_ID:Ljava/lang/String; = "buzz_id"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final MULTIPLE_RESULT_FORMAT:Ljava/lang/String; = "multiple_result_format"

.field static final SESSION_KEY:Ljava/lang/String; = "session_key"

.field static final URI:Ljava/lang/String; = "uri"

.field static final USER_TOKEN:Ljava/lang/String; = "user_token"

.field static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper$ParamKeys;->this$0:Lcom/buzzfeed/toolkit/networking/helpers/ReactionsServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
