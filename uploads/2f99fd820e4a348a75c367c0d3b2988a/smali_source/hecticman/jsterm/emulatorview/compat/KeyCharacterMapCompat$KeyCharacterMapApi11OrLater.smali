.class Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;
.super Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat;
.source "KeyCharacterMapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyCharacterMapApi11OrLater"
.end annotation


# instance fields
.field private mMap:Landroid/view/KeyCharacterMap;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "map"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat;-><init>()V

    .line 39
    check-cast p1, Landroid/view/KeyCharacterMap;

    .end local p1    # "map":Ljava/lang/Object;
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;->mMap:Landroid/view/KeyCharacterMap;

    .line 40
    return-void
.end method


# virtual methods
.method public getModifierBehaviour()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/compat/KeyCharacterMapCompat$KeyCharacterMapApi11OrLater;->mMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    return v0
.end method
