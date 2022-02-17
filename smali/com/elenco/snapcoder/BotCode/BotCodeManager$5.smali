.class final Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;
.super Ljava/util/TimerTask;
.source "BotCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager;->runCommandList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/BotCommand;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v12, -0x4b

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 638
    sget-object v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-static {v6, v9}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->access$100(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    .line 640
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, "beginningOfIf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 642
    const/4 v0, 0x1

    .line 643
    .local v0, "allSkipped":Z
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    .line 644
    .local v1, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getExecuteCommand()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 645
    const/4 v5, 0x0

    .line 646
    .local v5, "trueStatement":Z
    invoke-virtual {v1, v8}, Lcom/elenco/snapcoder/model/Bot;->setRSSI(I)V

    .line 647
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->checkRSSI()V

    .line 649
    :goto_1
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getRSSI()I

    move-result v9

    if-ltz v9, :cond_1

    .line 650
    const-string v9, "MYTAG"

    const-string v10, "ZERO"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 653
    :cond_1
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getRSSI()I

    move-result v9

    const/16 v10, -0x1e

    if-ge v9, v10, :cond_3

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getRSSI()I

    move-result v9

    if-le v9, v12, :cond_3

    .line 654
    const/4 v5, 0x1

    .line 659
    :cond_2
    :goto_2
    if-nez v5, :cond_4

    .line 660
    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v9}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v10

    long-to-int v9, v10

    add-int/lit8 v9, v9, -0x2

    invoke-static {v9, v1}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skipCode(ILcom/elenco/snapcoder/model/Bot;)V

    goto :goto_0

    .line 655
    :cond_3
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getRSSI()I

    move-result v9

    if-gt v9, v12, :cond_2

    .line 656
    const/4 v5, 0x0

    goto :goto_2

    .line 662
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v5    # "trueStatement":Z
    :cond_5
    if-eqz v0, :cond_6

    .line 667
    sput-boolean v7, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skip:Z

    .line 671
    .end local v0    # "allSkipped":Z
    :cond_6
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, "endOfIf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 672
    const/4 v0, 0x1

    .line 673
    .restart local v0    # "allSkipped":Z
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    .line 674
    .restart local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getExecuteCommand()Z

    move-result v9

    if-nez v9, :cond_7

    .line 675
    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v9}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    sub-long/2addr v10, v12

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getEndIfIndex()I

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-nez v9, :cond_7

    .line 676
    invoke-virtual {v1, v7}, Lcom/elenco/snapcoder/model/Bot;->setExecuteCommand(Z)V

    .line 677
    const/4 v0, 0x0

    goto :goto_3

    .line 681
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_8
    if-eqz v0, :cond_d

    .line 682
    sput-boolean v7, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skip:Z

    .line 688
    .end local v0    # "allSkipped":Z
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, "endOfLoop"

    if-eq v6, v9, :cond_14

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, "beginningOfLoop"

    if-eq v6, v9, :cond_14

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 689
    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, "endOfIf"

    if-eq v6, v9, :cond_14

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    if-eq v6, v9, :cond_14

    .line 690
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v4

    .line 692
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    .line 693
    .restart local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 694
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v10

    const/4 v6, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_b
    :goto_6
    packed-switch v6, :pswitch_data_0

    goto :goto_5

    .line 696
    :pswitch_0
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentX:I

    if-nez v6, :cond_c

    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentY:I

    if-eqz v6, :cond_a

    .line 697
    :cond_c
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentX:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentX(I)V

    .line 698
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentY:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentY(I)V

    .line 699
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueBearing:F

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setBearing(F)V

    goto :goto_5

    .line 684
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v0    # "allSkipped":Z
    :cond_d
    sput-boolean v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skip:Z

    goto :goto_4

    .line 694
    .end local v0    # "allSkipped":Z
    .restart local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .restart local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    :sswitch_0
    const-string v11, "Blue"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v6, v8

    goto :goto_6

    :sswitch_1
    const-string v11, "Green"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v6, v7

    goto :goto_6

    :sswitch_2
    const-string v11, "Orange"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v6, 0x2

    goto :goto_6

    :sswitch_3
    const-string v11, "Yellow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v6, 0x3

    goto :goto_6

    .line 703
    :pswitch_1
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentX:I

    if-nez v6, :cond_e

    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentY:I

    if-eqz v6, :cond_a

    .line 704
    :cond_e
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentX:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentX(I)V

    .line 705
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentY:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentY(I)V

    .line 706
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenBearing:F

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setBearing(F)V

    goto :goto_5

    .line 710
    :pswitch_2
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentX:I

    if-nez v6, :cond_f

    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentY:I

    if-eqz v6, :cond_a

    .line 711
    :cond_f
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentX:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentX(I)V

    .line 712
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentY:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentY(I)V

    .line 713
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeBearing:F

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setBearing(F)V

    goto/16 :goto_5

    .line 717
    :pswitch_3
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentX:I

    if-nez v6, :cond_10

    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentY:I

    if-eqz v6, :cond_a

    .line 718
    :cond_10
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentX:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentX(I)V

    .line 719
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentY:I

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setCurrentY(I)V

    .line 720
    sget v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowBearing:F

    invoke-virtual {v1, v6}, Lcom/elenco/snapcoder/model/Bot;->setBearing(F)V

    goto/16 :goto_5

    .line 727
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_11
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "motorCommand"

    if-eq v6, v7, :cond_13

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "circuitCommand"

    if-eq v6, v7, :cond_13

    .line 728
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    .line 729
    .restart local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-nez v6, :cond_12

    .line 730
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 731
    .local v3, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 732
    .local v2, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 733
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v7

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    add-int/2addr v7, v10

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTimeDriven(I)V

    .line 734
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v3, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    .line 736
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_12

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-ne v7, v6, :cond_12

    .line 737
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    new-instance v7, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;

    invoke-direct {v7, p0, v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;-><init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 748
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v3    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_13
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->val$botCommandFinal:Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->executeBotCommand()V

    .line 750
    .end local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    :cond_14
    return-void

    .line 694
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72bcedb2 -> :sswitch_2
        -0x625eaf6c -> :sswitch_3
        0x1fa47a -> :sswitch_0
        0x41ddee3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
