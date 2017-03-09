.class Ljackpal/androidterm/Term$WindowListActionBarAdapter;
.super Ljackpal/androidterm/WindowListAdapter;
.source "Term.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowListActionBarAdapter"
.end annotation


# static fields
.field private static final TextAppearance_Holo_Widget_ActionBar_Title:I = 0x1030112


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/util/SessionList;)V
    .registers 3
    .param p2, "sessions"    # Ljackpal/androidterm/util/SessionList;

    .prologue
    .line 176
    iput-object p1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    .line 177
    invoke-direct {p0, p2}, Ljackpal/androidterm/WindowListAdapter;-><init>(Ljackpal/androidterm/util/SessionList;)V

    .line 178
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Ljackpal/androidterm/WindowListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "label":Landroid/widget/TextView;
    iget-object v2, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v3, 0x7f09008e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljackpal/androidterm/Term;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->getSessionTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v2, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_32

    .line 186
    iget-object v2, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v3, 0x1030112

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 190
    :goto_31
    return-object v0

    .line 188
    :cond_32
    iget-object v2, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    const v3, 0x1030044

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_31
.end method

.method public onUpdate()V
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object v0, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    invoke-static {v0}, Ljackpal/androidterm/Term;->access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;->this$0:Ljackpal/androidterm/Term;

    # getter for: Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    .line 201
    return-void
.end method
