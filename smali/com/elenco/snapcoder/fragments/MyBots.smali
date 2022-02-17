.class public Lcom/elenco/snapcoder/fragments/MyBots;
.super Landroid/support/v4/app/Fragment;
.source "MyBots.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public OpenBotCustomization(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 353
    new-instance v1, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;-><init>()V

    .line 354
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/MyBots;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 355
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "BotCustomization"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 357
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 358
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/fragments/MyBots$6;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/fragments/MyBots$6;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 369
    return-void
.end method

.method public getConnectedBotIconsForMyBotsScreen()V
    .locals 22

    .prologue
    .line 89
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f080063

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TableLayout;

    .line 90
    .local v17, "tbl":Landroid/widget/TableLayout;
    const-string v5, ""

    .line 93
    .local v5, "botNameStr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 95
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/MainScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    .line 96
    .local v13, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/widget/TableRow;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 97
    .local v6, "botRowView":Landroid/widget/TableRow;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v10, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    new-instance v8, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 102
    .local v8, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/model/Bot;

    .line 103
    .local v3, "b":Lcom/elenco/snapcoder/model/Bot;
    const-string v9, "foo"

    .line 104
    .local v9, "color":Ljava/lang/String;
    const-string v14, "foo"

    .line 106
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 108
    .local v7, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 109
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v9

    .line 110
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v14

    .line 113
    :cond_0
    const v18, 0x7f0a0043

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6    # "botRowView":Landroid/widget/TableRow;
    check-cast v6, Landroid/widget/TableRow;

    .line 114
    .restart local v6    # "botRowView":Landroid/widget/TableRow;
    const v18, 0x7f0801ee

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 116
    .local v15, "snapImage":Landroid/widget/ImageView;
    if-nez v9, :cond_1

    .line 117
    const-string v9, "Blue"

    .line 120
    :cond_1
    const/16 v18, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v18, :pswitch_data_0

    .line 134
    const v18, 0x7f0700b4

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :goto_2
    const v18, 0x7f0801ef

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 138
    .local v16, "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v18, "MYTAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_a

    .line 140
    const-string v18, "foo"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 141
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    const/16 v18, 0x0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 142
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_3
    move-object v11, v6

    .line 160
    .local v11, "finalBotRowView":Landroid/view/View;
    move-object v4, v9

    .line 162
    .local v4, "botColor":Ljava/lang/String;
    new-instance v18, Lcom/elenco/snapcoder/fragments/MyBots$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v3, v4}, Lcom/elenco/snapcoder/fragments/MyBots$4;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v18, 0x7f0a003e

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    .line 231
    .local v12, "horizontalLine":Landroid/widget/TableRow;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 120
    .end local v4    # "botColor":Ljava/lang/String;
    .end local v11    # "finalBotRowView":Landroid/view/View;
    .end local v12    # "horizontalLine":Landroid/widget/TableRow;
    .end local v16    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :sswitch_0
    const-string v20, "Red"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v18, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v20, "Blue"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v18, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v20, "Green"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v18, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v20, "Yellow"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v18, 0x3

    goto/16 :goto_1

    .line 122
    :pswitch_0
    const v18, 0x7f0700f2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 125
    :pswitch_1
    const v18, 0x7f0700b4

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 128
    :pswitch_2
    const v18, 0x7f0700de

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 131
    :pswitch_3
    const v18, 0x7f070115

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 143
    .restart local v16    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_4
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 144
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 146
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 149
    :cond_7
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v14

    .line 150
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    const/16 v18, 0x0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const/16 v18, 0x0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 151
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 157
    :cond_a
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 234
    .end local v3    # "b":Lcom/elenco/snapcoder/model/Bot;
    .end local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v9    # "color":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "snapImage":Landroid/widget/ImageView;
    .end local v16    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_b
    return-void

    .line 120
    nop

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
.end method

.method public getConnectedBotIconsForMyBotsScreenAfterCustomization(Ljava/lang/String;I)V
    .locals 23
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 238
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v19

    const v20, 0x7f080063

    invoke-virtual/range {v19 .. v20}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TableLayout;

    .line 239
    .local v18, "tbl":Landroid/widget/TableLayout;
    const-string v5, ""

    .line 241
    .local v5, "botNameStr":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 243
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/MainScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    .line 244
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 245
    .local v6, "botRowView":Landroid/view/View;
    const/4 v13, 0x0

    .line 247
    .local v13, "i":I
    new-instance v8, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 249
    .local v8, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v10, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/model/Bot;

    .line 254
    .local v3, "b":Lcom/elenco/snapcoder/model/Bot;
    const-string v9, "foo"

    .line 255
    .local v9, "color":Ljava/lang/String;
    const-string v15, "foo"

    .line 257
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 259
    .local v7, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 260
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v9

    .line 261
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v15

    .line 264
    :cond_0
    const v19, 0x7f0a0043

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 265
    const v19, 0x7f0801ee

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 268
    .local v16, "snapImage":Landroid/widget/ImageView;
    const/16 v19, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v19, :pswitch_data_0

    .line 282
    const v19, 0x7f0700b4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :goto_2
    const v19, 0x7f0801ef

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 287
    .local v17, "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    move/from16 v0, p2

    if-ne v13, v0, :cond_9

    .line 288
    move-object/from16 v15, p1

    .line 289
    const-string v19, "foo"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 290
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 291
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_3
    move-object v4, v9

    .line 330
    .local v4, "botColor":Ljava/lang/String;
    move-object v11, v6

    .line 332
    .local v11, "finalBotRowView":Landroid/view/View;
    new-instance v19, Lcom/elenco/snapcoder/fragments/MyBots$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v3, v4}, Lcom/elenco/snapcoder/fragments/MyBots$5;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v19, 0x7f0a003e

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    .line 346
    .local v12, "horizontalLine":Landroid/widget/TableRow;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 347
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 348
    add-int/lit8 v13, v13, 0x1

    .line 349
    goto/16 :goto_0

    .line 268
    .end local v4    # "botColor":Ljava/lang/String;
    .end local v11    # "finalBotRowView":Landroid/view/View;
    .end local v12    # "horizontalLine":Landroid/widget/TableRow;
    .end local v17    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :sswitch_0
    const-string v21, "Red"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v19, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v21, "Blue"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v19, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v21, "Green"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v19, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v21, "Yellow"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v19, 0x3

    goto/16 :goto_1

    .line 270
    :pswitch_0
    const v19, 0x7f0700f2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 273
    :pswitch_1
    const v19, 0x7f0700b4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 276
    :pswitch_2
    const v19, 0x7f0700de

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 279
    :pswitch_3
    const v19, 0x7f070115

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 292
    .restart local v17    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_3
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 293
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 295
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 299
    :cond_6
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v15

    .line 300
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 301
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 303
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 309
    :cond_9
    const-string v19, "foo"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 310
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 311
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 312
    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 313
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 315
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 320
    :cond_e
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v15

    .line 321
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    :cond_f
    const/16 v19, 0x0

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/MyBots;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 322
    :cond_10
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 324
    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 350
    .end local v3    # "b":Lcom/elenco/snapcoder/model/Bot;
    .end local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v9    # "color":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "snapImage":Landroid/widget/ImageView;
    .end local v17    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_12
    return-void

    .line 268
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
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v3, 0x7f0a0039

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    .line 54
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setMyBots(Lcom/elenco/snapcoder/fragments/MyBots;)V

    .line 57
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    const v4, 0x7f08018e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 58
    .local v0, "hamburgerMenu":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/MyBots$1;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/MyBots$1;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    const v4, 0x7f08018c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 67
    .local v2, "myBotsDriveButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/MyBots$2;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/MyBots$2;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    const v4, 0x7f08018b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 77
    .local v1, "myBotsCodeButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/MyBots$3;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/MyBots$3;-><init>(Lcom/elenco/snapcoder/fragments/MyBots;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    return-object v3
.end method
