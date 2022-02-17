.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->sendLoadSaveData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;->this$1:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;->val$code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->saveData(Ljava/lang/String;ZLjava/lang/String;)V

    .line 449
    return-void
.end method
