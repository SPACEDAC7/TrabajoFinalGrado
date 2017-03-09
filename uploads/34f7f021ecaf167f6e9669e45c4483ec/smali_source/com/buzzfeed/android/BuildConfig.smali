.class public final Lcom/buzzfeed/android/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.buzzfeed.android"

.field public static final BUILD_ENVIRONMENT:I = 0x0

.field public static final BUILD_FLAVOR:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final DUSTBUSTER_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0x7a8f2

.field public static final VERSION_NAME:Ljava/lang/String; = "5.2"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/buzzfeed/toolkit/constants/BuildFlavor;->RELEASE:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    sput-object v0, Lcom/buzzfeed/android/BuildConfig;->BUILD_FLAVOR:Lcom/buzzfeed/toolkit/constants/BuildFlavor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
