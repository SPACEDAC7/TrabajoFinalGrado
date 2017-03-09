.class public Lcom/twitter/sdk/android/core/models/Tweet;
.super Ljava/lang/Object;
.source "Tweet.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/models/Identifiable;


# static fields
.field public static final INVALID_ID:J = -0x1L


# instance fields
.field public final card:Lcom/twitter/sdk/android/core/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field public final coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation
.end field

.field public final createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public final currentUserRetweet:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_user_retweet"
    .end annotation
.end field

.field public final entities:Lcom/twitter/sdk/android/core/models/TweetEntities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation
.end field

.field public final extendedEtities:Lcom/twitter/sdk/android/core/models/TweetEntities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended_entities"
    .end annotation
.end field

.field public final favoriteCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field public final favorited:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorited"
    .end annotation
.end field

.field public final filterLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_level"
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

.field public final inReplyToScreenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public final inReplyToStatusId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public final inReplyToStatusIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id_str"
    .end annotation
.end field

.field public final inReplyToUserId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public final inReplyToUserIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id_str"
    .end annotation
.end field

.field public final lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public final place:Lcom/twitter/sdk/android/core/models/Place;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place"
    .end annotation
.end field

.field public final possiblySensitive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "possibly_sensitive"
    .end annotation
.end field

.field public final retweetCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweet_count"
    .end annotation
.end field

.field public final retweeted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted"
    .end annotation
.end field

.field public final retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted_status"
    .end annotation
.end field

.field public final scopes:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field public final source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field public final truncated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "truncated"
    .end annotation
.end field

.field public final user:Lcom/twitter/sdk/android/core/models/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public final withheldCopyright:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_copyright"
    .end annotation
.end field

.field public final withheldInCountries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_in_countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final withheldScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;)V
    .registers 68
    .param p1, "coordinates"    # Lcom/twitter/sdk/android/core/models/Coordinates;
    .param p2, "createdAt"    # Ljava/lang/String;
    .param p3, "currentUserRetweet"    # Ljava/lang/Object;
    .param p4, "entities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p5, "extendedEtities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p6, "favoriteCount"    # Ljava/lang/Integer;
    .param p7, "favorited"    # Z
    .param p8, "filterLevel"    # Ljava/lang/String;
    .param p9, "id"    # J
    .param p11, "idStr"    # Ljava/lang/String;
    .param p12, "inReplyToScreenName"    # Ljava/lang/String;
    .param p13, "inReplyToStatusId"    # J
    .param p15, "inReplyToStatusIdStr"    # Ljava/lang/String;
    .param p16, "inReplyToUserId"    # J
    .param p18, "inReplyToUserIdStr"    # Ljava/lang/String;
    .param p19, "lang"    # Ljava/lang/String;
    .param p20, "place"    # Lcom/twitter/sdk/android/core/models/Place;
    .param p21, "possiblySensitive"    # Z
    .param p22, "scopes"    # Ljava/lang/Object;
    .param p23, "retweetCount"    # I
    .param p24, "retweeted"    # Z
    .param p25, "retweetedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p26, "source"    # Ljava/lang/String;
    .param p27, "text"    # Ljava/lang/String;
    .param p28, "truncated"    # Z
    .param p29, "user"    # Lcom/twitter/sdk/android/core/models/User;
    .param p30, "withheldCopyright"    # Z
    .param p32, "withheldScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Coordinates;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Place;",
            "Z",
            "Ljava/lang/Object;",
            "IZ",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/twitter/sdk/android/core/models/User;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    .local p31, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v34, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    invoke-direct/range {v1 .. v34}, Lcom/twitter/sdk/android/core/models/Tweet;-><init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V
    .registers 37
    .param p1, "coordinates"    # Lcom/twitter/sdk/android/core/models/Coordinates;
    .param p2, "createdAt"    # Ljava/lang/String;
    .param p3, "currentUserRetweet"    # Ljava/lang/Object;
    .param p4, "entities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p5, "extendedEtities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p6, "favoriteCount"    # Ljava/lang/Integer;
    .param p7, "favorited"    # Z
    .param p8, "filterLevel"    # Ljava/lang/String;
    .param p9, "id"    # J
    .param p11, "idStr"    # Ljava/lang/String;
    .param p12, "inReplyToScreenName"    # Ljava/lang/String;
    .param p13, "inReplyToStatusId"    # J
    .param p15, "inReplyToStatusIdStr"    # Ljava/lang/String;
    .param p16, "inReplyToUserId"    # J
    .param p18, "inReplyToUserIdStr"    # Ljava/lang/String;
    .param p19, "lang"    # Ljava/lang/String;
    .param p20, "place"    # Lcom/twitter/sdk/android/core/models/Place;
    .param p21, "possiblySensitive"    # Z
    .param p22, "scopes"    # Ljava/lang/Object;
    .param p23, "retweetCount"    # I
    .param p24, "retweeted"    # Z
    .param p25, "retweetedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p26, "source"    # Ljava/lang/String;
    .param p27, "text"    # Ljava/lang/String;
    .param p28, "truncated"    # Z
    .param p29, "user"    # Lcom/twitter/sdk/android/core/models/User;
    .param p30, "withheldCopyright"    # Z
    .param p32, "withheldScope"    # Ljava/lang/String;
    .param p33, "card"    # Lcom/twitter/sdk/android/core/models/Card;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Coordinates;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Place;",
            "Z",
            "Ljava/lang/Object;",
            "IZ",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/twitter/sdk/android/core/models/User;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Card;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    .local p31, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    .line 303
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lcom/twitter/sdk/android/core/models/Tweet;->currentUserRetweet:Ljava/lang/Object;

    .line 305
    iput-object p4, p0, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 306
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEtities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 307
    iput-object p6, p0, Lcom/twitter/sdk/android/core/models/Tweet;->favoriteCount:Ljava/lang/Integer;

    .line 308
    iput-boolean p7, p0, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    .line 309
    iput-object p8, p0, Lcom/twitter/sdk/android/core/models/Tweet;->filterLevel:Ljava/lang/String;

    .line 310
    iput-wide p9, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    .line 311
    iput-object p11, p0, Lcom/twitter/sdk/android/core/models/Tweet;->idStr:Ljava/lang/String;

    .line 312
    iput-object p12, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToScreenName:Ljava/lang/String;

    .line 313
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusId:J

    .line 314
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusIdStr:Ljava/lang/String;

    .line 315
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToUserId:J

    .line 316
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToUserIdStr:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->lang:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->place:Lcom/twitter/sdk/android/core/models/Place;

    .line 319
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->possiblySensitive:Z

    .line 320
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->scopes:Ljava/lang/Object;

    .line 321
    move/from16 v0, p23

    iput v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetCount:I

    .line 322
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweeted:Z

    .line 323
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 324
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->source:Ljava/lang/String;

    .line 325
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    .line 326
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->truncated:Z

    .line 327
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    .line 328
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldCopyright:Z

    .line 329
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldInCountries:Ljava/util/List;

    .line 330
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldScope:Ljava/lang/String;

    .line 331
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 332
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;)V
    .registers 66
    .param p1, "coordinates"    # Lcom/twitter/sdk/android/core/models/Coordinates;
    .param p2, "createdAt"    # Ljava/lang/String;
    .param p3, "currentUserRetweet"    # Ljava/lang/Object;
    .param p4, "entities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p5, "favoriteCount"    # Ljava/lang/Integer;
    .param p6, "favorited"    # Z
    .param p7, "filterLevel"    # Ljava/lang/String;
    .param p8, "id"    # J
    .param p10, "idStr"    # Ljava/lang/String;
    .param p11, "inReplyToScreenName"    # Ljava/lang/String;
    .param p12, "inReplyToStatusId"    # J
    .param p14, "inReplyToStatusIdStr"    # Ljava/lang/String;
    .param p15, "inReplyToUserId"    # J
    .param p17, "inReplyToUserIdStr"    # Ljava/lang/String;
    .param p18, "lang"    # Ljava/lang/String;
    .param p19, "place"    # Lcom/twitter/sdk/android/core/models/Place;
    .param p20, "possiblySensitive"    # Z
    .param p21, "scopes"    # Ljava/lang/Object;
    .param p22, "retweetCount"    # I
    .param p23, "retweeted"    # Z
    .param p24, "retweetedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p25, "source"    # Ljava/lang/String;
    .param p26, "text"    # Ljava/lang/String;
    .param p27, "truncated"    # Z
    .param p28, "user"    # Lcom/twitter/sdk/android/core/models/User;
    .param p29, "withheldCopyright"    # Z
    .param p31, "withheldScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Coordinates;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Place;",
            "Z",
            "Ljava/lang/Object;",
            "IZ",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/twitter/sdk/android/core/models/User;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    .local p30, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move/from16 v29, p27

    move-object/from16 v30, p28

    move/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    invoke-direct/range {v1 .. v33}, Lcom/twitter/sdk/android/core/models/Tweet;-><init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 341
    if-nez p1, :cond_4

    .line 344
    :cond_3
    :goto_3
    return v1

    .line 342
    :cond_4
    instance-of v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 343
    check-cast v0, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 344
    .local v0, "other":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    iget-wide v4, v0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    long-to-int v0, v0

    return v0
.end method
