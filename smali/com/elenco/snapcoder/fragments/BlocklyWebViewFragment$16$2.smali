.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

.field final synthetic val$areYouSureHolder:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->val$areYouSureHolder:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 305
    .local v2, "blocklyNameRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 308
    .local v0, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->delete(I)V

    .line 314
    .end local v0    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    :cond_1
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->val$blocklyNameItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->noSavedCodeText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;->val$areYouSureHolder:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    return-void
.end method
