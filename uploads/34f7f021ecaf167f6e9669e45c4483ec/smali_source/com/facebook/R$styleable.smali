.class public final Lcom/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_auxiliary_view_position:I = 0x4

.field public static final com_facebook_like_view_foreground_color:I = 0x0

.field public static final com_facebook_like_view_horizontal_alignment:I = 0x5

.field public static final com_facebook_like_view_object_id:I = 0x1

.field public static final com_facebook_like_view_object_type:I = 0x2

.field public static final com_facebook_like_view_style:I = 0x3

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_login_text:I = 0x1

.field public static final com_facebook_login_view_logout_text:I = 0x2

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_like_view:[I

    .line 174
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_login_view:[I

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 167
    nop

    :array_1a
    .array-data 4
        0x7f010171
        0x7f010172
        0x7f010173
        0x7f010174
        0x7f010175
        0x7f010176
    .end array-data

    .line 174
    :array_2a
    .array-data 4
        0x7f010177
        0x7f010178
        0x7f010179
    .end array-data

    .line 178
    :array_34
    .array-data 4
        0x7f01017a
        0x7f01017b
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
