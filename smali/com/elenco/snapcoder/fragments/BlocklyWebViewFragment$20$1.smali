.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20$1;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20$1;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20$1;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$400(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1052
    return-void
.end method
