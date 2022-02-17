.class public Lcom/elenco/snapcoder/DiscoveredBotBay;
.super Landroid/widget/HorizontalScrollView;
.source "DiscoveredBotBay.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field private botBay:Landroid/widget/LinearLayout;

.field public connectingBots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->botBay:Landroid/widget/LinearLayout;

    .line 34
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->inflater:Landroid/view/LayoutInflater;

    .line 37
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->CIRCUIT_NAME:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/DiscoveredBotBay;->addView(Landroid/view/View;)V

    .line 43
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setDiscoveredBotBay(Lcom/elenco/snapcoder/DiscoveredBotBay;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    .line 45
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->pref:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method private createBotIcon(Landroid/bluetooth/BluetoothDevice;)Landroid/widget/TableRow;
    .locals 23
    .param p1, "bot"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->pref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 56
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v18, Landroid/widget/TableRow;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 57
    .local v18, "snapRowView":Landroid/widget/TableRow;
    const-string v6, "foo"

    .line 59
    .local v6, "color":Ljava/lang/String;
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 60
    .local v5, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 61
    .local v16, "snapList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 62
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v6

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f0a002c

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .end local v18    # "snapRowView":Landroid/widget/TableRow;
    check-cast v18, Landroid/widget/TableRow;

    .line 66
    .restart local v18    # "snapRowView":Landroid/widget/TableRow;
    const v20, 0x7f0801ee

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 68
    .local v15, "snapImage":Landroid/widget/ImageView;
    if-eqz v6, :cond_8

    const-string v20, "foo"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 69
    const/16 v20, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v20, :pswitch_data_0

    .line 87
    const v20, 0x7f0700b4

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Blue"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    const v20, 0x7f0801ef

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 99
    .local v17, "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v14, "foo"

    .line 102
    .local v14, "name":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 103
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 104
    .local v19, "snapsListName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 105
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v14

    .line 115
    .end local v19    # "snapsListName":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v20, "foo"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 116
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 117
    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 134
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "_bot":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 137
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 138
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 139
    const-string v21, "MYTAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bot name: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    .line 144
    :cond_4
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/model/Bot;

    .line 145
    .local v4, "bots":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 146
    const v20, 0x7f0801ed

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 147
    .local v7, "connectToggle":Landroid/widget/ImageView;
    const v20, 0x7f0700c4

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 150
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .end local v4    # "bots":Lcom/elenco/snapcoder/model/Bot;
    .end local v7    # "connectToggle":Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v10, v18

    .line 158
    .local v10, "finalBotRowView":Landroid/view/View;
    new-instance v20, Lcom/elenco/snapcoder/DiscoveredBotBay$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/elenco/snapcoder/DiscoveredBotBay$1;-><init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Landroid/view/View;Landroid/bluetooth/BluetoothDevice;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 194
    const/4 v11, 0x0

    .line 196
    .local v11, "foundBot":Z
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f0800d4

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 198
    .local v8, "discoveredBotTable":Landroid/widget/TableLayout;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v8}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 199
    invoke-virtual {v8, v13}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual {v8, v13}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TableRow;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 200
    const/4 v11, 0x1

    .line 205
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f0a003e

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    .line 207
    .local v12, "horizontalLine":Landroid/widget/TableRow;
    if-nez v11, :cond_f

    .line 208
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v8, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f080218

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f0801d4

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f08010b

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f080192

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->stopTextHandler()V

    .line 226
    :goto_5
    return-object v18

    .line 69
    .end local v3    # "_bot":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v8    # "discoveredBotTable":Landroid/widget/TableLayout;
    .end local v10    # "finalBotRowView":Landroid/view/View;
    .end local v11    # "foundBot":Z
    .end local v12    # "horizontalLine":Landroid/widget/TableRow;
    .end local v13    # "i":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    :sswitch_0
    const-string v21, "Red"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v21, "Blue"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v21, "Green"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v21, "Yellow"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x3

    goto/16 :goto_0

    .line 71
    :pswitch_0
    const v20, 0x7f0700f2

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Red"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 75
    :pswitch_1
    const v20, 0x7f0700b4

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Blue"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 79
    :pswitch_2
    const v20, 0x7f0700de

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Green"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 83
    :pswitch_3
    const v20, 0x7f070115

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Yellow"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 94
    :cond_8
    const v20, 0x7f0700b4

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Blue"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 107
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v19    # "snapsListName":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    .line 110
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    goto/16 :goto_2

    .line 120
    .end local v19    # "snapsListName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 125
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    .line 126
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/DiscoveredBotBay;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 127
    :cond_c
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 130
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 198
    .restart local v3    # "_bot":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .restart local v8    # "discoveredBotTable":Landroid/widget/TableLayout;
    .restart local v10    # "finalBotRowView":Landroid/view/View;
    .restart local v11    # "foundBot":Z
    .restart local v13    # "i":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 219
    .restart local v12    # "horizontalLine":Landroid/widget/TableRow;
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v8, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 221
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v8, v12}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 69
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


# virtual methods
.method public addBotToBay(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "bot"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/DiscoveredBotBay;->createBotIcon(Landroid/bluetooth/BluetoothDevice;)Landroid/widget/TableRow;

    move-result-object v0

    .line 51
    .local v0, "botIcon":Landroid/widget/TableRow;
    return-void
.end method

.method checkBots(Ljava/lang/String;I)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "checkCount"    # I

    .prologue
    .line 250
    iget-object v3, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "bots":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    if-ge p2, v4, :cond_0

    .line 252
    add-int/lit8 v2, p2, 0x1

    .line 253
    .local v2, "newCount":I
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->connectToBotByAddress(Ljava/lang/String;)V

    .line 254
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 255
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/elenco/snapcoder/DiscoveredBotBay$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/elenco/snapcoder/DiscoveredBotBay$3;-><init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Ljava/lang/String;I)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 263
    .end local v0    # "bots":Ljava/lang/String;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "newCount":I
    :cond_1
    return-void
.end method

.method insertConnectingBot(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 237
    move-object v1, p1

    .line 238
    .local v1, "newBot":Ljava/lang/String;
    iget-object v2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 241
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/elenco/snapcoder/DiscoveredBotBay$2;

    invoke-direct {v2, p0, v1}, Lcom/elenco/snapcoder/DiscoveredBotBay$2;-><init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Ljava/lang/String;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method

.method public removeAllBots()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 232
    .local v0, "discoveredBotTable":Landroid/widget/TableLayout;
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 233
    return-void
.end method

.method public removeBots(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "bot":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    .end local v0    # "bot":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay;->connectingBots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 273
    new-instance v1, Lcom/elenco/snapcoder/DiscoveredBotBay$4;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/DiscoveredBotBay$4;-><init>(Lcom/elenco/snapcoder/DiscoveredBotBay;)V

    .line 283
    .local v1, "removeConnectingImage":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    .end local v1    # "removeConnectingImage":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method
