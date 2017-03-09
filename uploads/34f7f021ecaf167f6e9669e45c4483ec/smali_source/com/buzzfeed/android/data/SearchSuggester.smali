.class public Lcom/buzzfeed/android/data/SearchSuggester;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchSuggester.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.buzzfeed.android.data.SearchSuggester"

.field public static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 10
    const-string v0, "com.buzzfeed.android.data.SearchSuggester"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/data/SearchSuggester;->setupSuggestions(Ljava/lang/String;I)V

    .line 11
    return-void
.end method
