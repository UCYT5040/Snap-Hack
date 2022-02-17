.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$4;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->getAutosaveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$4;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$4;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->autoLoad()V

    .line 426
    return-void
.end method
