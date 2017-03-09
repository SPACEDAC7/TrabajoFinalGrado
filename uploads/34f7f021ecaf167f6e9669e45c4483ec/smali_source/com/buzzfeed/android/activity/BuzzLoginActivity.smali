.class public Lcom/buzzfeed/android/activity/BuzzLoginActivity;
.super Lcom/buzzfeed/android/activity/BaseActivity;
.source "BuzzLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    }
.end annotation


# static fields
.field private static final AUTH_CODE_REQUEST_CODE:I = 0x7d0

.field private static final GET_ACCOUNTS_PERMISSION_CODE:I = 0x64

.field private static final SCREEN_TYPE_KEY:Ljava/lang/String; = "ScreenType"

.field private static final TAG:Ljava/lang/String;

.field private static inputFieldIDs:[I


# instance fields
.field private final EMAIL_REGEXP:Ljava/lang/String;

.field private final USERNAME_REGEXP:Ljava/lang/String;

.field private arrowImage:Landroid/widget/ImageView;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private confirmButton:Lcom/buzzfeed/android/ui/widget/FloatingButton;

.field private currentScreen:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

.field private facebookLoginManager:Lcom/facebook/login/LoginManager;

.field private mCurrentDialog:Landroid/support/v7/app/AlertDialog;

.field private mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

.field private mSuggester:Landroid/provider/SearchRecentSuggestions;

.field private mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

.field private passwordField:Landroid/widget/EditText;

.field private profileTracker:Lcom/facebook/ProfileTracker;

.field private usernameField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->inputFieldIDs:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x7f11009b
        0x7f11009c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BaseActivity;-><init>()V

    .line 83
    const-string v0, "^[a-zA-Z0-9]+$"

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->USERNAME_REGEXP:Ljava/lang/String;

    .line 84
    const-string v0, "(?:[a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->EMAIL_REGEXP:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->LOGIN_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->currentScreen:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onBuzzFeedLoginCompletedWithFacebook(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/activity/BuzzLoginActivity;II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Landroid/support/v7/app/AlertDialog;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$400(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->signupGoogleUser(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onLoginToBuzzFeedWithGooglePlusCompleted(Lorg/json/JSONObject;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)Lcom/buzzfeed/analytics/client/BuzzFeedTracker;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onBuzzFeedLoginCompletedWithAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->dismissCurrentDialog()V

    return-void
.end method

.method private assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    .registers 4
    .param p1, "title"    # I
    .param p2, "message"    # I

    .prologue
    .line 730
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setMessage(I)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private dismissCurrentDialog()V
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 735
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    .line 738
    :cond_14
    return-void
.end method

.method private handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .registers 6
    .param p1, "result"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 245
    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignInResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 248
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 249
    .local v0, "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 251
    .end local v0    # "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_29
    return-void
.end method

.method private loginToBuzzFeedWithAccount()V
    .registers 6

    .prologue
    .line 626
    const v4, 0x7f11009b

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 627
    .local v3, "usernameField":Landroid/widget/EditText;
    const v4, 0x7f11009c

    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 629
    .local v1, "passwordField":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "password":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".loginToBuzzFeedWithAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging in with username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 639
    :cond_37
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V

    .line 668
    :cond_3a
    :goto_3a
    return-void

    .line 640
    :cond_3b
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 641
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 642
    const v1, 0x7f090082

    const v2, 0x7f090087

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setProgressBarVisiblilty(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    .line 644
    :cond_5d
    new-instance v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$6;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lcom/buzzfeed/android/util/BuzzApiClient;->loginToBuzzFeedWithAccount(Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    goto :goto_3a

    .line 664
    :cond_66
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 665
    const v1, 0x7f0900b1

    const v2, 0x7f0900cc

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    goto :goto_3a
.end method

.method private loginToBuzzFeedWithFacebook()V
    .registers 5

    .prologue
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".loginBuzzFeedWithFacebook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v1, "collectionOfPermissionRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->facebookLoginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {v2, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 453
    return-void
.end method

.method private loginToBuzzFeedWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 5
    .param p1, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".loginToBuzzFeedWithGoogle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_31

    .line 492
    const v1, 0x7f090082

    const v2, 0x7f090087

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setProgressBarVisiblilty(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    .line 494
    :cond_31
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$4;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/buzzfeed/android/util/BuzzApiClient;->loginToBuzzFeedWithGooglePlus(Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 547
    return-void
.end method

.method private onBuzzFeedLoginCompletedWithAccount(Ljava/lang/String;)V
    .registers 15
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onBuzzFeedLoginCompletedWithAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 673
    .local v6, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 674
    .local v7, "bfInfo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v8

    .line 675
    .local v8, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    const-string v0, "login"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLogin(Z)V

    .line 676
    invoke-virtual {v8}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 677
    const-string v0, "buzzfeedAccount"

    invoke-virtual {v8, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLoginType(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v8, v7}, Lcom/buzzfeed/android/data/BuzzUser;->loadFromJson(Lorg/json/JSONObject;)V

    .line 679
    invoke-virtual {v8}, Lcom/buzzfeed/android/data/BuzzUser;->getUsername()Ljava/lang/String;

    move-result-object v12

    .line 680
    .local v12, "username":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->passwordField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 681
    .local v11, "password":Ljava/lang/String;
    invoke-static {v11, p0}, Lcom/buzzfeed/android/util/AESCryptUtils;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "encryptedPass":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/buzzfeed/android/data/BuzzUser;->setPassword(Ljava/lang/String;)V

    .line 683
    const v0, 0x7f090084

    .line 684
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 683
    invoke-static {p0, v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 686
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901dd

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 687
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 688
    :cond_83
    invoke-direct {p0, v8}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onPostLogin(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 696
    .end local v7    # "bfInfo":Lorg/json/JSONObject;
    .end local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    .end local v10    # "encryptedPass":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "username":Ljava/lang/String;
    :goto_86
    return-void

    .line 690
    .restart local v7    # "bfInfo":Lorg/json/JSONObject;
    .restart local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_87
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_8a} :catch_8b

    goto :goto_86

    .line 692
    .end local v7    # "bfInfo":Lorg/json/JSONObject;
    .end local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :catch_8b
    move-exception v9

    .line 693
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error logging in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V

    goto :goto_86
.end method

.method private onBuzzFeedLoginCompletedWithFacebook(Ljava/lang/String;)V
    .registers 14
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onBuzzFeedLoginCompletedWithFacebook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "TAG":Ljava/lang/String;
    :try_start_15
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 459
    .local v7, "bfINfo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v8

    .line 460
    .local v8, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    const-string v0, "login"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLogin(Z)V

    .line 462
    invoke-virtual {v8}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 463
    const-string v0, "facebookAccount"

    invoke-virtual {v8, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLoginType(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v8, v7}, Lcom/buzzfeed/android/data/BuzzUser;->loadFromJson(Lorg/json/JSONObject;)V

    .line 465
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, "fbUserName":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/buzzfeed/android/data/BuzzUser;->setFacebookUsername(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setImageUrl(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v8}, Lcom/buzzfeed/android/data/BuzzUser;->getUsername()Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, "username":Ljava/lang/String;
    const v0, 0x7f09008f

    .line 471
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 470
    invoke-static {p0, v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 473
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901c2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 474
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 475
    :cond_90
    invoke-direct {p0, v8}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onPostLogin(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 487
    .end local v7    # "bfINfo":Lorg/json/JSONObject;
    .end local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    .end local v10    # "fbUserName":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :goto_93
    return-void

    .line 477
    .restart local v7    # "bfINfo":Lorg/json/JSONObject;
    .restart local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_94
    const-string v0, "Could not log in with facebook"

    invoke-static {v6, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_9c} :catch_a7

    goto :goto_93

    .line 480
    .end local v7    # "bfINfo":Lorg/json/JSONObject;
    .end local v8    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :catch_9d
    move-exception v9

    .line 481
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "JSON Error in response"

    invoke-static {v6, v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V

    goto :goto_93

    .line 483
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_a7
    move-exception v9

    .line 484
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "Error"

    invoke-static {v6, v0, v9}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showInvalidLoginDialog()V

    goto :goto_93
.end method

.method private onLoginToBuzzFeedWithGooglePlusCompleted(Lorg/json/JSONObject;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 12
    .param p1, "bfInfo"    # Lorg/json/JSONObject;
    .param p2, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onLoginToBuzzFeedWithGooglePlusCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "TAG":Ljava/lang/String;
    :try_start_15
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v7

    .line 597
    .local v7, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    const-string v0, "login"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLogin(Z)V

    .line 598
    invoke-virtual {v7}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 599
    const-string v0, "googleAccount"

    invoke-virtual {v7, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setLoginType(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v7, p1}, Lcom/buzzfeed/android/data/BuzzUser;->loadFromJson(Lorg/json/JSONObject;)V

    .line 601
    if-eqz p2, :cond_7b

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 602
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setImageUrl(Ljava/lang/String;)V

    .line 606
    :goto_47
    const v0, 0x7f090090

    .line 607
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/buzzfeed/android/data/BuzzUser;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 606
    invoke-static {p0, v0, v1}, Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 609
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901c8

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 610
    invoke-direct {p0, v7}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->onPostLogin(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 619
    .end local v7    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_7a
    :goto_7a
    return-void

    .line 604
    .restart local v7    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_7b
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/buzzfeed/android/data/BuzzUser;->setImageUrl(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7f} :catch_80

    goto :goto_47

    .line 616
    .end local v7    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :catch_80
    move-exception v8

    .line 617
    .local v8, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v8}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 612
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v7    # "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    :cond_9c
    :try_start_9c
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 613
    const v0, 0x7f090097

    const v1, 0x7f0900a9

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_bb} :catch_80

    goto :goto_7a
.end method

.method private onPostLogin(Lcom/buzzfeed/android/data/BuzzUser;)V
    .registers 6
    .param p1, "buzzUser"    # Lcom/buzzfeed/android/data/BuzzUser;

    .prologue
    const/4 v3, 0x1

    .line 700
    invoke-static {p0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;

    move-result-object v0

    .line 701
    .local v0, "bookmarkManager":Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/data/BuzzUser;->setBuzzUser(Lcom/buzzfeed/android/data/BuzzUser;)V

    .line 702
    invoke-virtual {p1, p0}, Lcom/buzzfeed/android/data/BuzzUser;->saveToStorage(Landroid/content/Context;)V

    .line 703
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->onUserLoggedIn()V

    .line 705
    const v1, 0x7f090082

    const v2, 0x7f09011e

    invoke-direct {p0, v1, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setProgressBarVisiblilty(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    .line 706
    new-instance v1, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$7;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    invoke-virtual {v0, v3, v1}, Lcom/buzzfeed/android/data/bookmark/BFBookmarkManager;->syncBookmarks(ZLcom/buzzfeed/android/data/bookmark/BFBookmarkManager$SyncCompleteListener;)Lcom/buzzfeed/toolkit/util/retrofit/SafeCall;

    .line 721
    return-void
.end method

.method private setupArrowAnimation(Landroid/widget/ImageView;)V
    .registers 20
    .param p1, "arrow"    # Landroid/widget/ImageView;

    .prologue
    .line 358
    const-wide/16 v4, 0x7530

    .line 359
    .local v4, "duration":J
    const/high16 v10, 0x42480000

    .line 360
    .local v10, "translateFactor":F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    .line 362
    .local v3, "initialScale":F
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 363
    .local v6, "set1":Landroid/animation/AnimatorSet;
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string/jumbo v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v10, v14, v15

    .line 364
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    neg-float v0, v10

    move/from16 v16, v0

    aput v16, v14, v15

    .line 365
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "scaleX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    const v16, 0x3f866666

    mul-float v16, v16, v3

    aput v16, v14, v15

    .line 366
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "scaleY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    const v16, 0x3f866666

    mul-float v16, v16, v3

    aput v16, v14, v15

    .line 367
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 363
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 369
    const-wide/16 v12, 0x4

    div-long v12, v4, v12

    invoke-virtual {v6, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 371
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 372
    .local v7, "set2":Landroid/animation/AnimatorSet;
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string/jumbo v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f19999a

    mul-float v16, v16, v10

    aput v16, v14, v15

    .line 373
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    neg-float v0, v10

    move/from16 v16, v0

    const v17, 0x3fb33333

    mul-float v16, v16, v17

    aput v16, v14, v15

    .line 374
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "scaleX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f866666

    mul-float v16, v16, v3

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v3, v14, v15

    .line 375
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "scaleY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3f866666

    mul-float v16, v16, v3

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v3, v14, v15

    .line 376
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 372
    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    const-wide/16 v12, 0x4

    div-long v12, v4, v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 380
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 381
    .local v8, "set3":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string/jumbo v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const v16, 0x3e4ccccd

    mul-float v16, v16, v10

    aput v16, v14, v15

    .line 382
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    neg-float v0, v10

    move/from16 v16, v0

    const v17, 0x3ecccccd

    mul-float v16, v16, v17

    aput v16, v14, v15

    .line 383
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 381
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 385
    const-wide/16 v12, 0x4

    div-long v12, v4, v12

    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 387
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 388
    .local v9, "set4":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string/jumbo v13, "translationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 389
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "translationY"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 390
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 388
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 392
    const-wide/16 v12, 0x4

    div-long v12, v4, v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 394
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 395
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v8, v11, v12

    const/4 v12, 0x3

    aput-object v9, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 398
    new-instance v11, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$3;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 421
    return-void
.end method

.method private setupGoogleLoginButton()V
    .registers 4

    .prologue
    const v2, 0x7f1101a8

    .line 292
    invoke-static {}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isAmazonDevice()Z

    move-result v1

    if-nez v1, :cond_12

    .line 293
    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_11
    return-void

    .line 296
    .end local v0    # "view":Landroid/view/View;
    :cond_12
    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .restart local v0    # "view":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11
.end method

.method private showAlertDialog(Landroid/support/v7/app/AlertDialog;)V
    .registers 3
    .param p1, "alertDialog"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->dismissCurrentDialog()V

    .line 725
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    .line 726
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mCurrentDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 727
    return-void
.end method

.method private showInvalidLoginDialog()V
    .registers 2

    .prologue
    .line 282
    new-instance v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$2;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method private signInWithGoogle()V
    .registers 4

    .prologue
    .line 321
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 322
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 323
    const v0, 0x7f0900b1

    const v1, 0x7f0900cc

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    .line 328
    :cond_25
    :goto_25
    return-void

    .line 327
    :cond_26
    invoke-static {}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->getInstance()Lcom/buzzfeed/android/data/login/GoogleLoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/buzzfeed/android/data/login/GoogleLoginManager;->login(Landroid/app/Activity;)V

    goto :goto_25
.end method

.method private signupGoogleUser(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "bfUserInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".signupGoogleUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "TAG":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$5;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/buzzfeed/android/util/BuzzApiClient;->signUpWithUserInfoUsingGPlus(Lorg/json/JSONObject;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/retrofit/SafeCallback;)V

    .line 591
    return-void
.end method

.method private switchScreen(Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;)V
    .registers 7
    .param p1, "screenType"    # Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .prologue
    const/4 v2, 0x0

    .line 425
    iput-object p1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->currentScreen:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .line 428
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/widget/EditText;

    iget-object v3, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->usernameField:Landroid/widget/EditText;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->passwordField:Landroid/widget/EditText;

    aput-object v4, v1, v3

    .line 429
    .local v1, "fields":[Landroid/widget/EditText;
    array-length v3, v1

    :goto_10
    if-ge v2, v3, :cond_1c

    aget-object v0, v1, v2

    .line 430
    .local v0, "field":Landroid/widget/EditText;
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 433
    .end local v0    # "field":Landroid/widget/EditText;
    :cond_1c
    sget-object v2, Lcom/buzzfeed/android/activity/BuzzLoginActivity$8;->$SwitchMap$com$buzzfeed$android$activity$BuzzLoginActivity$ScreenType:[I

    invoke-virtual {p1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6c

    .line 446
    :cond_27
    :goto_27
    return-void

    .line 435
    :pswitch_28
    const v2, 0x7f11009e

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->confirmButton:Lcom/buzzfeed/android/ui/widget/FloatingButton;

    const v3, 0x7f090094

    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->setText(I)V

    .line 437
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isStageEnvironment()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 438
    const v2, 0x7f11009b

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/util/BFVault;->getBuzzFeedUserLogin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const v2, 0x7f11009c

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/toolkit/util/BFVault;->getBuzzFeedUserPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 433
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch
.end method

.method private trackBack()V
    .registers 6

    .prologue
    .line 741
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/login_screen"

    const-string v2, "back"

    const-string v3, "login_screen_back"

    const-string v4, "header"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method


# virtual methods
.method public goBack(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->trackBack()V

    .line 223
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->finish()V

    .line 224
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 237
    const/16 v1, 0x539

    if-ne p1, v1, :cond_15

    .line 239
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    .line 240
    .local v0, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 242
    .end local v0    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :cond_15
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->trackBack()V

    .line 229
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onBackPressed()V

    .line 230
    return-void
.end method

.method public onBuzzFeedUserAgreementClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getUserAgreementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/buzzfeed/android/util/BuzzUtils;->createViewBuzzIntentExcludingBfApp(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".onCreate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "TAG":Ljava/lang/String;
    const v9, 0x7f030021

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->setContentView(I)V

    .line 121
    const v9, 0x7f11009e

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 122
    .local v8, "usrAgreement":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->setupGoogleLoginButton()V

    .line 125
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v9

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 126
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v9

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->facebookLoginManager:Lcom/facebook/login/LoginManager;

    .line 128
    new-instance v9, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;

    invoke-direct {v9, p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$1;-><init>(Lcom/buzzfeed/android/activity/BuzzLoginActivity;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->profileTracker:Lcom/facebook/ProfileTracker;

    .line 163
    invoke-static {}, Lcom/buzzfeed/analytics/client/BuzzFeedTracker;->getInstance()Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mTracker:Lcom/buzzfeed/analytics/client/BuzzFeedTracker;

    .line 164
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v9

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    .line 165
    iget-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->profileTracker:Lcom/facebook/ProfileTracker;

    invoke-virtual {v9}, Lcom/facebook/ProfileTracker;->startTracking()V

    .line 168
    new-instance v9, Landroid/provider/SearchRecentSuggestions;

    const-string v10, "com.buzzfeed.android.data.SearchSuggester"

    const/4 v11, 0x1

    invoke-direct {v9, p0, v10, v11}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mSuggester:Landroid/provider/SearchRecentSuggestions;

    .line 169
    const v9, 0x7f110097

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->arrowImage:Landroid/widget/ImageView;

    .line 170
    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->isProductionBuild()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 171
    iget-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->arrowImage:Landroid/widget/ImageView;

    invoke-direct {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->setupArrowAnimation(Landroid/widget/ImageView;)V

    .line 173
    :cond_7d
    const v9, 0x7f11009d

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/buzzfeed/android/ui/widget/FloatingButton;

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->confirmButton:Lcom/buzzfeed/android/ui/widget/FloatingButton;

    .line 174
    const v9, 0x7f11009b

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->usernameField:Landroid/widget/EditText;

    .line 175
    const v9, 0x7f11009c

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->passwordField:Landroid/widget/EditText;

    .line 178
    const/4 v9, 0x2

    new-array v3, v9, [Landroid/widget/EditText;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->usernameField:Landroid/widget/EditText;

    aput-object v10, v3, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->passwordField:Landroid/widget/EditText;

    aput-object v10, v3, v9

    .line 180
    .local v3, "fields":[Landroid/widget/EditText;
    sget-object v6, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->LOGIN_SCREEN:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .line 182
    .local v6, "screen":Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    if-eqz p1, :cond_df

    .line 183
    const-string v9, "ScreenType"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 184
    const-string v9, "ScreenType"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .end local v6    # "screen":Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    check-cast v6, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    .line 187
    .restart local v6    # "screen":Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;
    :cond_bf
    sget-object v10, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->inputFieldIDs:[I

    array-length v11, v10

    const/4 v9, 0x0

    :goto_c3
    if-ge v9, v11, :cond_df

    aget v4, v10, v9

    .line 188
    .local v4, "id":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 191
    .local v2, "field":Landroid/widget/EditText;
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    add-int/lit8 v9, v9, 0x1

    goto :goto_c3

    .line 197
    .end local v2    # "field":Landroid/widget/EditText;
    .end local v4    # "id":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    :cond_df
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_f2

    .line 199
    const v9, 0x7f11009f

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020053

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    :cond_f2
    const v9, 0x7f1101a7

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/android/ui/widget/FloatingButton;

    .line 203
    .local v1, "button":Lcom/buzzfeed/android/ui/widget/FloatingButton;
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, " FACEBOOK"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const v9, 0x7f1101a8

    invoke-virtual {p0, v9}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "button":Lcom/buzzfeed/android/ui/widget/FloatingButton;
    check-cast v1, Lcom/buzzfeed/android/ui/widget/FloatingButton;

    .line 206
    .restart local v1    # "button":Lcom/buzzfeed/android/ui/widget/FloatingButton;
    invoke-virtual {v1}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, " GOOGLE"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-direct {p0, v6}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->switchScreen(Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;)V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/buzzfeed/android/activity/BaseActivity;->onDestroy()V

    .line 215
    sget-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->profileTracker:Lcom/facebook/ProfileTracker;

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->stopTracking()V

    .line 217
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->dismissCurrentDialog()V

    .line 218
    return-void
.end method

.method public onFBSignInClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/login_screen"

    const-string v2, "facebook_log_in_button"

    const-string v3, "facebook_log_in_button"

    const-string v4, "login_screen"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 307
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithFacebook()V

    .line 313
    :cond_16
    :goto_16
    return-void

    .line 309
    :cond_17
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 310
    const v0, 0x7f0900b1

    const v1, 0x7f0900cc

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    goto :goto_16
.end method

.method public onGoogleSignInClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/login_screen"

    const-string v2, "google_log_in_button"

    const-string v3, "google_log_in_button"

    const-string v4, "login_screen"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->signInWithGoogle()V

    .line 318
    return-void
.end method

.method public onLogButtonClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 334
    sget-object v0, Lcom/buzzfeed/android/activity/BuzzLoginActivity$8;->$SwitchMap$com$buzzfeed$android$activity$BuzzLoginActivity$ScreenType:[I

    iget-object v1, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->currentScreen:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    invoke-virtual {v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 343
    :goto_d
    return-void

    .line 336
    :pswitch_e
    iget-object v0, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->mDustbusterClient:Lcom/buzzfeed/analytics/client/DustbusterClient;

    const-string v1, "/list/login_screen"

    const-string v2, "buzzfeed_log_in_button"

    const-string v3, "buzzfeed_log_in_button"

    const-string v4, "login_screen"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/buzzfeed/analytics/client/DustbusterClient;->trackUiTapEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->loginToBuzzFeedWithAccount()V

    goto :goto_d

    .line 334
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_2e

    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 265
    :goto_6
    return-void

    .line 257
    :pswitch_7
    array-length v0, p3

    if-lez v0, :cond_13

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_13

    .line 258
    invoke-direct {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->signInWithGoogle()V

    goto :goto_6

    .line 260
    :cond_13
    const v0, 0x7f090282

    const v1, 0x7f090233

    invoke-direct {p0, v0, v1}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->assembleDefaultAlertDialog(II)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->showAlertDialog(Landroid/support/v7/app/AlertDialog;)V

    goto :goto_6

    .line 255
    nop

    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/buzzfeed/android/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onSaveInstanceState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "TAG":Ljava/lang/String;
    sget-object v5, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->inputFieldIDs:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v6, :cond_3c

    aget v2, v5, v4

    .line 273
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 275
    .local v1, "field":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 278
    .end local v1    # "field":Landroid/widget/EditText;
    .end local v2    # "id":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_3c
    const-string v4, "ScreenType"

    iget-object v5, p0, Lcom/buzzfeed/android/activity/BuzzLoginActivity;->currentScreen:Lcom/buzzfeed/android/activity/BuzzLoginActivity$ScreenType;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 279
    return-void
.end method
