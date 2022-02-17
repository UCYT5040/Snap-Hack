.class public Lcom/elenco/snapcoder/fragments/FlyOutMenu;
.super Landroid/support/v4/app/Fragment;
.source "FlyOutMenu.java"


# instance fields
.field flyOutMenuBlank:Landroid/widget/RelativeLayout;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OpenMyBotsMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "myBots"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 134
    new-instance v1, Lcom/elenco/snapcoder/fragments/MyBots;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/MyBots;-><init>()V

    .line 135
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 136
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "myBots"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 140
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 156
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenus(Landroid/view/View;)V

    goto :goto_0
.end method

.method public closeAll(Ljava/lang/String;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_1
    return-void

    .line 220
    :sswitch_0
    const-string v1, "MyBots"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "BotCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "Connect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Drive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "blockly"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "tutorial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 222
    :pswitch_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V

    .line 223
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeConnect()V

    .line 224
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V

    .line 225
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeTutorial()V

    goto :goto_1

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMyBots()V

    .line 229
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeConnect()V

    .line 230
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V

    .line 231
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeTutorial()V

    goto :goto_1

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMyBots()V

    .line 235
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V

    .line 236
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V

    .line 237
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeTutorial()V

    goto :goto_1

    .line 240
    :pswitch_3
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMyBots()V

    .line 241
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V

    .line 242
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeConnect()V

    .line 243
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V

    .line 244
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeTutorial()V

    goto :goto_1

    .line 247
    :pswitch_4
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMyBots()V

    .line 248
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V

    .line 249
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeConnect()V

    .line 250
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeTutorial()V

    goto :goto_1

    .line 253
    :pswitch_5
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMyBots()V

    .line 254
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V

    .line 255
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeConnect()V

    .line 256
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V

    goto/16 :goto_1

    .line 220
    :sswitch_data_0
    .sparse-switch
        -0x75d20c88 -> :sswitch_0
        -0x6412ef36 -> :sswitch_2
        -0x1471d26 -> :sswitch_4
        0x3f3a96a -> :sswitch_3
        0xb852b5e -> :sswitch_5
        0x6747fc34 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method closeBlockly()V
    .locals 6

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 321
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "blockly"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 322
    .local v0, "blocklyFragment":Landroid/support/v4/app/Fragment;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 324
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 339
    return-void
.end method

.method closeBotCode()V
    .locals 6

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "botCODE"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 286
    .local v0, "botCode":Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->setRequestedOrientation(I)V

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 290
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 291
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 313
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method closeConnect()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->closeConnectScreen()V

    .line 317
    return-void
.end method

.method closeMenus(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 206
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/MainScreen;->closeMenus(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method closeMenusLandscape()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 211
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->closeMenuBotCode()V

    .line 212
    return-void
.end method

.method closeMyBots()V
    .locals 6

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 263
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "myBots"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 264
    .local v1, "myBots":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 265
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 267
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$11;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 282
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method closeTutorial()V
    .locals 6

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 343
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "tutorial"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 344
    .local v2, "tutorialFragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 346
    .local v1, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$14;

    invoke-direct {v3, p0, v2, v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$14;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 361
    return-void
.end method

.method public getFlyOutMenuBlank()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 36
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setFlyOutMenu(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    .line 40
    const v6, 0x7f0a0034

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    .line 42
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f080056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 43
    .local v1, "botCODEButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$1;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f08018a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 51
    .local v5, "myBotsButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$2;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$2;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 59
    .local v3, "driveButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$3;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$3;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 68
    .local v2, "connectButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$4;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$4;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 78
    .local v0, "blocklyButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$5;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$5;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f080147

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 86
    .local v4, "infoButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenu$6;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$6;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    const v7, 0x7f0800f5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 95
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 96
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 98
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->view:Landroid/view/View;

    return-object v6
.end method

.method public openBlockly(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 161
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "blockly"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 162
    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;-><init>()V

    .line 163
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 164
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "blockly"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 167
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 168
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$9;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$9;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 183
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenus(Landroid/view/View;)V

    goto :goto_0
.end method

.method public openBotCODE(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;-><init>()V

    .line 104
    .local v0, "botCodeFragment":Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "botCODE"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 107
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "botCODE"

    invoke-virtual {v1, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 108
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenusLandscape()V

    .line 109
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/MainScreen;->setRequestedOrientation(I)V

    .line 111
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 112
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 128
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenus(Landroid/view/View;)V

    goto :goto_0
.end method

.method public openInfo(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 187
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/MainScreen;->startInfoActivity()V

    .line 189
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 190
    .local v0, "exTimer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$10;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$10;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 202
    return-void
.end method
