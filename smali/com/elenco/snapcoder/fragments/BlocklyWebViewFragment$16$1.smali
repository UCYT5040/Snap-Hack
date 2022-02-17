.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;
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
    .line 291
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;->val$areYouSureHolder:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16$1;->val$areYouSureHolder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    return-void
.end method
