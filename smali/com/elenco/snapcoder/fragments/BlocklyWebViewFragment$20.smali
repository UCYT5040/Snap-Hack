.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;
.super Ljava/util/TimerTask;
.source "BlocklyWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->runCommandList()V
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
    .line 1038
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1041
    invoke-static {}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1044
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->alwaysRepeatCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1045
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$200(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    .line 1059
    :cond_0
    return-void

    .line 1047
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->access$302(Z)Z

    .line 1048
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    new-instance v2, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20$1;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20$1;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;)V

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1055
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 1056
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    const-string v2, "clear"

    invoke-virtual {v0, v2, v3, v3}, Lcom/elenco/snapcoder/model/Bot;->stopMotorCircuit(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
