.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;
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

.field final synthetic val$blocklyNameItem:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->val$blocklyNameItem:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 288
    .local v0, "areYouSureHolder":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    const v3, 0x7f080194

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 291
    .local v1, "deleteNoButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;

    invoke-direct {v3, p0, v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v3, 0x7f080254

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 299
    .local v2, "deleteYesButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;

    invoke-direct {v3, p0, v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$2;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method
