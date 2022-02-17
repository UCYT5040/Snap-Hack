.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->sendSaveData(Ljava/lang/String;)V
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
    .line 401
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->saveData(Ljava/lang/String;ZLjava/lang/String;)V

    .line 405
    return-void
.end method
