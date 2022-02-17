.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;->val$blockly:Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;->val$blockly:Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyXML()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:loadCode(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameHolder:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    return-void
.end method
