.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

.field final synthetic val$blockly:Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

.field final synthetic val$blocklyNameItem:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/SQLite/data/model/Blockly;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->val$blockly:Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->val$blocklyNameItem:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->val$blockly:Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;->val$blocklyNameItem:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameItemToChange:Landroid/widget/LinearLayout;

    .line 345
    return-void
.end method
