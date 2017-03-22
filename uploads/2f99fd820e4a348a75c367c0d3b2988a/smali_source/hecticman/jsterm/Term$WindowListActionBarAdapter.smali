.class Lhecticman/jsterm/Term$WindowListActionBarAdapter;
.super Lhecticman/jsterm/WindowListAdapter;
.source "Term.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowListActionBarAdapter"
.end annotation


# static fields
.field private static final TextAppearance_Holo_Widget_ActionBar_Title:I = 0x1030112


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/Term;


# direct methods
.method public constructor <init>(Lhecticman/jsterm/Term;Lhecticman/jsterm/util/SessionList;)V
    .registers 3
    .param p2, "sessions"    # Lhecticman/jsterm/util/SessionList;

    .prologue
    .line 185
    iput-object p1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    .line 186
    invoke-direct {p0, p2}, Lhecticman/jsterm/WindowListAdapter;-><init>(Lhecticman/jsterm/util/SessionList;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lhecticman/jsterm/WindowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "label":Landroid/widget/TextView;
    iget-object v1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    const v2, 0x7f07002e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lhecticman/jsterm/Term;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_2e

    .line 194
    iget-object v1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    const v2, 0x1030112

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    :goto_2d
    return-object v0

    .line 196
    :cond_2e
    iget-object v1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2d
.end method

.method public onUpdate()V
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v0, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;
    invoke-static {v0}, Lhecticman/jsterm/Term;->access$10(Lhecticman/jsterm/Term;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v0

    iget-object v1, p0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;->this$0:Lhecticman/jsterm/Term;

    # getter for: Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;
    invoke-static {v1}, Lhecticman/jsterm/Term;->access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Lhecticman/jsterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    .line 209
    return-void
.end method
