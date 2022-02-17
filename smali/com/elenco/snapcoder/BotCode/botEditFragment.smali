.class public Lcom/elenco/snapcoder/BotCode/botEditFragment;
.super Landroid/support/v4/app/Fragment;
.source "botEditFragment.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field affectedBotsIndex:I

.field fastSpeed:Landroid/widget/FrameLayout;

.field highSpeedButton:Landroid/widget/Button;

.field highSpeedImage:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field private listOfAffectedBotsLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;>;"
        }
    .end annotation
.end field

.field lowSpeedButton:Landroid/widget/Button;

.field lowSpeedImage:Landroid/widget/ImageView;

.field mediumSpeed:Landroid/widget/FrameLayout;

.field selectedBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field setCommandId:I

.field slowSpeed:Landroid/widget/FrameLayout;

.field speedSelected:Ljava/lang/String;

.field speedShifter:Landroid/widget/ImageView;

.field speedToggle:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 40
    const-string v0, "Fast"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 54
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->CIRCUIT_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->closeMe()V

    return-void
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/BotCode/botEditFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeMe()V
    .locals 4

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 706
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "botEditSelection"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 707
    .local v0, "botEditFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 710
    :cond_0
    return-void
.end method


# virtual methods
.method BotChosen(Landroid/widget/ImageButton;)V
    .locals 14
    .param p1, "botChosen"    # Landroid/widget/ImageButton;

    .prologue
    const/4 v10, 0x4

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 255
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_5

    .line 259
    invoke-virtual {p1, v13}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 265
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f0800e0

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 266
    .local v3, "firstRowBots":Landroid/widget/TableRow;
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f0800e1

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 269
    .local v5, "secondRowBots":Landroid/widget/TableRow;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_7

    .line 271
    new-instance v2, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 274
    .local v2, "botImageButton":Landroid/widget/ImageButton;
    packed-switch v4, :pswitch_data_0

    .line 309
    :goto_2
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v13

    if-nez v7, :cond_4

    .line 310
    new-instance v6, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v6}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 311
    .local v6, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v7, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 345
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 346
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    if-ge v4, v10, :cond_6

    .line 347
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-ne v11, v12, :cond_2

    .line 348
    move-object v6, v0

    .line 360
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v6    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 261
    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    .end local v3    # "firstRowBots":Landroid/widget/TableRow;
    .end local v4    # "i":I
    .end local v5    # "secondRowBots":Landroid/widget/TableRow;
    :cond_5
    const v7, 0x3f333333    # 0.7f

    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 276
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    .restart local v3    # "firstRowBots":Landroid/widget/TableRow;
    .restart local v4    # "i":I
    .restart local v5    # "secondRowBots":Landroid/widget/TableRow;
    :pswitch_0
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f080045

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 277
    .local v1, "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 278
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto :goto_2

    .line 280
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_1
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f080047

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 281
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 282
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto :goto_2

    .line 284
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_2
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f080049

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 285
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 286
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 288
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_3
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f08004b

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 289
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 290
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 292
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_4
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f08004d

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 293
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 294
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 296
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_5
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f08004f

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 297
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 298
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 300
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_6
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f080051

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 301
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 302
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 304
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    :pswitch_7
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v11, 0x7f080053

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 305
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 311
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    .restart local v6    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :sswitch_0
    const-string v12, "BlueVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v8

    goto/16 :goto_3

    :sswitch_1
    const-string v12, "RedVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v9

    goto/16 :goto_3

    :sswitch_2
    const-string v12, "PinkVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string v12, "PurpleVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string v12, "GreenVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v7, v10

    goto/16 :goto_3

    :sswitch_5
    const-string v12, "OrangeVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x5

    goto/16 :goto_3

    :sswitch_6
    const-string v12, "YellowVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x6

    goto/16 :goto_3

    :sswitch_7
    const-string v12, "TealVirtual"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x7

    goto/16 :goto_3

    .line 313
    :pswitch_8
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 314
    const-string v7, "Blue"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 317
    :pswitch_9
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 318
    const-string v7, "Red"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 321
    :pswitch_a
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 322
    const-string v7, "Pink"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 325
    :pswitch_b
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 326
    const-string v7, "Purple"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 329
    :pswitch_c
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 330
    const-string v7, "Green"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 333
    :pswitch_d
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 334
    const-string v7, "Orange"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 337
    :pswitch_e
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 338
    const-string v7, "Yellow"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 341
    :pswitch_f
    invoke-virtual {v6, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 342
    const-string v7, "Teal"

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 352
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_6
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v4, -0x4

    invoke-virtual {v5, v12}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-ne v11, v12, :cond_2

    .line 353
    move-object v6, v0

    .line 354
    goto/16 :goto_4

    .line 363
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    .end local v6    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_7
    return-void

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 311
    :sswitch_data_0
    .sparse-switch
        -0x73ddef23 -> :sswitch_5
        -0x4fef0acf -> :sswitch_0
        -0x440d0311 -> :sswitch_7
        -0x2e82baa6 -> :sswitch_1
        -0x198ba829 -> :sswitch_6
        0x42d2f38f -> :sswitch_3
        0x591e6c95 -> :sswitch_2
        0x71d8e2a8 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public DisplayInformation(IILandroid/widget/ImageView;)V
    .locals 5
    .param p1, "commandID"    # I
    .param p2, "listOfAffectedBotsIndex"    # I
    .param p3, "speedImage"    # Landroid/widget/ImageView;

    .prologue
    .line 494
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->setCommandId:I

    .line 496
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 497
    .local v0, "commandDisplay":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 498
    .local v1, "commandInfo":Lcom/elenco/snapcoder/AutoResizeTextView;
    packed-switch p1, :pswitch_data_0

    .line 565
    :goto_0
    iput p2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    .line 567
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->LoadInBots()V

    .line 569
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const v4, 0x7f0700e0

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 570
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedToggle:Landroid/widget/ImageView;

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    const-string v2, "Fast"

    iput-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 576
    :goto_1
    return-void

    .line 500
    :pswitch_0
    const v2, 0x7f07010c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    const-string v2, "Turns bot left 90 degrees by powering only the right wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 504
    :pswitch_1
    const v2, 0x7f070109

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    const-string v2, "Turns bot left 180 degrees by powering only the right wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :pswitch_2
    const v2, 0x7f07010a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    const-string v2, "Turns bot left 270 degrees by powering only the right wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :pswitch_3
    const v2, 0x7f07010b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    const-string v2, "Turns bot left 360 degrees by powering only the right wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :pswitch_4
    const v2, 0x7f070111

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    const-string v2, "Turns bot right 90 degrees by powering only the left wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :pswitch_5
    const v2, 0x7f07010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    const-string v2, "Turns bot right 180 degrees by powering only the left wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 524
    :pswitch_6
    const v2, 0x7f07010f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    const-string v2, "Turns bot right 270 degrees by powering only the left wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 528
    :pswitch_7
    const v2, 0x7f070110

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    const-string v2, "Turns bot right 360 degrees by powering only the left wheel"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 532
    :pswitch_8
    const v2, 0x7f0700fe

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    const-string v2, "Spins bot left 90 degrees by powering the right wheel forward and left wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 536
    :pswitch_9
    const v2, 0x7f0700fb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    const-string v2, "Turns bot left 180 degrees by powering the right wheel forward and left wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 540
    :pswitch_a
    const v2, 0x7f0700fc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    const-string v2, "Turns bot left 270 degrees by powering the right wheel forward and left wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 544
    :pswitch_b
    const v2, 0x7f0700fd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    const-string v2, "Turns bot left 360 degrees by powering the right wheel forward and left wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 548
    :pswitch_c
    const v2, 0x7f070103

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    const-string v2, "Turns bot right 90 degrees by powering the left wheel forward and right wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 552
    :pswitch_d
    const v2, 0x7f070100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    const-string v2, "Turns bot right 180 degrees by powering the left wheel forward and right wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 556
    :pswitch_e
    const v2, 0x7f070101

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    const-string v2, "Turns bot right 270 degrees by powering the left wheel forward and right wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 560
    :pswitch_f
    const v2, 0x7f070102

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    const-string v2, "Turns bot right 360 degrees by powering the left wheel forward and right wheel in reverse"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedToggle:Landroid/widget/ImageView;

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    const-string v2, "Slow"

    iput-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    goto/16 :goto_1

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x7f0801ff
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method LoadInBots()V
    .locals 15

    .prologue
    .line 366
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    .line 367
    .local v5, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 368
    const/4 v6, 0x0

    .line 370
    .local v6, "counter":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 372
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    new-instance v2, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 373
    .local v2, "botImageButton":Landroid/widget/ImageButton;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    .local v1, "botHolder":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    .line 376
    .local v4, "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    packed-switch v6, :pswitch_data_0

    .line 402
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 403
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    check-cast v4, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 405
    .restart local v4    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v13

    const/4 v11, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v11, :pswitch_data_1

    .line 419
    :goto_3
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    move-object v3, v2

    .line 422
    .local v3, "botImageClone":Landroid/widget/ImageButton;
    new-instance v11, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;

    invoke-direct {v11, p0, v3}, Lcom/elenco/snapcoder/BotCode/botEditFragment$5;-><init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 431
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x3

    if-le v11, v13, :cond_2

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    :cond_1
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_4
    const v11, 0x3f333333    # 0.7f

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 438
    add-int/lit8 v6, v6, 0x1

    .line 439
    goto/16 :goto_0

    .line 378
    .end local v3    # "botImageClone":Landroid/widget/ImageButton;
    :pswitch_0
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f080045

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 379
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 381
    :pswitch_1
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f080047

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 382
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 384
    :pswitch_2
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f080049

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 385
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 387
    :pswitch_3
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f08004b

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 388
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 390
    :pswitch_4
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f08004d

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 391
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 393
    :pswitch_5
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f08004f

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 394
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 396
    :pswitch_6
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f080051

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 397
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 399
    :pswitch_7
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v13, 0x7f080053

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 405
    :sswitch_0
    const-string v14, "Red"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v11, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v14, "Blue"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v11, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v14, "Green"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v11, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v14, "Yellow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v11, 0x3

    goto/16 :goto_2

    .line 407
    :pswitch_8
    const v11, 0x7f0700a9

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 410
    :pswitch_9
    const v11, 0x7f07005d

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 413
    :pswitch_a
    const v11, 0x7f07008d

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 416
    :pswitch_b
    const v11, 0x7f07012e

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 434
    .restart local v3    # "botImageClone":Landroid/widget/ImageButton;
    :cond_2
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 442
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    .end local v3    # "botImageClone":Landroid/widget/ImageButton;
    .end local v4    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v6    # "counter":I
    :cond_3
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v12, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_a

    .line 443
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v12, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 444
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v12, 0x7f0800e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    .line 445
    .local v7, "firstRowBots":Landroid/widget/TableRow;
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v12, 0x7f0800e1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableRow;

    .line 446
    .local v10, "secondRowBots":Landroid/widget/TableRow;
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v12, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v12

    const/4 v11, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    :cond_4
    :goto_6
    packed-switch v11, :pswitch_data_2

    .line 442
    .end local v7    # "firstRowBots":Landroid/widget/TableRow;
    .end local v10    # "secondRowBots":Landroid/widget/TableRow;
    :cond_5
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 446
    .restart local v7    # "firstRowBots":Landroid/widget/TableRow;
    .restart local v10    # "secondRowBots":Landroid/widget/TableRow;
    :sswitch_4
    const-string v13, "Blue"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x0

    goto :goto_6

    :sswitch_5
    const-string v13, "Green"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x1

    goto :goto_6

    :sswitch_6
    const-string v13, "Orange"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x2

    goto :goto_6

    :sswitch_7
    const-string v13, "Yellow"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x3

    goto :goto_6

    :sswitch_8
    const-string v13, "Red"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x4

    goto :goto_6

    :sswitch_9
    const-string v13, "Purple"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x5

    goto :goto_6

    :sswitch_a
    const-string v13, "Pink"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x6

    goto :goto_6

    :sswitch_b
    const-string v13, "Teal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x7

    goto :goto_6

    .line 448
    :pswitch_c
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    .line 451
    :pswitch_d
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    .line 454
    :pswitch_e
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 457
    :pswitch_f
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 460
    :pswitch_10
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 463
    :pswitch_11
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 466
    :pswitch_12
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 469
    :pswitch_13
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 472
    .end local v7    # "firstRowBots":Landroid/widget/TableRow;
    .end local v10    # "secondRowBots":Landroid/widget/TableRow;
    :cond_6
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v12, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v11

    if-nez v11, :cond_5

    .line 473
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    const/4 v11, 0x4

    if-ge v8, v11, :cond_8

    .line 474
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v12, 0x7f0800e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    .line 475
    .restart local v7    # "firstRowBots":Landroid/widget/TableRow;
    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v13, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    if-ne v12, v11, :cond_7

    .line 476
    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 473
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 480
    .end local v7    # "firstRowBots":Landroid/widget/TableRow;
    :cond_8
    const/4 v8, 0x0

    :goto_9
    const/4 v11, 0x4

    if-ge v8, v11, :cond_5

    .line 481
    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v12, 0x7f0800e1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableRow;

    .line 482
    .restart local v10    # "secondRowBots":Landroid/widget/TableRow;
    invoke-virtual {v10, v8}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    iget v13, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v11}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v11

    if-ne v12, v11, :cond_9

    .line 483
    invoke-virtual {v10, v8}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 480
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 489
    .end local v8    # "i":I
    .end local v10    # "secondRowBots":Landroid/widget/TableRow;
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->BotChosen(Landroid/widget/ImageButton;)V

    .line 490
    return-void

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 405
    :sswitch_data_0
    .sparse-switch
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_0
        0x1fa47a -> :sswitch_1
        0x41ddee3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 446
    :sswitch_data_1
    .sparse-switch
        -0x72bcedb2 -> :sswitch_6
        -0x70d60c24 -> :sswitch_9
        -0x625eaf6c -> :sswitch_7
        0x14071 -> :sswitch_8
        0x1fa47a -> :sswitch_4
        0x25f596 -> :sswitch_a
        0x27b67c -> :sswitch_b
        0x41ddee3 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method changeSpeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x33

    .line 713
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    iput-object p1, v1, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 714
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 749
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_1

    .line 750
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 751
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 752
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 753
    const-string v1, "Fast"

    iput-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 755
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 756
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 714
    :sswitch_0
    const-string v2, "Fast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Medium"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Slow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_1

    .line 717
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 718
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 719
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 720
    const-string v1, "Fast"

    iput-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 721
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 722
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 723
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 727
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->mediumSpeed:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_1

    .line 728
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 729
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 730
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->mediumSpeed:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 731
    const-string v1, "Medium"

    iput-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 732
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 733
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 734
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 738
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_2
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->slowSpeed:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_1

    .line 739
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->fastSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 740
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 741
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->slowSpeed:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 742
    const-string v1, "Slow"

    iput-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 744
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 745
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 714
    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_1
        0x214c7c -> :sswitch_0
        0x275e21 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setBotEditSelection(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    .line 61
    const v4, 0x7f0a0030

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    .line 62
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->inflater:Landroid/view/LayoutInflater;

    .line 64
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f08008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 65
    .local v0, "closeButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/botEditFragment$1;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment$1;-><init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 132
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 133
    .local v1, "confirmButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;-><init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f080170

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 217
    .local v2, "motorCircuitSpeedLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0801f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 219
    .local v3, "speedBlank":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0801fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedToggle:Landroid/widget/ImageView;

    .line 222
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0801f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->highSpeedButton:Landroid/widget/Button;

    .line 223
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f0801fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->lowSpeedButton:Landroid/widget/Button;

    .line 224
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f08010a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->highSpeedImage:Landroid/widget/ImageView;

    .line 225
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    const v5, 0x7f08016a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->lowSpeedImage:Landroid/widget/ImageView;

    .line 227
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->highSpeedButton:Landroid/widget/Button;

    new-instance v5, Lcom/elenco/snapcoder/BotCode/botEditFragment$3;

    invoke-direct {v5, p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment$3;-><init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->lowSpeedButton:Landroid/widget/Button;

    new-instance v5, Lcom/elenco/snapcoder/BotCode/botEditFragment$4;

    invoke-direct {v5, p0}, Lcom/elenco/snapcoder/BotCode/botEditFragment$4;-><init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->view:Landroid/view/View;

    return-object v4
.end method

.method setBotCodeText()V
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 580
    const-string v3, ""

    .line 581
    .local v3, "commandPrefix":Ljava/lang/String;
    const-string v4, ""

    .line 582
    .local v4, "commandSuffix":Ljava/lang/String;
    iget v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->setCommandId:I

    packed-switch v6, :pswitch_data_0

    .line 649
    :goto_0
    const-string v1, ""

    .line 650
    .local v1, "botName":Ljava/lang/String;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 652
    const-string v0, ""

    .line 653
    .local v0, "botCommand":Ljava/lang/String;
    const/4 v2, 0x0

    .line 654
    .local v2, "commandLineCounter":I
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 655
    const-string v1, ""

    .line 657
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 658
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 659
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 694
    :goto_3
    const-string v6, "spin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "turn"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 695
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_2

    .line 696
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 657
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 584
    .end local v0    # "botCommand":Ljava/lang/String;
    .end local v1    # "botName":Ljava/lang/String;
    .end local v2    # "commandLineCounter":I
    .end local v5    # "j":I
    :pswitch_0
    const-string v3, "turnLeft90("

    .line 585
    const-string v4, ");"

    .line 586
    goto :goto_0

    .line 588
    :pswitch_1
    const-string v3, "turnLeft180("

    .line 589
    const-string v4, ");"

    .line 590
    goto :goto_0

    .line 592
    :pswitch_2
    const-string v3, "turnLeft270("

    .line 593
    const-string v4, ");"

    .line 594
    goto :goto_0

    .line 596
    :pswitch_3
    const-string v3, "turnLeft360("

    .line 597
    const-string v4, ");"

    .line 598
    goto :goto_0

    .line 600
    :pswitch_4
    const-string v3, "turnRight90("

    .line 601
    const-string v4, ");"

    .line 602
    goto :goto_0

    .line 604
    :pswitch_5
    const-string v3, "turnRight180("

    .line 605
    const-string v4, ");"

    .line 606
    goto :goto_0

    .line 608
    :pswitch_6
    const-string v3, "turnRight270("

    .line 609
    const-string v4, ");"

    .line 610
    goto :goto_0

    .line 612
    :pswitch_7
    const-string v3, "turnRight360("

    .line 613
    const-string v4, ");"

    .line 614
    goto/16 :goto_0

    .line 616
    :pswitch_8
    const-string v3, "spinLeft90("

    .line 617
    const-string v4, ");"

    .line 618
    goto/16 :goto_0

    .line 620
    :pswitch_9
    const-string v3, "spinLeft180("

    .line 621
    const-string v4, ");"

    .line 622
    goto/16 :goto_0

    .line 624
    :pswitch_a
    const-string v3, "spinLeft270("

    .line 625
    const-string v4, ");"

    .line 626
    goto/16 :goto_0

    .line 628
    :pswitch_b
    const-string v3, "spinLeft360("

    .line 629
    const-string v4, ");"

    .line 630
    goto/16 :goto_0

    .line 632
    :pswitch_c
    const-string v3, "spinRight90("

    .line 633
    const-string v4, ");"

    .line 634
    goto/16 :goto_0

    .line 636
    :pswitch_d
    const-string v3, "spinRight180("

    .line 637
    const-string v4, ");"

    .line 638
    goto/16 :goto_0

    .line 640
    :pswitch_e
    const-string v3, "spinRight270("

    .line 641
    const-string v4, ");"

    .line 642
    goto/16 :goto_0

    .line 644
    :pswitch_f
    const-string v3, "spinRight360("

    .line 645
    const-string v4, ");"

    goto/16 :goto_0

    .line 659
    .restart local v0    # "botCommand":Ljava/lang/String;
    .restart local v1    # "botName":Ljava/lang/String;
    .restart local v2    # "commandLineCounter":I
    .restart local v5    # "j":I
    :sswitch_0
    const-string v10, "Blue"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "Green"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "Orange"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "Yellow"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "Pink"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "Red"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "Purple"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "Teal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x7

    goto/16 :goto_2

    .line 661
    :pswitch_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    goto/16 :goto_3

    .line 664
    :pswitch_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    goto/16 :goto_3

    .line 667
    :pswitch_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    goto/16 :goto_3

    .line 670
    :pswitch_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    goto/16 :goto_3

    .line 673
    :pswitch_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    goto/16 :goto_3

    .line 676
    :pswitch_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    goto/16 :goto_3

    .line 679
    :pswitch_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    goto/16 :goto_3

    .line 682
    :pswitch_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "VSC, "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 686
    :cond_3
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 687
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 690
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 702
    .end local v0    # "botCommand":Ljava/lang/String;
    .end local v2    # "commandLineCounter":I
    .end local v5    # "j":I
    :cond_6
    return-void

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x7f0801ff
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 659
    :sswitch_data_0
    .sparse-switch
        -0x72bcedb2 -> :sswitch_2
        -0x70d60c24 -> :sswitch_6
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_5
        0x1fa47a -> :sswitch_0
        0x25f596 -> :sswitch_4
        0x27b67c -> :sswitch_7
        0x41ddee3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
