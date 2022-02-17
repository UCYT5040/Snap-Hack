.class public Lcom/elenco/snapcoder/ConnectedBay;
.super Landroid/widget/HorizontalScrollView;
.source "ConnectedBay.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field private botBay:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    .line 25
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->inflater:Landroid/view/LayoutInflater;

    .line 27
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->CIRCUIT_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ConnectedBay;->addView(Landroid/view/View;)V

    .line 33
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setConnectedBay(Lcom/elenco/snapcoder/ConnectedBay;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/ConnectedBay;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ConnectedBay;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createBotIcon(Lcom/elenco/snapcoder/model/Bot;)Landroid/widget/TableRow;
    .locals 14
    .param p1, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 44
    new-instance v9, Landroid/widget/TableRow;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 46
    .local v9, "botRowView":Landroid/widget/TableRow;
    const-string v12, "foo"

    .line 47
    .local v12, "color":Ljava/lang/String;
    const-string v13, "foo"

    .line 49
    .local v13, "name":Ljava/lang/String;
    new-instance v11, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 50
    .local v11, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 53
    .local v10, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v12

    .line 55
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v13

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0a003f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "botRowView":Landroid/widget/TableRow;
    check-cast v9, Landroid/widget/TableRow;

    .line 59
    .restart local v9    # "botRowView":Landroid/widget/TableRow;
    const v0, 0x7f08005f

    invoke-virtual {v9, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 61
    .local v6, "botIcon":Landroid/widget/ImageView;
    const-string v0, "foo"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p1, v12}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v6, v12}, Lcom/elenco/snapcoder/ConnectedBay;->setColor(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/widget/ImageView;

    .line 72
    :goto_0
    const v0, 0x7f080062

    invoke-virtual {v9, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 74
    .local v7, "botName":Landroid/widget/TextView;
    const-string v0, "foo"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 81
    :cond_2
    :goto_1
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    move-object v2, v9

    .line 87
    .local v2, "finalBotRowView":Landroid/view/View;
    move-object v4, v13

    .line 88
    .local v4, "finalName":Ljava/lang/String;
    move-object v5, v12

    .line 89
    .local v5, "finalColor":Ljava/lang/String;
    const v0, 0x7f08005f

    invoke-virtual {v9, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 92
    .local v8, "botPicture":Landroid/widget/ImageView;
    new-instance v0, Lcom/elenco/snapcoder/ConnectedBay$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/ConnectedBay$1;-><init>(Lcom/elenco/snapcoder/ConnectedBay;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object v9

    .line 67
    .end local v2    # "finalBotRowView":Landroid/view/View;
    .end local v4    # "finalName":Ljava/lang/String;
    .end local v5    # "finalColor":Ljava/lang/String;
    .end local v7    # "botName":Landroid/widget/TextView;
    .end local v8    # "botPicture":Landroid/widget/ImageView;
    :cond_4
    const v0, 0x7f0700b4

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    const-string v12, "Blue"

    goto :goto_0

    .line 78
    .restart local v7    # "botName":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_1
.end method


# virtual methods
.method public addBotToBay(Lcom/elenco/snapcoder/model/Bot;)V
    .locals 2
    .param p1, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/ConnectedBay;->createBotIcon(Lcom/elenco/snapcoder/model/Bot;)Landroid/widget/TableRow;

    move-result-object v0

    .line 38
    .local v0, "botIcon":Landroid/widget/TableRow;
    invoke-virtual {p1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method displayOdometer(Z)V
    .locals 22
    .param p1, "empty"    # Z

    .prologue
    .line 228
    const/16 v16, 0x0

    .line 230
    .local v16, "timeDriven":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801e9

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 231
    .local v11, "singleBotDash":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f080187

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 232
    .local v10, "multiBotDash":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801a7

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 233
    .local v8, "hundredThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801aa

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 234
    .local v13, "tenThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801ac

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 235
    .local v15, "thousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801a8

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 236
    .local v9, "hundredsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801ab

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 237
    .local v14, "tensText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0801a9

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 238
    .local v12, "singlesText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0800c4

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 239
    .local v4, "botName":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v18

    const v19, 0x7f0800c3

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 242
    .local v3, "botIcon":Landroid/widget/ImageView;
    if-nez p1, :cond_2

    .line 244
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 249
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 251
    .local v7, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 253
    .local v6, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 254
    .local v2, "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 255
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v16

    .line 265
    .end local v2    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_1
    :goto_0
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x4002666666666666L    # 2.3

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 266
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 268
    .local v17, "timeDrivenString":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 269
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 261
    .end local v17    # "timeDrivenString":Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 272
    .restart local v17    # "timeDrivenString":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v18, 0x1

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/16 v18, 0x2

    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/16 v18, 0x3

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/16 v18, 0x4

    const/16 v19, 0x5

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const-string v5, ""

    .line 280
    .local v5, "botNameString":Ljava/lang/String;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 281
    :cond_4
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    :goto_2
    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/elenco/snapcoder/ConnectedBay;->setColor(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/widget/ImageView;

    .line 290
    return-void

    .line 283
    :cond_5
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method moveIcon(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 164
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 165
    .local v11, "disabledTable":Landroid/widget/LinearLayout;
    move-object v2, v11

    .line 166
    .local v2, "setDisabledTable":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/TableRow;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 167
    .local v10, "botRowView":Landroid/widget/TableRow;
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0a003f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "botRowView":Landroid/widget/TableRow;
    check-cast v10, Landroid/widget/TableRow;

    .line 168
    .restart local v10    # "botRowView":Landroid/widget/TableRow;
    const v0, 0x7f08005f

    invoke-virtual {v10, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 170
    .local v8, "botIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v8, p2}, Lcom/elenco/snapcoder/ConnectedBay;->setColor(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f080062

    invoke-virtual {v10, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 173
    .local v9, "botName":Landroid/widget/TextView;
    const-string v0, "foo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 182
    const v0, 0x7f08005f

    invoke-virtual {v10, v0}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 183
    .local v5, "botPicture":Landroid/widget/ImageView;
    move-object v3, v10

    .line 184
    .local v3, "finalBotRowView":Landroid/widget/TableRow;
    move-object v7, p1

    .line 185
    .local v7, "finalName":Ljava/lang/String;
    move-object v6, p2

    .line 187
    .local v6, "finalColor":Ljava/lang/String;
    new-instance v0, Lcom/elenco/snapcoder/ConnectedBay$2;

    move-object v1, p0

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/elenco/snapcoder/ConnectedBay$2;-><init>(Lcom/elenco/snapcoder/ConnectedBay;Landroid/widget/LinearLayout;Landroid/widget/TableRow;Lcom/elenco/snapcoder/model/Bot;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    return-void

    .line 176
    .end local v3    # "finalBotRowView":Landroid/widget/TableRow;
    .end local v5    # "botPicture":Landroid/widget/ImageView;
    .end local v6    # "finalColor":Ljava/lang/String;
    .end local v7    # "finalName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public removeBot(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay;->botBay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 131
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method setColor(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "botIcon"    # Landroid/widget/ImageView;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0700b4

    .line 142
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_1
    return-object p1

    .line 142
    :sswitch_0
    const-string v1, "Red"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Blue"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "Green"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Yellow"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 144
    :pswitch_0
    const v0, 0x7f0700f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 147
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 150
    :pswitch_2
    const v0, 0x7f0700de

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 153
    :pswitch_3
    const v0, 0x7f070115

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 142
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
