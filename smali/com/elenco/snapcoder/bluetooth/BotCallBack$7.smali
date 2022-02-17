.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$setDisabledTable:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;->val$setDisabledTable:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 380
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f0801e9

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 381
    .local v10, "singleBotDash":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f080187

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 382
    .local v5, "multiBotDash":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f080193

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 383
    .local v8, "noBotsLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f0800d2

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 384
    .local v2, "disabledLayout":Landroid/widget/HorizontalScrollView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f0800c4

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 386
    .local v7, "nameText":Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 394
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 395
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;

    move-result-object v1

    .line 397
    .local v1, "connectedBay":Lcom/elenco/snapcoder/ConnectedBay;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1, v11}, Lcom/elenco/snapcoder/ConnectedBay;->addBotToBay(Lcom/elenco/snapcoder/model/Bot;)V

    .line 398
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "address2":Ljava/lang/String;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f0800d3

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 402
    .local v3, "disabledTable":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 403
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 404
    move v9, v4

    .line 405
    .local v9, "position":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    new-instance v12, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;

    invoke-direct {v12, p0, v9}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;I)V

    invoke-virtual {v11, v12}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    .end local v9    # "position":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "address2":Ljava/lang/String;
    .end local v1    # "connectedBay":Lcom/elenco/snapcoder/ConnectedBay;
    .end local v3    # "disabledTable":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "name":Ljava/lang/String;
    const-string v11, "foo"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 417
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 418
    :cond_2
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v12

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->setBotImage(Ljava/lang/String;)V

    .line 433
    return-void

    .line 420
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :cond_4
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_6

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 425
    :cond_5
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 427
    :cond_6
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
