.class public Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;
.super Landroid/support/v4/app/Fragment;
.source "FlyOutMenuLandscape.java"


# instance fields
.field flyOutMenuBlank:Landroid/widget/RelativeLayout;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OpenMyBotsMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 136
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 138
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "myBots"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 140
    new-instance v1, Lcom/elenco/snapcoder/fragments/MyBots;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/MyBots;-><init>()V

    .line 141
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 142
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "myBots"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 146
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 162
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method checkIfLandcscape()V
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->checkIfLandscape()V

    .line 348
    return-void
.end method

.method public closeAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 248
    :goto_1
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeBotCode(Z)V

    .line 251
    return-void

    .line 217
    :pswitch_0
    const-string v2, "Drive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 246
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeBotCode(Z)V

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x3f3a96a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method closeBlockly()V
    .locals 6

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 322
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "blockly"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 323
    .local v0, "blocklyFragment":Landroid/support/v4/app/Fragment;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 325
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 340
    return-void
.end method

.method closeBotCode(Z)V
    .locals 6
    .param p1, "toControlScreen"    # Z

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "botCODE"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 278
    .local v0, "botCode":Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->setRequestedOrientation(I)V

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 282
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 283
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;

    invoke-direct {v2, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Z)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 314
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method closeConnect()V
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->closeConnectScreen()V

    .line 318
    return-void
.end method

.method closeMenusBotCode(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clearCode"    # Z

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 213
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getbot_code_fragment()Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->closeMenusBotCode(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 214
    return-void
.end method

.method closeMyBots()V
    .locals 6

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 255
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "myBots"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 256
    .local v1, "myBots":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 257
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 259
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 274
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public getFlyOutMenuBlank()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 32
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v6, 0x7f0a0035

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    .line 38
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f080056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 39
    .local v1, "botCODEButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$1;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f08018a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 47
    .local v5, "myBotsButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 56
    .local v3, "driveButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 65
    .local v2, "connectButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$4;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$4;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 75
    .local v0, "blocklyButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$5;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$5;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f080147

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 84
    .local v4, "infoButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$6;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$6;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    const v7, 0x7f0800f5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 94
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 95
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 97
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$7;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$7;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->view:Landroid/view/View;

    return-object v6
.end method

.method public openBlockly(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 165
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 167
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "blockly"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 168
    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;-><init>()V

    .line 169
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 170
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "blockly"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 173
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 174
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$10;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$10;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 189
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public openBotCODE(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 108
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;-><init>()V

    .line 110
    .local v0, "botCodeFragment":Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "botCODE"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 113
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "botCODE"

    invoke-virtual {v1, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 114
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/MainScreen;->setRequestedOrientation(I)V

    .line 116
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 117
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 133
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public openInfo(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 193
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/MainScreen;->startInfoActivity()V

    .line 195
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 196
    .local v0, "exTimer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 208
    return-void
.end method
