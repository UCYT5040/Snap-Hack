.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;
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

.field final synthetic val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/BotCode/BotCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 887
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v3

    .line 889
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 890
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v4

    if-nez v4, :cond_0

    .line 891
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 892
    .local v2, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 893
    .local v1, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 894
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v5

    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTimeDriven(I)V

    .line 895
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v2, v4}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    .line 897
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne v5, v4, :cond_0

    .line 898
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    new-instance v5, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19$1;

    invoke-direct {v5, p0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19$1;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 908
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v1    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v2    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_1
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->executeBotCommand()V

    .line 909
    return-void
.end method
