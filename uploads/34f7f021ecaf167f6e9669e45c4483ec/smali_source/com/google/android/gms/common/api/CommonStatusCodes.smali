.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final DEAD_CLIENT:I = 0x12

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_4a

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "SUCCESS_CACHE"

    goto :goto_19

    :pswitch_1d
    const-string v0, "SUCCESS"

    goto :goto_19

    :pswitch_20
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_19

    :pswitch_23
    const-string v0, "SERVICE_DISABLED"

    goto :goto_19

    :pswitch_26
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_19

    :pswitch_29
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_19

    :pswitch_2c
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_19

    :pswitch_2f
    const-string v0, "NETWORK_ERROR"

    goto :goto_19

    :pswitch_32
    const-string v0, "INTERNAL_ERROR"

    goto :goto_19

    :pswitch_35
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_19

    :pswitch_38
    const-string v0, "ERROR"

    goto :goto_19

    :pswitch_3b
    const-string v0, "INTERRUPTED"

    goto :goto_19

    :pswitch_3e
    const-string v0, "TIMEOUT"

    goto :goto_19

    :pswitch_41
    const-string v0, "CANCELED"

    goto :goto_19

    :pswitch_44
    const-string v0, "API_NOT_CONNECTED"

    goto :goto_19

    :pswitch_47
    const-string v0, "DEAD_CLIENT"

    goto :goto_19

    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_1d
        :pswitch_3
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_3
        :pswitch_35
        :pswitch_3
        :pswitch_3
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
    .end packed-switch
.end method
