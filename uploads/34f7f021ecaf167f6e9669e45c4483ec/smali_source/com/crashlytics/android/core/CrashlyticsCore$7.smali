.class Lcom/crashlytics/android/core/CrashlyticsCore$7;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;->getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;

.field final synthetic val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

.field final synthetic val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;Landroid/app/Activity;Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;Lcom/crashlytics/android/core/DialogStringResolver;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V
    .registers 6

    .prologue
    .line 989
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$latch:Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;

    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    iput-object p5, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 992
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 994
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsCore$7$1;

    invoke-direct {v5, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$7$1;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore$7;)V

    .line 1002
    .local v5, "sendClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v3, v8, Landroid/util/DisplayMetrics;->density:F

    .line 1006
    .local v3, "density":F
    const/4 v8, 0x5

    # invokes: Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I
    invoke-static {v3, v8}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$400(FI)I

    move-result v7

    .line 1008
    .local v7, "textViewPadding":I
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v6, "textView":Landroid/widget/TextView;
    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1010
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-virtual {v8}, Lcom/crashlytics/android/core/DialogStringResolver;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    const v9, 0x1030044

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1012
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1014
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1016
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1017
    .local v4, "scrollView":Landroid/widget/ScrollView;
    const/16 v8, 0xe

    # invokes: Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I
    invoke-static {v3, v8}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$400(FI)I

    move-result v8

    const/4 v9, 0x2

    # invokes: Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I
    invoke-static {v3, v9}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$400(FI)I

    move-result v9

    const/16 v10, 0xa

    # invokes: Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I
    invoke-static {v3, v10}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$400(FI)I

    move-result v10

    const/16 v11, 0xc

    # invokes: Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I
    invoke-static {v3, v11}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$400(FI)I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1019
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1023
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-virtual {v9}, Lcom/crashlytics/android/core/DialogStringResolver;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-virtual {v9}, Lcom/crashlytics/android/core/DialogStringResolver;->getSendButtonTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-boolean v8, v8, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showCancelButton:Z

    if-eqz v8, :cond_94

    .line 1027
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsCore$7$2;

    invoke-direct {v2, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$7$2;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore$7;)V

    .line 1034
    .local v2, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-virtual {v8}, Lcom/crashlytics/android/core/DialogStringResolver;->getCancelButtonTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1038
    .end local v2    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_94
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    iget-boolean v8, v8, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showAlwaysSendButton:Z

    if-eqz v8, :cond_a8

    .line 1039
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$7$3;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$7$3;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore$7;)V

    .line 1047
    .local v0, "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$stringResolver:Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-virtual {v8}, Lcom/crashlytics/android/core/DialogStringResolver;->getAlwaysSendButtonTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1051
    .end local v0    # "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_a8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1052
    return-void
.end method
