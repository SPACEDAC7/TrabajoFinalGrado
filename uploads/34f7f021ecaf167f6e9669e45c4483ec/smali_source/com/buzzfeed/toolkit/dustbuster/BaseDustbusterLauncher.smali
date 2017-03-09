.class public abstract Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;
.super Ljava/lang/Object;
.source "BaseDustbusterLauncher.java"


# instance fields
.field protected final mApiUrl:Ljava/lang/String;

.field protected final mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->mApplicationContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;->mApiUrl:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract forceProcessEvents()V
.end method

.method public abstract processEventCollection(Lorg/json/JSONArray;)V
.end method

.method public abstract processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
.end method

.method public abstract refreshServicePrefs()V
.end method
