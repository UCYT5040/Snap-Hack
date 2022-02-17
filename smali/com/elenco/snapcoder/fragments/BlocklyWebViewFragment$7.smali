.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 181
    .local v0, "blocklyLinLay":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$000(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$000(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
