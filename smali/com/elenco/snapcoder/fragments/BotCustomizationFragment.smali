.class public Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;
.super Landroid/support/v4/app/Fragment;
.source "BotCustomizationFragment.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field private doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

.field private doNotShowRepo:Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 46
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShowRepo:Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    return-object v0
.end method


# virtual methods
.method public ClearBotColors(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x3f19999a    # 0.6f

    .line 432
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f0801bd

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 433
    .local v2, "redSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f08003f

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 434
    .local v0, "blueSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f080100

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 435
    .local v1, "greenSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f080252

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 437
    .local v3, "yellowSnap":Landroid/widget/ImageButton;
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 438
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 439
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 440
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 441
    return-void
.end method

.method public CloseBotCustomization()V
    .locals 8

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 495
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "BotCustomization"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 496
    .local v0, "BotCustomization":Landroid/support/v4/app/Fragment;
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 498
    .local v3, "timer":Ljava/util/Timer;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f08005e

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 501
    .local v1, "botCustomizationLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$10;

    invoke-direct {v4, p0, v0, v2}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$10;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 516
    return-void
.end method

.method public OpenBotCustomization(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 444
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    const v9, 0x7f0801f0

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 446
    .local v5, "snapNameText":Landroid/widget/EditText;
    new-instance v8, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$9;

    invoke-direct {v8, p0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$9;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 455
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    const v9, 0x7f0801bd

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 456
    .local v4, "redSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    const v9, 0x7f08003f

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 457
    .local v0, "blueSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    const v9, 0x7f080100

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 458
    .local v2, "greenSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    const v9, 0x7f080252

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 460
    .local v6, "yellowSnap":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    invoke-virtual {v8}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MyPref"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 467
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    iget-object v8, v8, Lcom/elenco/snapcoder/MainScreen;->nameOfBotToBeCustomized:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->ClearBotColors(Landroid/view/View;)V

    .line 471
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    iget-object v9, v8, Lcom/elenco/snapcoder/MainScreen;->colorOfBotToBeCustomized:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v7, v8

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 486
    :goto_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v7

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    iget-object v8, v8, Lcom/elenco/snapcoder/MainScreen;->colorOfBotToBeCustomized:Ljava/lang/String;

    iput-object v8, v7, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    .line 488
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v7

    const v8, 0x7f08005e

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 489
    .local v1, "botCustomizationLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 491
    return-void

    .line 471
    .end local v1    # "botCustomizationLayout":Landroid/widget/RelativeLayout;
    :sswitch_0
    const-string v10, "Green"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v7, "Blue"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "Yellow"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "Red"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    .line 473
    :pswitch_0
    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 476
    :pswitch_1
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 479
    :pswitch_2
    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 482
    :pswitch_3
    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_1

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        -0x625eaf6c -> :sswitch_2
        0x14071 -> :sswitch_3
        0x1fa47a -> :sswitch_1
        0x41ddee3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SaveName()V
    .locals 25

    .prologue
    .line 180
    const/16 v19, 0x0

    .line 181
    .local v19, "savedBotIndex":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    const v23, 0x7f0801f0

    invoke-virtual/range {v22 .. v23}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    .line 182
    .local v20, "snapNameText":Landroid/widget/EditText;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/text/Editable;->length()I

    move-result v22

    if-eqz v22, :cond_f

    .line 184
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v12, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    new-instance v10, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v10}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 187
    .local v10, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v8, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v8}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 189
    .local v8, "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_e

    .line 191
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->addressOfBotToBeCustomized:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 193
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 195
    .local v9, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_0

    .line 196
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    check-cast v8, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 199
    .restart local v8    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_0
    move/from16 v19, v15

    .line 200
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    const v23, 0x7f0800b4

    invoke-virtual/range {v22 .. v23}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/ConnectedBay;

    .line 202
    .local v13, "connectedBotsBay":Lcom/elenco/snapcoder/ConnectedBay;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 203
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 204
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 205
    move/from16 v19, v17

    .line 209
    :cond_1
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 211
    .local v5, "bot":Landroid/widget/TableRow;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 212
    .local v7, "botRowView":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    .line 213
    .local v3, "BotColor":Ljava/lang/String;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "layout_inflater"

    .line 214
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 216
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const v22, 0x7f08005f

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 218
    .local v4, "BotFrame":Landroid/widget/ImageView;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 220
    const-string v11, "foo"

    .line 222
    .local v11, "color":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v22, :pswitch_data_0

    .line 240
    const v22, 0x7f0700b4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    const-string v11, "Blue"

    .line 246
    :goto_3
    const v22, 0x7f080062

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 247
    .local v6, "botName":Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/Bot;->setChangedName(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreen()V

    .line 259
    const-string v22, "MYTAG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Multibot Saving color: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v8, v11}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 263
    .local v21, "version":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 273
    :cond_3
    :goto_4
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/model/Bot;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/model/Bot;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v10, v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    .line 189
    .end local v3    # "BotColor":Ljava/lang/String;
    .end local v4    # "BotFrame":Landroid/widget/ImageView;
    .end local v5    # "bot":Landroid/widget/TableRow;
    .end local v6    # "botName":Landroid/widget/TextView;
    .end local v7    # "botRowView":Landroid/widget/LinearLayout;
    .end local v9    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v11    # "color":Ljava/lang/String;
    .end local v13    # "connectedBotsBay":Lcom/elenco/snapcoder/ConnectedBay;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "j":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :cond_4
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 203
    .restart local v9    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .restart local v13    # "connectedBotsBay":Lcom/elenco/snapcoder/ConnectedBay;
    .restart local v17    # "j":I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 222
    .restart local v3    # "BotColor":Ljava/lang/String;
    .restart local v4    # "BotFrame":Landroid/widget/ImageView;
    .restart local v5    # "bot":Landroid/widget/TableRow;
    .restart local v7    # "botRowView":Landroid/widget/LinearLayout;
    .restart local v11    # "color":Ljava/lang/String;
    .restart local v16    # "inflater":Landroid/view/LayoutInflater;
    :sswitch_0
    const-string v23, "Red"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v22, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v23, "Blue"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v22, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v23, "Green"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v22, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v23, "Yellow"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v22, 0x3

    goto/16 :goto_2

    .line 224
    :pswitch_0
    const v22, 0x7f0700f2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    const-string v11, "Red"

    .line 226
    goto/16 :goto_3

    .line 228
    :pswitch_1
    const v22, 0x7f0700b4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    const-string v11, "Blue"

    .line 230
    goto/16 :goto_3

    .line 232
    :pswitch_2
    const v22, 0x7f0700de

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    const-string v11, "Green"

    .line 234
    goto/16 :goto_3

    .line 236
    :pswitch_3
    const v22, 0x7f070115

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    const-string v11, "Yellow"

    .line 238
    goto/16 :goto_3

    .line 265
    .restart local v6    # "botName":Landroid/widget/TextView;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v21    # "version":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 268
    :cond_7
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    .line 269
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 277
    .end local v3    # "BotColor":Ljava/lang/String;
    .end local v4    # "BotFrame":Landroid/widget/ImageView;
    .end local v5    # "bot":Landroid/widget/TableRow;
    .end local v6    # "botName":Landroid/widget/TextView;
    .end local v7    # "botRowView":Landroid/widget/LinearLayout;
    .end local v11    # "color":Ljava/lang/String;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "j":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 279
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    const v23, 0x7f0800c3

    invoke-virtual/range {v22 .. v23}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 281
    .restart local v4    # "BotFrame":Landroid/widget/ImageView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    .line 282
    .restart local v3    # "BotColor":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 284
    const-string v11, "foo"

    .line 286
    .restart local v11    # "color":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    :cond_9
    :goto_6
    packed-switch v22, :pswitch_data_1

    .line 304
    const v22, 0x7f0700b4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    const-string v11, "Blue"

    .line 309
    :goto_7
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    const v23, 0x7f0800c4

    invoke-virtual/range {v22 .. v23}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 310
    .restart local v6    # "botName":Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 316
    .restart local v18    # "name":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/Bot;->setChangedName(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreen()V

    .line 322
    invoke-virtual {v8, v11}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 324
    const-string v22, "MYTAG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Single bot saving color: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 327
    .restart local v21    # "version":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 339
    :cond_a
    :goto_8
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/model/Bot;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/model/Bot;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v10, v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    goto/16 :goto_5

    .line 286
    .end local v6    # "botName":Landroid/widget/TextView;
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :sswitch_4
    const-string v23, "Red"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v22, 0x0

    goto/16 :goto_6

    :sswitch_5
    const-string v23, "Blue"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v22, 0x1

    goto/16 :goto_6

    :sswitch_6
    const-string v23, "Green"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v22, 0x2

    goto/16 :goto_6

    :sswitch_7
    const-string v23, "Yellow"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v22, 0x3

    goto/16 :goto_6

    .line 288
    :pswitch_4
    const v22, 0x7f0700f2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    const-string v11, "Red"

    .line 290
    goto/16 :goto_7

    .line 292
    :pswitch_5
    const v22, 0x7f0700b4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    const-string v11, "Blue"

    .line 294
    goto/16 :goto_7

    .line 296
    :pswitch_6
    const v22, 0x7f0700de

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    const-string v11, "Green"

    .line 298
    goto/16 :goto_7

    .line 300
    :pswitch_7
    const v22, 0x7f070115

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    const-string v11, "Yellow"

    .line 302
    goto/16 :goto_7

    .line 329
    .restart local v6    # "botName":Landroid/widget/TextView;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v21    # "version":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_8

    .line 331
    :cond_c
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    .line 332
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_8

    .line 334
    :cond_d
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v22 .. v22}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_8

    .line 393
    .end local v3    # "BotColor":Ljava/lang/String;
    .end local v4    # "BotFrame":Landroid/widget/ImageView;
    .end local v6    # "botName":Landroid/widget/TextView;
    .end local v9    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v11    # "color":Ljava/lang/String;
    .end local v13    # "connectedBotsBay":Lcom/elenco/snapcoder/ConnectedBay;
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreenAfterCustomization(Ljava/lang/String;I)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->CloseBotCustomization()V

    .line 402
    .end local v8    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v10    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v12    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v15    # "i":I
    :goto_9
    return-void

    .line 399
    :cond_f
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v22

    const-string v23, "SC Controller name must be between 1 and 8 characters."

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 400
    .local v14, "emptyBotNameToast":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 222
    :sswitch_data_0
    .sparse-switch
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_0
        0x1fa47a -> :sswitch_1
        0x41ddee3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 286
    :sswitch_data_1
    .sparse-switch
        -0x625eaf6c -> :sswitch_7
        0x14071 -> :sswitch_4
        0x1fa47a -> :sswitch_5
        0x41ddee3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public SetColor(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->ClearBotColors(Landroid/view/View;)V

    .line 408
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 427
    :goto_0
    const-string v0, "MYTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pressed color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 412
    :sswitch_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const-string v1, "Blue"

    iput-object v1, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    goto :goto_0

    .line 415
    :sswitch_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const-string v1, "Green"

    iput-object v1, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const-string v1, "Red"

    iput-object v1, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    goto :goto_0

    .line 421
    :sswitch_3
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const-string v1, "Yellow"

    iput-object v1, v0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    goto :goto_0

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x7f08003f -> :sswitch_0
        0x7f080100 -> :sswitch_1
        0x7f0801bd -> :sswitch_2
        0x7f080252 -> :sswitch_3
    .end sparse-switch
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 519
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 520
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 521
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v18, 0x7f0a0021

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    .line 54
    invoke-static/range {p0 .. p0}, Lcom/elenco/snapcoder/UIManager;->setBotCustomizationFragment(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08003f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 57
    .local v4, "blueSnapButton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0801bd

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 64
    .local v12, "redSnapButton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$2;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080100

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 71
    .local v9, "greenSnapButton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$3;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080252

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .line 78
    .local v17, "yellowSnapButton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/ImageButton;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800be

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 86
    .local v5, "closeBotCustomization":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$5;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800bd

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 93
    .local v13, "saveBotCusomization":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$6;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/16 v16, 0x1

    .line 102
    .local v16, "showInstructions":Z
    new-instance v18, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    invoke-direct/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShowRepo:Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    .line 103
    new-instance v18, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    invoke-direct/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShowRepo:Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;->getDoNotShowList()Ljava/util/List;

    move-result-object v7

    .line 107
    .local v7, "doNotShowList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;>;"
    const/4 v8, 0x0

    .line 109
    .local v8, "foundShowAgain":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    .line 110
    .local v14, "showAgain":Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getLocationName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "BotCustomization"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 111
    const-string v19, "MYTAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "first check: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getLocationName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getShowAgain()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getDoNotShowId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    .line 113
    const/4 v8, 0x1

    .line 114
    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getShowAgain()Ljava/lang/String;

    move-result-object v19

    const-string v20, "True"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 115
    const-string v19, "MYTAG"

    const-string v20, "Found and True"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v16, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const-string v19, "MYTAG"

    const-string v20, "Found and False"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v16, 0x0

    goto :goto_0

    .line 124
    .end local v14    # "showAgain":Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
    :cond_2
    if-nez v8, :cond_3

    .line 125
    const-string v18, "MYTAG"

    const-string v19, "DIDNT FIND"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-object/from16 v18, v0

    const-string v19, "BotCustomization"

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->setLocationName(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-object/from16 v18, v0

    const-string v19, "True"

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->setShowAgain(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShowRepo:Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->doNotShow:Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;)J

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800d7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 132
    .local v15, "showAgainCheckbox":Landroid/widget/CheckBox;
    if-nez v16, :cond_5

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08014a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 135
    .local v11, "instructionView":Landroid/widget/RelativeLayout;
    if-eqz v16, :cond_4

    .line 136
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0800b1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 140
    .local v6, "confirmbutton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v15}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080147

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 163
    .local v10, "infoButton":Landroid/widget/ImageButton;
    new-instance v18, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;-><init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    move-object/from16 v18, v0

    return-object v18

    .line 132
    .end local v6    # "confirmbutton":Landroid/widget/ImageButton;
    .end local v10    # "infoButton":Landroid/widget/ImageButton;
    .end local v11    # "instructionView":Landroid/widget/RelativeLayout;
    :cond_5
    const/16 v18, 0x0

    goto :goto_1
.end method
