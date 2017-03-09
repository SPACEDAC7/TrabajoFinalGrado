.class public Lcom/twitter/sdk/android/core/models/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/models/Identifiable;
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_ID:J = -0x1L

.field private static final serialVersionUID:J = 0x40b7e7b364d35e06L


# instance fields
.field public final contributorsEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contributors_enabled"
    .end annotation
.end field

.field public final createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public final defaultProfile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_profile"
    .end annotation
.end field

.field public final defaultProfileImage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_profile_image"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public final email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public final entities:Lcom/twitter/sdk/android/core/models/UserEntities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation
.end field

.field public final favouritesCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favourites_count"
    .end annotation
.end field

.field public final followRequestSent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "follow_request_sent"
    .end annotation
.end field

.field public final followersCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "followers_count"
    .end annotation
.end field

.field public final friendsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends_count"
    .end annotation
.end field

.field public final geoEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geo_enabled"
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final idStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field

.field public final isTranslator:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_translator"
    .end annotation
.end field

.field public final lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public final listedCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listed_count"
    .end annotation
.end field

.field public final location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public final profileBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_background_color"
    .end annotation
.end field

.field public final profileBackgroundImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_background_image_url"
    .end annotation
.end field

.field public final profileBackgroundImageUrlHttps:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_background_image_url_https"
    .end annotation
.end field

.field public final profileBackgroundTile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_background_tile"
    .end annotation
.end field

.field public final profileBannerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_banner_url"
    .end annotation
.end field

.field public final profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_image_url"
    .end annotation
.end field

.field public final profileImageUrlHttps:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_image_url_https"
    .end annotation
.end field

.field public final profileLinkColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_link_color"
    .end annotation
.end field

.field public final profileSidebarBorderColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_sidebar_border_color"
    .end annotation
.end field

.field public final profileSidebarFillColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_sidebar_fill_color"
    .end annotation
.end field

.field public final profileTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_text_color"
    .end annotation
.end field

.field public final profileUseBackgroundImage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_use_background_image"
    .end annotation
.end field

.field public final protectedUser:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "protected"
    .end annotation
.end field

.field public final screenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screen_name"
    .end annotation
.end field

.field public final showAllInlineMedia:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_all_inline_media"
    .end annotation
.end field

.field public final status:Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public final statusesCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statuses_count"
    .end annotation
.end field

.field public final timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_zone"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public final utcOffset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "utc_offset"
    .end annotation
.end field

.field public final verified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verified"
    .end annotation
.end field

.field public final withheldInCountries:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_in_countries"
    .end annotation
.end field

.field public final withheldScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/UserEntities;IZIIZJLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/twitter/sdk/android/core/models/Tweet;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 45
    .param p1, "contributorsEnabled"    # Z
    .param p2, "createdAt"    # Ljava/lang/String;
    .param p3, "defaultProfile"    # Z
    .param p4, "defaultProfileImage"    # Z
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "emailAddress"    # Ljava/lang/String;
    .param p7, "entities"    # Lcom/twitter/sdk/android/core/models/UserEntities;
    .param p8, "favouritesCount"    # I
    .param p9, "followRequestSent"    # Z
    .param p10, "followersCount"    # I
    .param p11, "friendsCount"    # I
    .param p12, "geoEnabled"    # Z
    .param p13, "id"    # J
    .param p15, "idStr"    # Ljava/lang/String;
    .param p16, "isTranslator"    # Z
    .param p17, "lang"    # Ljava/lang/String;
    .param p18, "listedCount"    # I
    .param p19, "location"    # Ljava/lang/String;
    .param p20, "name"    # Ljava/lang/String;
    .param p21, "profileBackgroundColor"    # Ljava/lang/String;
    .param p22, "profileBackgroundImageUrl"    # Ljava/lang/String;
    .param p23, "profileBackgroundImageUrlHttps"    # Ljava/lang/String;
    .param p24, "profileBackgroundTile"    # Z
    .param p25, "profileBannerUrl"    # Ljava/lang/String;
    .param p26, "profileImageUrl"    # Ljava/lang/String;
    .param p27, "profileImageUrlHttps"    # Ljava/lang/String;
    .param p28, "profileLinkColor"    # Ljava/lang/String;
    .param p29, "profileSidebarBorderColor"    # Ljava/lang/String;
    .param p30, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p31, "profileTextColor"    # Ljava/lang/String;
    .param p32, "profileUseBackgroundImage"    # Z
    .param p33, "protectedUser"    # Z
    .param p34, "screenName"    # Ljava/lang/String;
    .param p35, "showAllInlineMedia"    # Z
    .param p36, "status"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p37, "statusesCount"    # I
    .param p38, "timeZone"    # Ljava/lang/String;
    .param p39, "url"    # Ljava/lang/String;
    .param p40, "utcOffset"    # I
    .param p41, "verified"    # Z
    .param p42, "withheldInCountries"    # Ljava/lang/String;
    .param p43, "withheldScope"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/User;->contributorsEnabled:Z

    .line 332
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/User;->createdAt:Ljava/lang/String;

    .line 333
    iput-boolean p3, p0, Lcom/twitter/sdk/android/core/models/User;->defaultProfile:Z

    .line 334
    iput-boolean p4, p0, Lcom/twitter/sdk/android/core/models/User;->defaultProfileImage:Z

    .line 335
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/User;->description:Ljava/lang/String;

    .line 336
    iput-object p6, p0, Lcom/twitter/sdk/android/core/models/User;->email:Ljava/lang/String;

    .line 337
    iput-object p7, p0, Lcom/twitter/sdk/android/core/models/User;->entities:Lcom/twitter/sdk/android/core/models/UserEntities;

    .line 338
    iput p8, p0, Lcom/twitter/sdk/android/core/models/User;->favouritesCount:I

    .line 339
    iput-boolean p9, p0, Lcom/twitter/sdk/android/core/models/User;->followRequestSent:Z

    .line 340
    iput p10, p0, Lcom/twitter/sdk/android/core/models/User;->followersCount:I

    .line 341
    iput p11, p0, Lcom/twitter/sdk/android/core/models/User;->friendsCount:I

    .line 342
    iput-boolean p12, p0, Lcom/twitter/sdk/android/core/models/User;->geoEnabled:Z

    .line 343
    iput-wide p13, p0, Lcom/twitter/sdk/android/core/models/User;->id:J

    .line 344
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->idStr:Ljava/lang/String;

    .line 345
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->isTranslator:Z

    .line 346
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->lang:Ljava/lang/String;

    .line 347
    move/from16 v0, p18

    iput v0, p0, Lcom/twitter/sdk/android/core/models/User;->listedCount:I

    .line 348
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->location:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileBackgroundColor:Ljava/lang/String;

    .line 351
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 352
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    .line 353
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileBackgroundTile:Z

    .line 354
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileBannerUrl:Ljava/lang/String;

    .line 355
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileImageUrl:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileImageUrlHttps:Ljava/lang/String;

    .line 357
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileLinkColor:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileSidebarBorderColor:Ljava/lang/String;

    .line 359
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileSidebarFillColor:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileTextColor:Ljava/lang/String;

    .line 361
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->profileUseBackgroundImage:Z

    .line 362
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->protectedUser:Z

    .line 363
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 364
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->showAllInlineMedia:Z

    .line 365
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->status:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 366
    move/from16 v0, p37

    iput v0, p0, Lcom/twitter/sdk/android/core/models/User;->statusesCount:I

    .line 367
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->timeZone:Ljava/lang/String;

    .line 368
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->url:Ljava/lang/String;

    .line 369
    move/from16 v0, p40

    iput v0, p0, Lcom/twitter/sdk/android/core/models/User;->utcOffset:I

    .line 370
    move/from16 v0, p41

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/User;->verified:Z

    .line 371
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->withheldInCountries:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/User;->withheldScope:Ljava/lang/String;

    .line 373
    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/User;->id:J

    return-wide v0
.end method
