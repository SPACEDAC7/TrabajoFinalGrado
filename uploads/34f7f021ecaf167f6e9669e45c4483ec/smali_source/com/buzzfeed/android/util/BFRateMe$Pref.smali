.class public Lcom/buzzfeed/android/util/BFRateMe$Pref;
.super Ljava/lang/Object;
.source "BFRateMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/util/BFRateMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pref"
.end annotation


# static fields
.field public static final DAYS_APP_USED_COUNT:Ljava/lang/String; = "rate_me_days_app_used_count"

.field public static final DAYS_APP_USED_SINCE_LAST_PROMPT_COUNT:Ljava/lang/String; = "rate_me_days_app_used_since_last_prompt_count"

.field public static final DONT_SHOW_AGAIN:Ljava/lang/String; = "rate_me_dont_show_again"

.field public static final LAUNCHES_SINCE_LAST_PROMPT_COUNT:Ljava/lang/String; = "rate_me_launches_since_last_prompt_count"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "rate_me_launch_count"

.field private static final PREFIX:Ljava/lang/String; = "rate_me_"

.field public static final TIME_OF_FIRST_LAUNCH:Ljava/lang/String; = "rate_me_time_of_first_launch"

.field public static final TIME_OF_LAST_DAYS_APP_USED_INCREMENT:Ljava/lang/String; = "rate_me_time_of_days_app_used_since_last_prompt_increment"

.field public static final TIME_OF_LAST_PROMPT:Ljava/lang/String; = "rate_me_time_of_last_prompt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
