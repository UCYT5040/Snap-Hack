.class public Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "BlocklyWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;
    }
.end annotation


# static fields
.field static executionTimer:Ljava/util/Timer;

.field private static programIsExecuting:Z

.field private static repeatForever:Z

.field static repeatTimer:Ljava/util/Timer;


# instance fields
.field alwaysRepeatCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field

.field blocklyDatabase:Lcom/google/firebase/database/DatabaseReference;

.field blocklyNameHolder:Landroid/widget/RelativeLayout;

.field blocklyNameItemToChange:Landroid/widget/LinearLayout;

.field blocklyNameListView:Landroid/widget/LinearLayout;

.field commandsToBeExecuted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field

.field database:Lcom/google/firebase/database/FirebaseDatabase;

.field foundCode:Z

.field private mFullscreenButton:Landroid/widget/ImageButton;

.field private mGeneratedCode:Landroid/widget/TextView;

.field protected mWebView:Landroid/webkit/WebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field noSavedCodeText:Landroid/widget/TextView;

.field private playButton:Landroid/widget/ImageButton;

.field programSave:Landroid/widget/RelativeLayout;

.field renameInput:Landroid/widget/EditText;

.field renameLayout:Landroid/widget/RelativeLayout;

.field repeatList:Ljava/util/ArrayList;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programIsExecuting:Z

    .line 632
    sput-boolean v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    .line 872
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    .line 873
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->alwaysRepeatCommands:Ljava/util/ArrayList;

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    .line 1137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->foundCode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mFullscreenButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    return v0
.end method

.method static synthetic access$200(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->runCommandList()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programIsExecuting:Z

    return p0
.end method

.method static synthetic access$400(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private runCommandList()V
    .locals 18

    .prologue
    .line 875
    const/4 v11, 0x0

    .line 876
    .local v11, "totalDuration":I
    const/4 v8, 0x0

    .line 878
    .local v8, "index":I
    new-instance v12, Ljava/util/Timer;

    invoke-direct {v12}, Ljava/util/Timer;-><init>()V

    sput-object v12, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    .line 880
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 881
    .local v3, "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    move v7, v8

    .line 884
    .local v7, "finalIndex":I
    sget-object v12, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    new-instance v14, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$19;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 913
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Spin"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Custom"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 915
    const/4 v10, 0x0

    .line 916
    .local v10, "spin":F
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    .line 917
    .local v2, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 918
    const/high16 v10, 0x3e800000    # 0.25f

    goto :goto_1

    .line 920
    :cond_1
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 921
    .local v5, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 923
    .local v4, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 924
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Hard"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 925
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Left"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 926
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_0

    .line 927
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v10

    goto :goto_1

    .line 929
    :cond_2
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Right"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 930
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_0

    .line 931
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v10

    goto/16 :goto_1

    .line 935
    :cond_3
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Left"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 936
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_0

    .line 937
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v10

    goto/16 :goto_1

    .line 939
    :cond_4
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Right"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 940
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_0

    .line 941
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v10

    goto/16 :goto_1

    .line 949
    .end local v2    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v4    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v5    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_5
    const/4 v6, 0x0

    .line 950
    .local v6, "duration":I
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "90"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 951
    float-to-double v14, v10

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v16

    double-to-int v6, v14

    .line 963
    :cond_6
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    .line 965
    .local v9, "multiplier":F
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v12

    iget-object v14, v12, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v12, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_7
    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 977
    :goto_4
    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v6, v12

    .line 979
    add-int v12, v11, v6

    add-int/lit16 v11, v12, 0x1f4

    .line 1034
    .end local v6    # "duration":I
    .end local v9    # "multiplier":F
    .end local v10    # "spin":F
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 1036
    goto/16 :goto_0

    .line 953
    .restart local v6    # "duration":I
    .restart local v10    # "spin":F
    :cond_8
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "180"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 954
    float-to-double v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-int v6, v14

    goto :goto_2

    .line 956
    :cond_9
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "270"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 957
    float-to-double v14, v10

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-int v6, v14

    goto :goto_2

    .line 959
    :cond_a
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "360"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 960
    float-to-int v6, v10

    goto :goto_2

    .line 965
    .restart local v9    # "multiplier":F
    :sswitch_0
    const-string v15, "Slow"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v12, 0x0

    goto :goto_3

    :sswitch_1
    const-string v15, "Medium"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v12, 0x1

    goto :goto_3

    :sswitch_2
    const-string v15, "Fast"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v12, 0x2

    goto :goto_3

    .line 967
    :pswitch_0
    const v9, 0x402ccccd    # 2.7f

    .line 968
    goto :goto_4

    .line 970
    :pswitch_1
    const v9, 0x3fb33333    # 1.4f

    .line 971
    goto :goto_4

    .line 973
    :pswitch_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4

    .line 980
    .end local v6    # "duration":I
    .end local v9    # "multiplier":F
    .end local v10    # "spin":F
    :cond_b
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Custom"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 981
    const/4 v10, 0x0

    .line 982
    .restart local v10    # "spin":F
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    .line 983
    .restart local v2    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 984
    const/high16 v10, 0x3e800000    # 0.25f

    goto :goto_6

    .line 986
    :cond_d
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 987
    .restart local v5    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 989
    .restart local v4    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Spin"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 990
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Left"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 991
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 992
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_c

    .line 993
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v10

    goto :goto_6

    .line 996
    :cond_e
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Right"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 997
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 998
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_c

    .line 999
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v10

    goto/16 :goto_6

    .line 1004
    :cond_f
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Left"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1005
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 1006
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_c

    .line 1007
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v10

    goto/16 :goto_6

    .line 1010
    :cond_10
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v12

    const-string v15, "Right"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1011
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 1012
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_c

    .line 1013
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v10

    goto/16 :goto_6

    .line 1021
    .end local v2    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v4    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v5    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_11
    const/high16 v12, 0x42c80000    # 100.0f

    div-float v12, v10, v12

    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x43b40000    # 360.0f

    div-float/2addr v14, v15

    mul-float/2addr v12, v14

    float-to-int v6, v12

    .line 1022
    .restart local v6    # "duration":I
    add-int v12, v11, v6

    add-int/lit16 v11, v12, 0x1f4

    .line 1024
    goto/16 :goto_5

    .line 1025
    .end local v6    # "duration":I
    .end local v10    # "spin":F
    :cond_12
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v12

    const/16 v14, 0x26aa

    if-ne v12, v14, :cond_13

    .line 1026
    add-int/lit16 v11, v11, 0x5dc

    goto/16 :goto_5

    .line 1027
    :cond_13
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v12

    if-nez v12, :cond_14

    .line 1028
    add-int/lit16 v11, v11, 0x3e8

    goto/16 :goto_5

    .line 1030
    :cond_14
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v12

    add-int/2addr v12, v11

    add-int/lit16 v11, v12, 0x1f4

    goto/16 :goto_5

    .line 1037
    .end local v3    # "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v7    # "finalIndex":I
    :cond_15
    new-instance v12, Ljava/util/Timer;

    invoke-direct {v12}, Ljava/util/Timer;-><init>()V

    sput-object v12, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    .line 1038
    sget-object v12, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    new-instance v13, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$20;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    int-to-long v14, v11

    invoke-virtual {v12, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1061
    return-void

    .line 965
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_1
        0x214c7c -> :sswitch_2
        0x275e21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stopExecutionTimerBlockly()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    sget-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1065
    sget-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1066
    sget-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1067
    sget-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1069
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->executionTimer:Ljava/util/Timer;

    .line 1070
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatTimer:Ljava/util/Timer;

    .line 1071
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 1073
    sput-boolean v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    .line 1074
    sput-boolean v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programIsExecuting:Z

    .line 1075
    return-void
.end method


# virtual methods
.method autoLoad()V
    .locals 10

    .prologue
    .line 354
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v4, "circuitNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v5, "circuitUUIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/model/Bot;

    .line 358
    .local v3, "circuit":Lcom/elenco/snapcoder/model/Bot;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v3    # "circuit":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:showBots("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 363
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 364
    .local v2, "blocklyNameRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 367
    .local v0, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "meeper_autoload_xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyXML()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "javascript:loadCode(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 373
    .end local v0    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method autoSaveData(Ljava/lang/String;)V
    .locals 8
    .param p1, "savedData"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 487
    .local v2, "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;-><init>()V

    .line 489
    .local v0, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v1

    .line 491
    .local v1, "blocklyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    const/4 v4, 0x0

    .line 493
    .local v4, "sameName":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 494
    .local v3, "name":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "meeper_autoload_xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    const/4 v4, 0x1

    .line 496
    move-object v0, v3

    goto :goto_0

    .line 500
    .end local v3    # "name":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    :cond_1
    if-nez v4, :cond_2

    .line 501
    const-string v5, "meeper_autoload_xml"

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyName(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyXML(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v2, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)J

    .line 505
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V

    .line 511
    :goto_1
    return-void

    .line 507
    :cond_2
    const-string v5, "meeper_autoload_xml"

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyName(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyXML(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)I

    goto :goto_1
.end method

.method createCommand(Ljava/lang/String;ILjava/util/ArrayList;Z)V
    .locals 30
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "commandList"    # Ljava/util/ArrayList;
    .param p4, "nonRepeating"    # Z

    .prologue
    .line 636
    const-string v7, ""

    .line 637
    .local v7, "botCommand":Ljava/lang/String;
    const/4 v11, 0x0

    .line 638
    .local v11, "duration":I
    const/4 v14, 0x0

    .line 639
    .local v14, "iterations":I
    const-wide/16 v20, 0x0

    .line 640
    .local v20, "ordinal":J
    const-string v25, "Fast"

    .line 641
    .local v25, "speed":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v8, "botList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    const/16 v17, 0x0

    .line 643
    .local v17, "keepClear":Z
    const/4 v12, 0x0

    .line 645
    .local v12, "foreverLoopCount":I
    const-string v26, "{"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 646
    const-string v26, "for"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 647
    const/16 v17, 0x0

    .line 648
    const-string v26, "< "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 649
    .local v23, "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, ";"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 651
    .local v24, "seperated2":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 652
    .local v18, "loopCount":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v10, "cloneList":Ljava/util/ArrayList;
    add-int/lit8 v13, p2, 0x1

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_11

    .line 654
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 656
    if-nez v18, :cond_1

    .line 658
    if-nez v17, :cond_11

    .line 659
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v15, v0, :cond_11

    .line 660
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "k":I
    :goto_2
    if-lez v16, :cond_0

    .line 661
    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 660
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 659
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 668
    .end local v15    # "j":I
    .end local v16    # "k":I
    :cond_1
    if-eqz v17, :cond_3

    .line 669
    move/from16 v0, v18

    if-le v0, v12, :cond_2

    .line 670
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2
    :goto_3
    add-int/lit8 v18, v18, -0x1

    .line 653
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 673
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 677
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "Forever"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 678
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 679
    add-int/lit8 v18, v18, 0x1

    .line 680
    move/from16 v12, v18

    .line 681
    const/16 v17, 0x1

    goto :goto_4

    .line 682
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "while"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 683
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "else if"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "else"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 684
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "if"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 686
    :cond_6
    add-int/lit8 v18, v18, 0x1

    .line 687
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 688
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "for"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 689
    add-int/lit8 v18, v18, 0x1

    .line 690
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 692
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 696
    .end local v10    # "cloneList":Ljava/util/ArrayList;
    .end local v13    # "i":I
    .end local v18    # "loopCount":I
    .end local v23    # "seperated":[Ljava/lang/String;
    .end local v24    # "seperated2":[Ljava/lang/String;
    :cond_9
    const-string v26, "Forever"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 698
    const/16 v18, 0x0

    .line 699
    .restart local v18    # "loopCount":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .restart local v10    # "cloneList":Ljava/util/ArrayList;
    add-int/lit8 v13, p2, 0x1

    .restart local v13    # "i":I
    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_10

    .line 701
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 703
    if-nez v18, :cond_b

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 706
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 710
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v22, p2, v26

    .line 711
    .local v22, "removeAfter":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v16, v26, -0x1

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    .line 712
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 711
    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    .line 718
    .end local v16    # "k":I
    .end local v22    # "removeAfter":I
    :cond_b
    add-int/lit8 v18, v18, -0x1

    .line 719
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 721
    :cond_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "Forever"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 722
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 723
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "while"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 724
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "else if"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "else"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 725
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "if"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const-string v27, "for"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 726
    :cond_e
    add-int/lit8 v18, v18, 0x1

    .line 727
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 729
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 733
    :cond_10
    const/16 v26, 0x1

    sput-boolean v26, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    .line 870
    .end local v10    # "cloneList":Ljava/util/ArrayList;
    .end local v13    # "i":I
    .end local v18    # "loopCount":I
    :cond_11
    :goto_9
    return-void

    .line 734
    :cond_12
    const-string v26, "while"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 735
    const-string v26, "MYTAG"

    const-string v27, "while loop"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 736
    :cond_13
    const-string v26, "else if"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 737
    const-string v26, "MYTAG"

    const-string v27, "else if"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 740
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "&&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 741
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 742
    :cond_14
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "||"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 743
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 744
    :cond_15
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "!="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 745
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 746
    :cond_16
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "=="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 747
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 749
    .end local v23    # "seperated":[Ljava/lang/String;
    :cond_17
    const-string v26, "else"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 750
    const-string v26, "MYTAG"

    const-string v27, "else"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 752
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v13, v0, :cond_11

    .line 753
    const-string v26, "MYTAG"

    aget-object v27, v23, v13

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 755
    .end local v13    # "i":I
    .end local v23    # "seperated":[Ljava/lang/String;
    :cond_18
    const-string v26, "if"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 756
    const-string v26, "MYTAG"

    const-string v27, "if"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 759
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "&&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 760
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 761
    :cond_19
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "||"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 762
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 763
    :cond_1a
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "!="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 764
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 765
    :cond_1b
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "=="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 766
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!@!@"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 770
    .end local v23    # "seperated":[Ljava/lang/String;
    :cond_1c
    const-string v26, "}"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 772
    const-string v26, "start"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 774
    const-string v26, "("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 775
    const-string v26, "wait"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TOGGLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_23

    .line 776
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 777
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 779
    .restart local v24    # "seperated2":[Ljava/lang/String;
    const/4 v13, 0x2

    .restart local v13    # "i":I
    :goto_b
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v13, v0, :cond_21

    .line 781
    aget-object v26, v23, v13

    const-string v27, "#?"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 782
    aget-object v26, v23, v13

    aget-object v27, v23, v13

    const-string v28, "#?"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x2

    aget-object v28, v23, v13

    const-string v29, "!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "botAddress":Ljava/lang/String;
    :goto_c
    const-string v26, ":"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 789
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1d
    :goto_d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_20

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/model/Bot;

    .line 790
    .local v4, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1d

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1d

    .line 791
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 785
    .end local v4    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v5    # "botAddress":Ljava/lang/String;
    :cond_1e
    aget-object v5, v23, v13

    .restart local v5    # "botAddress":Ljava/lang/String;
    goto :goto_c

    .line 795
    :cond_1f
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    .line 779
    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 798
    .end local v5    # "botAddress":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 799
    const/16 v26, 0x0

    aget-object v7, v23, v26

    .line 800
    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    mul-int/lit8 v11, v26, 0x64

    .line 801
    const/16 v26, 0x1

    aget-object v26, v24, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 854
    :cond_22
    :goto_e
    const-string v26, "MYTAG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v9, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v9}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 857
    .local v9, "cloneCmd":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v9, v7}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v9, v11}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 859
    invoke-virtual {v9, v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 860
    invoke-virtual {v9, v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 861
    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 862
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 864
    if-eqz p4, :cond_2e

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 803
    .end local v9    # "cloneCmd":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v13    # "i":I
    .end local v23    # "seperated":[Ljava/lang/String;
    .end local v24    # "seperated2":[Ljava/lang/String;
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TOGGLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2a

    .line 804
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 805
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 807
    .restart local v24    # "seperated2":[Ljava/lang/String;
    const/4 v13, 0x2

    .restart local v13    # "i":I
    :goto_f
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v13, v0, :cond_28

    .line 809
    aget-object v26, v23, v13

    const-string v27, "#?"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 810
    aget-object v26, v23, v13

    aget-object v27, v23, v13

    const-string v28, "#?"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x2

    aget-object v28, v23, v13

    const-string v29, "!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 816
    .restart local v5    # "botAddress":Ljava/lang/String;
    :goto_10
    const-string v26, ":"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_26

    .line 817
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_24
    :goto_11
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_27

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/model/Bot;

    .line 818
    .restart local v4    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_24

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_24

    .line 819
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 813
    .end local v4    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v5    # "botAddress":Ljava/lang/String;
    :cond_25
    aget-object v5, v23, v13

    .restart local v5    # "botAddress":Ljava/lang/String;
    goto :goto_10

    .line 823
    :cond_26
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    .line 807
    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 826
    .end local v5    # "botAddress":Ljava/lang/String;
    :cond_28
    const/16 v26, 0x0

    aget-object v7, v23, v26

    .line 827
    const/16 v26, 0x0

    aget-object v26, v24, v26

    const-string v27, "true"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29

    .line 828
    const/16 v11, 0x26aa

    .line 833
    :goto_12
    const/16 v26, 0x1

    aget-object v26, v24, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 835
    goto/16 :goto_e

    .line 830
    :cond_29
    const/4 v11, 0x0

    goto :goto_12

    .line 836
    .end local v13    # "i":I
    .end local v23    # "seperated":[Ljava/lang/String;
    .end local v24    # "seperated2":[Ljava/lang/String;
    :cond_2a
    const-string v26, "\\("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 837
    .restart local v23    # "seperated":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v23, v26

    const-string v27, "\\)"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 839
    .restart local v24    # "seperated2":[Ljava/lang/String;
    const/4 v13, 0x2

    .restart local v13    # "i":I
    :goto_13
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v13, v0, :cond_2d

    .line 840
    aget-object v26, v23, v13

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, "botAddressSeperator":[Ljava/lang/String;
    const/16 v26, 0x1

    aget-object v26, v6, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 843
    .local v19, "refinedList":Ljava/lang/String;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2b
    :goto_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/model/Bot;

    .line 844
    .restart local v4    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 845
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 839
    .end local v4    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 850
    .end local v6    # "botAddressSeperator":[Ljava/lang/String;
    .end local v19    # "refinedList":Ljava/lang/String;
    :cond_2d
    const/16 v26, 0x0

    aget-object v7, v23, v26

    .line 851
    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    mul-int/lit8 v11, v26, 0x64

    goto/16 :goto_e

    .line 867
    .restart local v9    # "cloneCmd":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->alwaysRepeatCommands:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9
.end method

.method createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V
    .locals 7
    .param p1, "blockly"    # Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meeper_autoload_xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->noSavedCodeText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a001f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v1, v4

    check-cast v1, Landroid/widget/LinearLayout;

    .line 280
    .local v1, "blocklyNameItem":Landroid/widget/LinearLayout;
    const v4, 0x7f08003b

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 281
    .local v0, "blocklyNameField":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v4, 0x7f0800cd

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 284
    .local v2, "deleteCodeButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;

    invoke-direct {v4, p0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$16;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    new-instance v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;

    invoke-direct {v4, p0, p1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$17;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v4, 0x7f0801c0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 339
    .local v3, "renameCodeButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;

    invoke-direct {v4, p0, p1, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$18;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Lcom/elenco/snapcoder/SQLite/data/model/Blockly;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    .end local v0    # "blocklyNameField":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v1    # "blocklyNameItem":Landroid/widget/LinearLayout;
    .end local v2    # "deleteCodeButton":Landroid/widget/ImageButton;
    .end local v3    # "renameCodeButton":Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method generateRandomString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 1140
    const-string v1, "23456789ABCDEFGHJKMNPQRSTUVWXYZ"

    .line 1141
    .local v1, "data":Ljava/lang/String;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1143
    .local v4, "random":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1145
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 1146
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    .line 1150
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v7, "Blockly"

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v0, "blocklyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/Classes/BlocklyDatabase;>;"
    iput-boolean v9, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->foundCode:Z

    .line 1155
    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyDatabase:Lcom/google/firebase/database/DatabaseReference;

    new-instance v7, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;

    invoke-direct {v7, p0, v0, v5}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 1179
    iget-boolean v6, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->foundCode:Z

    if-eqz v6, :cond_1

    .line 1180
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->generateRandomString()Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, "newString":Ljava/lang/String;
    invoke-virtual {v5, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1184
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 1185
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1189
    .end local v3    # "newString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 27
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const v24, 0x7f0a002e

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08003e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/webkit/WebView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/elenco/snapcoder/util/WebChromeClient;

    invoke-direct/range {v25 .. v25}, Lcom/elenco/snapcoder/util/WebChromeClient;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v23

    .line 95
    .local v23, "webSettings":Landroid/webkit/WebSettings;
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/content/Context;)V

    const-string v26, "Android"

    invoke-virtual/range {v24 .. v26}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const-string v25, "file:///android_asset/blockly/webview.html"

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080039

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 100
    .local v15, "hamburgerMenu":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080008

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08003d

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08003c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameHolder:Landroid/widget/RelativeLayout;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f0801d1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 113
    .local v19, "programName":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801cf

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    .line 114
    .local v18, "openSaveButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$2;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080162

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .line 122
    .local v17, "openLoadButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$3;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f080090

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 130
    .local v9, "closeSaveButton":Landroid/widget/Button;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$4;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/EditText;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const v25, 0x7f0801d0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    .line 146
    .local v21, "saveRoutineButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$5;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080195

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->noSavedCodeText:Landroid/widget/TextView;

    .line 155
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 156
    .local v6, "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v5

    .line 158
    .local v5, "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 159
    .local v4, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V

    goto :goto_0

    .line 162
    .end local v4    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v24

    if-nez v24, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->noSavedCodeText:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080161

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .line 167
    .local v16, "loadBackground":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$6;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0800fa

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mGeneratedCode:Landroid/widget/TextView;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0800f8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mFullscreenButton:Landroid/widget/ImageButton;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mFullscreenButton:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    new-instance v25, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$7;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801b6

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->playButton:Landroid/widget/ImageButton;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->playButton:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    new-instance v25, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$8;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080093

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 201
    .local v11, "cloudDownloadHolder":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080091

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 202
    .local v10, "cloudDownloadButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$9;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080094

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 210
    .local v12, "cloudLoadBackground":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$10;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801d9

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    .line 218
    .local v22, "searchButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$11;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080096

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 226
    .local v13, "cloudSave":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$12;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$12;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080095

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 235
    .local v14, "cloudSaveHolder":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801ae

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 236
    .local v7, "closeCloudSaveButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$13;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$13;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801c1

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/EditText;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameInput:Landroid/widget/EditText;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801c2

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameLayout:Landroid/widget/RelativeLayout;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08008f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 248
    .local v8, "closeRenameButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$14;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$14;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0801c3

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    .line 264
    .local v20, "renameLayoutButton":Landroid/widget/ImageButton;
    new-instance v24, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$15;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$15;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    return-object v24
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1080
    invoke-static {}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->stopExecutionTimerBlockly()V

    .line 1081
    return-void
.end method

.method processCode(Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "commandList"    # Ljava/util/ArrayList;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 604
    sget-boolean v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programIsExecuting:Z

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->playButton:Landroid/widget/ImageButton;

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 606
    invoke-static {}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->stopExecutionTimerBlockly()V

    .line 630
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->alwaysRepeatCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 611
    sput-boolean v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 615
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1, v4}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createCommand(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 618
    :cond_2
    sget-boolean v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatForever:Z

    if-eqz v1, :cond_3

    .line 619
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->repeatList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createCommand(Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 624
    :cond_3
    sput-boolean v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programIsExecuting:Z

    .line 625
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->playButton:Landroid/widget/ImageButton;

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 626
    invoke-direct {p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->runCommandList()V

    goto :goto_0
.end method

.method renameRoutine()V
    .locals 8

    .prologue
    .line 1195
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameItemToChange:Landroid/widget/LinearLayout;

    const v6, 0x7f08003b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 1197
    .local v2, "blocklyNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 1199
    .local v3, "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v1

    .line 1201
    .local v1, "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 1202
    .local v0, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1203
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyName(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)I

    .line 1209
    .end local v0    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    :cond_1
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 1211
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->renameLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1214
    :try_start_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 1215
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/MainScreen;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method saveData(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 26
    .param p1, "savedData"    # Ljava/lang/String;
    .param p2, "isCloudSave"    # Z
    .param p3, "loadCode"    # Ljava/lang/String;

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const v24, 0x7f0801d1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 515
    .local v21, "programName":Landroid/widget/EditText;
    const-string v10, ""

    .line 517
    .local v10, "code":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 518
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    :goto_0
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;-><init>()V

    .line 525
    .local v7, "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;-><init>()V

    .line 527
    .local v3, "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v6

    .line 529
    .local v6, "blocklyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    const/16 v22, 0x0

    .line 531
    .local v22, "sameName":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 532
    .local v19, "name":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->getBlocklyName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 533
    const/16 v22, 0x1

    .line 534
    move-object/from16 v3, v19

    goto :goto_1

    .line 519
    .end local v3    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    .end local v6    # "blocklyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    .end local v7    # "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    .end local v19    # "name":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    .end local v22    # "sameName":Z
    :cond_2
    if-eqz p2, :cond_0

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->generateRandomString()Ljava/lang/String;

    move-result-object v10

    .line 521
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    .restart local v3    # "blockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    .restart local v6    # "blocklyNameList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    .restart local v7    # "blocklyRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;
    .restart local v22    # "sameName":Z
    :cond_3
    if-nez v22, :cond_7

    .line 539
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyName(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyXML(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v7, v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)J

    .line 543
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V

    .line 557
    :cond_4
    const-string v23, "Name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->clearFocus()V

    .line 561
    :try_start_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v23

    const-string v24, "input_method"

    invoke-virtual/range {v23 .. v24}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 562
    .local v17, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/MainScreen;->getCurrentFocus()Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v17    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_2
    if-eqz p2, :cond_9

    .line 568
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v23

    const-string v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 569
    .local v12, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_6

    :cond_5
    const/16 v23, 0x1

    .line 570
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 573
    :cond_6
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v13

    .line 574
    .local v13, "database":Lcom/google/firebase/database/FirebaseDatabase;
    const-string v23, "Blockly"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v18

    .line 576
    .local v18, "myRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual/range {v18 .. v18}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 578
    .local v16, "id":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 579
    .local v8, "c":Ljava/util/Date;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v23, "dd-MMM-yyyy"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 580
    .local v14, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v14, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 582
    .local v15, "formattedDate":Ljava/lang/String;
    new-instance v4, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v10, v15}, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .local v4, "blocklyDB":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0800a2

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 586
    .local v11, "codeText":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f080095

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 589
    .local v9, "cloudSaveHolder":Landroid/widget/RelativeLayout;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    const-string v23, "MYTAG"

    const-string v24, "Blockly Added"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v4    # "blocklyDB":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    .end local v8    # "c":Ljava/util/Date;
    .end local v9    # "cloudSaveHolder":Landroid/widget/RelativeLayout;
    .end local v11    # "codeText":Landroid/widget/TextView;
    .end local v12    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v13    # "database":Lcom/google/firebase/database/FirebaseDatabase;
    .end local v14    # "df":Ljava/text/SimpleDateFormat;
    .end local v15    # "formattedDate":Ljava/lang/String;
    .end local v16    # "id":Ljava/lang/String;
    .end local v18    # "myRef":Lcom/google/firebase/database/DatabaseReference;
    :goto_3
    return-void

    .line 545
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyName(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->setBlocklyXML(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v7, v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)I

    .line 549
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyRepo;->getBlocklyList()Ljava/util/List;

    move-result-object v5

    .line 551
    .local v5, "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyNameListView:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 552
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;

    .line 553
    .local v20, "newBlockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->createLoadList(Lcom/elenco/snapcoder/SQLite/data/model/Blockly;)V

    goto :goto_4

    .line 593
    .end local v5    # "blocklyList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Blockly;>;"
    .end local v20    # "newBlockly":Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
    .restart local v12    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_8
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "An internet connection is required to save from the cloud, your code was still saved locally."

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 596
    .end local v12    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->programSave:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 563
    :catch_0
    move-exception v23

    goto/16 :goto_2
.end method

.method searchDatabase()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1084
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->view:Landroid/view/View;

    const v4, 0x7f08009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1085
    .local v1, "codeInput":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1087
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    .line 1088
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v4, "Blockly"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v0, "blocklyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/Classes/BlocklyDatabase;>;"
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1092
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    .line 1093
    :cond_0
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 1096
    :cond_1
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->blocklyDatabase:Lcom/google/firebase/database/DatabaseReference;

    new-instance v4, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$21;

    invoke-direct {v4, p0, v0, v1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$21;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Ljava/util/ArrayList;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "An internet connection is required to download code."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method setText(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string v4, "#\\?.*?!"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "newCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mGeneratedCode:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-static {p1}, Lcom/elenco/snapcoder/util/JavascriptUtil;->makeJsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "encoded":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "commandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "~"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v3, "tokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_0
    const-string v4, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    const-string v5, "javascript:autosaveCode()"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->processCode(Ljava/util/ArrayList;)V

    .line 483
    return-void
.end method

.method showPopUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "didWork"    # Ljava/lang/String;

    .prologue
    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1225
    .local v0, "loadingAlert":Landroid/app/AlertDialog$Builder;
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    const-string v1, "Your code was loaded successfully."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1232
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1233
    const-string v1, "OK"

    new-instance v2, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$23;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$23;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1238
    return-void

    .line 1229
    :cond_0
    const-string v1, "There was an issue loading your code."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
