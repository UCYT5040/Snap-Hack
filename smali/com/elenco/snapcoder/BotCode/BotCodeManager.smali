.class public Lcom/elenco/snapcoder/BotCode/BotCodeManager;
.super Landroid/support/v4/app/Fragment;
.source "BotCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;
    }
.end annotation


# static fields
.field static alreadyUsedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static commandsToBeExecuted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field

.field static commentCount:I

.field static exTimer:Ljava/util/Timer;

.field static executionTimer:Ljava/util/Timer;

.field public static keepLooping:Z

.field static listOfAffectedBotsLists:Ljava/util/ArrayList;
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

.field public static programIsExecuting:Z

.field static skip:Z

.field static uiCommandList:Landroid/widget/LinearLayout;

.field static uniqueCount:I

.field public static vBotBlueBearing:F

.field public static vBotBlueCurrentX:I

.field public static vBotBlueCurrentY:I

.field public static vBotGreenBearing:F

.field public static vBotGreenCurrentX:I

.field public static vBotGreenCurrentY:I

.field public static vBotOrangeBearing:F

.field public static vBotOrangeCurrentX:I

.field public static vBotOrangeCurrentY:I

.field public static vBotYellowBearing:F

.field public static vBotYellowCurrentX:I

.field public static vBotYellowCurrentY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    .line 37
    sput-boolean v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    .line 38
    sput-boolean v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->keepLooping:Z

    .line 345
    sput v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->alreadyUsedList:Ljava/util/ArrayList;

    .line 347
    sput v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    .line 369
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    .line 620
    sput-boolean v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skip:Z

    .line 622
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static RunProgram()V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    .line 46
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f08021a

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 48
    .local v1, "stopProgramButton":Landroid/widget/ImageButton;
    sget-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 49
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;-><init>()V

    .line 50
    .local v0, "botCodeView":Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 51
    const/4 v2, 0x1

    sput-boolean v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    .line 52
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->runCommands()V

    .line 54
    .end local v0    # "botCodeView":Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/LinearLayout;
    .param p1, "x1"    # Lcom/elenco/snapcoder/BotCode/BotCommand;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->setRowHighlight(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    return-void
.end method

.method private static checkBotAssignment()Z
    .locals 4

    .prologue
    .line 605
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    check-cast v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 607
    .restart local v0    # "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "beginningOfLoop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endOfLoop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "beginningOfIf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endOfIf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 612
    const/4 v1, 0x0

    .line 617
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static clearCommandListHighlights(Landroid/widget/LinearLayout;I)V
    .locals 4
    .param p0, "uiCommandList"    # Landroid/widget/LinearLayout;
    .param p1, "scheduleDelay"    # I

    .prologue
    .line 372
    sget-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 373
    sget-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 374
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    .line 376
    sget-object v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    new-instance v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;-><init>(Landroid/widget/LinearLayout;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 418
    return-void
.end method

.method private static cloneBotCommand(Lcom/elenco/snapcoder/BotCode/BotCommand;)Lcom/elenco/snapcoder/BotCode/BotCommand;
    .locals 4
    .param p0, "botCommand"    # Lcom/elenco/snapcoder/BotCode/BotCommand;

    .prologue
    .line 57
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 58
    .local v0, "cloneCmd":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 60
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getIterations()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 61
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 62
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getListOrdinal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 63
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getSetSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommandType(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method private static compile(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "commandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    new-instance v7, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;-><init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;)V

    .line 71
    .local v7, "loopStack":Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    .line 72
    const/4 v3, 0x0

    .line 77
    .local v3, "indexCounter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 79
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "beginningOfLoop"

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "endOfLoop"

    if-eq v8, v9, :cond_1

    .line 81
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-static {v8}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->cloneBotCommand(Lcom/elenco/snapcoder/BotCode/BotCommand;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v0

    .line 82
    .local v0, "cloneCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    sget-object v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v0    # "cloneCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "beginningOfLoop"

    if-eq v8, v9, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "endOfLoop"

    if-ne v8, v9, :cond_0

    .line 95
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v5, "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-static {v8}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->cloneBotCommand(Lcom/elenco/snapcoder/BotCode/BotCommand;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v0

    .line 99
    .restart local v0    # "cloneCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->addLoopToStack(Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    .line 101
    add-int/lit8 v3, v2, 0x1

    .line 103
    const-string v8, "LoopInfo"

    const-string v9, "the loop block"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v8, "LoopInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index of beginning loop command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    :goto_2
    invoke-virtual {v7}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 107
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v3, :cond_3

    .line 108
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-static {v8}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->cloneBotCommand(Lcom/elenco/snapcoder/BotCode/BotCommand;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    .line 109
    .local v6, "loopChildCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "beginningOfLoop"

    if-ne v8, v9, :cond_5

    .line 111
    invoke-virtual {v7, v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->addLoopToStack(Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    .line 115
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    const-string v9, "endOfLoop"

    if-ne v8, v9, :cond_4

    .line 113
    invoke-virtual {v7}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->removeLoopFromStack()Lcom/elenco/snapcoder/BotCode/BotCommand;

    goto :goto_3

    .line 118
    .end local v6    # "loopChildCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_6
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    .line 120
    const-string v9, "LoopInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " LOOPBLOCK GET COMMAND"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 123
    :cond_7
    invoke-static {v5}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->convertLoopCommands(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 124
    sget-object v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    add-int/lit8 v2, v3, -0x1

    goto/16 :goto_1

    .line 129
    .end local v0    # "cloneCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v4    # "j":I
    .end local v5    # "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    :cond_8
    sget-object v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 130
    .local v1, "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    const-string v9, "LooperInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 132
    .end local v1    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_9
    return-void
.end method

.method private static convertLoopCommands(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;)",
            "Ljava/util/ArrayList;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-static {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->doesLoopBlockContainNestedLoop(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    invoke-static {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->getNestedLoopBlock(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 139
    .local v7, "nestedLoop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    const-string v8, "LoopInfo"

    const-string v9, "the nested loop block"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 142
    const-string v9, "LoopInfo"

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v7}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->convertLoopCommands(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "expandedNestedLoop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-static {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->getIndexOfFirstNestedLoop(Ljava/util/ArrayList;)I

    move-result v3

    .line 146
    .local v3, "indexOfNestedLoopCommand":I
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 148
    const-string v8, "LoopInfo"

    const-string v9, "loop block with removed nested loop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 151
    const-string v9, "LoopInfo"

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 155
    const-string v8, "LoopInfo"

    const-string v9, "the spliced parent loop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 158
    const-string v9, "LoopInfo"

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    :cond_2
    invoke-static {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->convertLoopCommands(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    .end local v1    # "expandedNestedLoop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    .end local v3    # "indexOfNestedLoopCommand":I
    .end local v7    # "nestedLoop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    :cond_3
    return-object v0

    .line 164
    .end local v2    # "i":I
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 165
    .local v5, "loopCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getIterations()I

    move-result v6

    .line 166
    .local v6, "loopCounter":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "expandedCommandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v6, :cond_6

    .line 169
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_5

    .line 171
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 167
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 175
    .end local v4    # "j":I
    :cond_6
    const-string v8, "LoopInfo"

    const-string v9, "the expanded loop List"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 178
    const-string v9, "LoopInfo"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static doesLoopBlockContainNestedLoop(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 227
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 228
    .local v0, "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "beginningOfLoop"

    if-ne v2, v3, :cond_0

    .line 230
    const/4 v2, 0x1

    .line 233
    .end local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :goto_1
    return v2

    .line 225
    .restart local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getIndexOfFirstNestedLoop(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 214
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 215
    .local v0, "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "beginningOfLoop"

    if-ne v2, v3, :cond_0

    .line 220
    .end local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 212
    .restart local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getNestedLoopBlock(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "loopBlock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    new-instance v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;-><init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;)V

    .line 188
    .local v2, "loopStack":Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v3, "nestedLoop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-static {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->getIndexOfFirstNestedLoop(Ljava/util/ArrayList;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 193
    .local v0, "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v4

    const-string v5, "beginningOfLoop"

    if-ne v4, v5, :cond_2

    .line 196
    invoke-virtual {v2, v0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->addLoopToStack(Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    .line 203
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    .end local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_1
    return-object v3

    .line 198
    .restart local v0    # "command":Lcom/elenco/snapcoder/BotCode/BotCommand;
    :cond_2
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v4

    const-string v5, "endOfLoop"

    if-ne v4, v5, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->removeLoopFromStack()Lcom/elenco/snapcoder/BotCode/BotCommand;

    goto :goto_1

    .line 190
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;
    .locals 4
    .param p0, "duration"    # I
    .param p1, "iterations"    # I
    .param p2, "ordinal"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "commandType"    # Ljava/lang/String;
    .param p5, "loopCommand"    # Z
    .param p6, "speedChosen"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 567
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 569
    .local v0, "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0, p3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 571
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 572
    invoke-virtual {v0, p4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommandType(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 575
    const-string v1, "beginningOfLoop"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    .line 582
    :goto_0
    const-string v1, "endOfLoop"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    .line 589
    :goto_1
    invoke-virtual {v0, p5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setLoopCommand(Z)V

    .line 590
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 592
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 594
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p2, -0x2

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 599
    :cond_0
    return-object v0

    .line 579
    :cond_1
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    goto :goto_1
.end method

.method private static runCommandList()V
    .locals 16

    .prologue
    .line 624
    const/4 v9, 0x0

    .line 625
    .local v9, "totalDuration":I
    const/4 v6, 0x0

    .line 626
    .local v6, "index":I
    const/4 v10, 0x0

    sput-boolean v10, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->skip:Z

    .line 628
    new-instance v10, Ljava/util/Timer;

    invoke-direct {v10}, Ljava/util/Timer;-><init>()V

    sput-object v10, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    .line 630
    sget-object v10, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 631
    .local v1, "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    move v5, v6

    .line 634
    .local v5, "finalIndex":I
    sget-object v10, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    new-instance v12, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;

    invoke-direct {v12, v1}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;-><init>(Lcom/elenco/snapcoder/BotCode/BotCommand;)V

    int-to-long v14, v9

    invoke-virtual {v10, v12, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 754
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Spin"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Custom"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 756
    const/4 v8, 0x0

    .line 757
    .local v8, "spin":F
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 758
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 759
    const/high16 v8, 0x3e800000    # 0.25f

    goto :goto_1

    .line 761
    :cond_1
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 762
    .local v3, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 764
    .local v2, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 765
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Hard"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 766
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Left"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 767
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_0

    .line 768
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v8

    goto :goto_1

    .line 770
    :cond_2
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Right"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 771
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_0

    .line 772
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v8

    goto/16 :goto_1

    .line 776
    :cond_3
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Left"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 777
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_0

    .line 778
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v8

    goto/16 :goto_1

    .line 780
    :cond_4
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Right"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 781
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_0

    .line 782
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v8

    goto/16 :goto_1

    .line 790
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v3    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_5
    const/4 v4, 0x0

    .line 791
    .local v4, "duration":I
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "90"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 792
    float-to-double v12, v8

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v14

    double-to-int v4, v12

    .line 804
    :cond_6
    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    .line 806
    .local v7, "multiplier":F
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    iget-object v12, v10, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_7
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 818
    :goto_4
    int-to-float v10, v4

    mul-float/2addr v10, v7

    float-to-int v4, v10

    .line 820
    add-int v10, v9, v4

    add-int/lit16 v9, v10, 0x1f4

    .line 888
    .end local v4    # "duration":I
    .end local v7    # "multiplier":F
    .end local v8    # "spin":F
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 890
    goto/16 :goto_0

    .line 794
    .restart local v4    # "duration":I
    .restart local v8    # "spin":F
    :cond_8
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "180"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 795
    float-to-double v12, v8

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    double-to-int v4, v12

    goto :goto_2

    .line 797
    :cond_9
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "270"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 798
    float-to-double v12, v8

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    double-to-int v4, v12

    goto :goto_2

    .line 800
    :cond_a
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "360"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 801
    float-to-int v4, v8

    goto :goto_2

    .line 806
    .restart local v7    # "multiplier":F
    :sswitch_0
    const-string v13, "Slow"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v10, 0x0

    goto :goto_3

    :sswitch_1
    const-string v13, "Medium"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_2
    const-string v13, "Fast"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v10, 0x2

    goto :goto_3

    .line 808
    :pswitch_0
    const v7, 0x402ccccd    # 2.7f

    .line 809
    goto :goto_4

    .line 811
    :pswitch_1
    const v7, 0x3fb33333    # 1.4f

    .line 812
    goto :goto_4

    .line 814
    :pswitch_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    .line 821
    .end local v4    # "duration":I
    .end local v7    # "multiplier":F
    .end local v8    # "spin":F
    :cond_b
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Custom"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 822
    const/4 v8, 0x0

    .line 823
    .restart local v8    # "spin":F
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 824
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 825
    const/high16 v8, 0x3e800000    # 0.25f

    goto :goto_6

    .line 827
    :cond_d
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 828
    .restart local v3    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 830
    .restart local v2    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Spin"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 831
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Left"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 832
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 833
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_c

    .line 834
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v8

    goto :goto_6

    .line 837
    :cond_e
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Right"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 838
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 839
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_c

    .line 840
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v8

    goto/16 :goto_6

    .line 845
    :cond_f
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Left"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 846
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 847
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_c

    .line 848
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v8

    goto/16 :goto_6

    .line 851
    :cond_10
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Right"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 852
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 853
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v10

    cmpl-float v10, v10, v8

    if-lez v10, :cond_c

    .line 854
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v8

    goto/16 :goto_6

    .line 862
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v3    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_11
    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v10, v8, v10

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x43b40000    # 360.0f

    div-float/2addr v12, v13

    mul-float/2addr v10, v12

    float-to-int v4, v10

    .line 863
    .restart local v4    # "duration":I
    add-int v10, v9, v4

    add-int/lit16 v9, v10, 0x1f4

    .line 865
    goto/16 :goto_5

    .line 867
    .end local v4    # "duration":I
    .end local v8    # "spin":F
    :cond_12
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v10

    const/16 v12, 0x26aa

    if-ne v10, v12, :cond_13

    .line 868
    add-int/lit16 v9, v9, 0x3e8

    goto/16 :goto_5

    .line 869
    :cond_13
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v10

    if-nez v10, :cond_14

    .line 870
    add-int/lit16 v9, v9, 0x1f4

    goto/16 :goto_5

    .line 872
    :cond_14
    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v10

    add-int/2addr v10, v9

    add-int/lit16 v9, v10, 0x1f4

    goto/16 :goto_5

    .line 893
    .end local v1    # "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v5    # "finalIndex":I
    :cond_15
    sget-object v10, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    invoke-static {v10, v9}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->clearCommandListHighlights(Landroid/widget/LinearLayout;I)V

    .line 895
    return-void

    .line 806
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

.method private static runCommands()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 266
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentX:I

    .line 267
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueCurrentY:I

    .line 268
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentX:I

    .line 269
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenCurrentY:I

    .line 270
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentX:I

    .line 271
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeCurrentY:I

    .line 272
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentX:I

    .line 273
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowCurrentY:I

    .line 275
    sput v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotBlueBearing:F

    .line 276
    sput v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotGreenBearing:F

    .line 277
    sput v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotOrangeBearing:F

    .line 278
    sput v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->vBotYellowBearing:F

    .line 280
    sget-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 281
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->setUpCommandListCodeManager()Ljava/util/ArrayList;

    .line 284
    :cond_0
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    .line 285
    sput v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    .line 286
    sget-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->alreadyUsedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 288
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->checkBotAssignment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    sget-object v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 290
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;-><init>()V

    .line 291
    .local v0, "botCodeView":Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;->createCode()V

    .line 292
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->runCommandList()V

    .line 308
    .end local v0    # "botCodeView":Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    goto :goto_0

    .line 297
    :cond_2
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v1, "botSelectionCheckDialog":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v2, "No SC Controller(s) Found"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 299
    const-string v2, "The SC Controller for this code was not found.  Please reassign each command to a SC Controller."

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 301
    const-string v2, "OK"

    new-instance v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;

    invoke-direct {v3}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private static setRowHighlight(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V
    .locals 3
    .param p0, "uiCommandList"    # Landroid/widget/LinearLayout;
    .param p1, "botCommand"    # Lcom/elenco/snapcoder/BotCode/BotCommand;

    .prologue
    .line 312
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 315
    .local v0, "codeViewBay":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    new-instance v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    new-instance v2, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$3;-><init>(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method static setUpCommandListCodeManager()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v14, "commandArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 425
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 426
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sput-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    .line 429
    :cond_0
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 430
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 433
    .local v15, "commandBlock":Landroid/widget/RelativeLayout;
    const v3, 0x7f080067

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 435
    .local v18, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    .line 436
    .local v16, "durationDouble":D
    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const-wide v16, 0x4058beb851eb851fL    # 98.98

    .line 441
    :goto_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    double-to-int v0, v4

    .line 443
    .local v0, "duration":I
    const v3, 0x7f0801f6

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 445
    .local v19, "speedImage":Landroid/widget/ImageView;
    const-string v6, "Fast"

    .line 447
    .local v6, "speedChosen":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_1

    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const v4, 0x7f080057

    if-eq v3, v4, :cond_1

    .line 448
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f0700e0

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 449
    const-string v6, "Fast"

    .line 459
    :cond_1
    :goto_2
    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 429
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 439
    .end local v0    # "duration":I
    .end local v6    # "speedChosen":Ljava/lang/String;
    .end local v19    # "speedImage":Landroid/widget/ImageView;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    goto :goto_1

    .line 451
    .restart local v0    # "duration":I
    .restart local v6    # "speedChosen":Ljava/lang/String;
    .restart local v19    # "speedImage":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f0700e3

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 452
    const-string v6, "Slow"

    goto :goto_2

    .line 454
    :cond_4
    const-string v6, "Fast"

    goto :goto_2

    .line 461
    :sswitch_0
    const/4 v1, 0x1

    const-string v3, "moveForwardCommand"

    const-string v4, "directionCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 464
    :sswitch_1
    const/4 v1, 0x1

    const-string v3, "moveBackwardCommand"

    const-string v4, "directionCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 467
    :sswitch_2
    const/4 v1, 0x1

    const-string v3, "turnLeftCommand"

    const-string v4, "turnCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 470
    :sswitch_3
    const/4 v1, 0x1

    const-string v3, "turnRightCommand"

    const-string v4, "turnCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 473
    :sswitch_4
    const/4 v1, 0x1

    const-string v3, "hardTurnLeftCommand"

    const-string v4, "turnCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 476
    :sswitch_5
    const/4 v1, 0x1

    const-string v3, "hardTurnRightCommand"

    const-string v4, "turnCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 479
    :sswitch_6
    div-int/lit8 v1, v0, 0x64

    .line 480
    .local v1, "iterations":I
    const-string v3, "beginningOfLoop"

    const-string v4, "directionCommand"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 483
    .end local v1    # "iterations":I
    :sswitch_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v10, "endOfLoop"

    const-string v11, "directionCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 486
    :sswitch_8
    const/16 v7, 0xfa

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinSoft90Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 489
    :sswitch_9
    const/16 v7, 0x1f4

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinSoft180Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 492
    :sswitch_a
    const/16 v7, 0x2ee

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinSoft270Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 495
    :sswitch_b
    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinSoft360Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 498
    :sswitch_c
    const/16 v7, 0xfa

    const/4 v8, 0x1

    const-string v10, "turnRightSpinSoft90Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 501
    :sswitch_d
    const/16 v7, 0x1f4

    const/4 v8, 0x1

    const-string v10, "turnRightSpinSoft180Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 504
    :sswitch_e
    const/16 v7, 0x2ee

    const/4 v8, 0x1

    const-string v10, "turnRightSpinSoft270Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 507
    :sswitch_f
    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const-string v10, "turnRightSpinSoft360Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 510
    :sswitch_10
    const/16 v7, 0xfa

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinHard90Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 513
    :sswitch_11
    const/16 v7, 0x1f4

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinHard180Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 516
    :sswitch_12
    const/16 v7, 0x2ee

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinHard270Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 519
    :sswitch_13
    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const-string v10, "turnLeftSpinHard360Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 522
    :sswitch_14
    const/16 v7, 0xfa

    const/4 v8, 0x1

    const-string v10, "turnRightSpinHard90Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 525
    :sswitch_15
    const/16 v7, 0x1f4

    const/4 v8, 0x1

    const-string v10, "turnRightSpinHard180Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 528
    :sswitch_16
    const/16 v7, 0x2ee

    const/4 v8, 0x1

    const-string v10, "turnRightSpinHard270Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 531
    :sswitch_17
    const/16 v7, 0x3e8

    const/4 v8, 0x1

    const-string v10, "turnRightSpinHard360Command"

    const-string v11, "turnCommand"

    const/4 v12, 0x0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 534
    :sswitch_18
    const/4 v8, 0x1

    const-string v10, "WAIT"

    const-string v11, "directionCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 537
    :sswitch_19
    const/4 v8, 0x1

    const-string v10, "beginningOfIf"

    const-string v11, "structureCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 540
    :sswitch_1a
    const/4 v8, 0x1

    const-string v10, "endOfIf"

    const-string v11, "structureCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 543
    :sswitch_1b
    const/4 v8, 0x1

    const-string v10, "turnCircuitD1OnCommand"

    const-string v11, "circuitCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 546
    :sswitch_1c
    const/4 v8, 0x1

    const-string v10, "turnCircuitD2OnCommand"

    const-string v11, "circuitCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 549
    :sswitch_1d
    const/4 v8, 0x1

    const-string v10, "turnCircuitD3OnCommand"

    const-string v11, "circuitCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 552
    :sswitch_1e
    const/4 v8, 0x1

    const-string v10, "turnCircuitD4OnCommand"

    const-string v11, "circuitCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 555
    :sswitch_1f
    const/4 v8, 0x1

    const-string v10, "turnSingleCircuitOnCommand"

    const-string v11, "circuitCommand"

    const/4 v12, 0x0

    move v7, v0

    move v9, v2

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 561
    .end local v0    # "duration":I
    .end local v6    # "speedChosen":Ljava/lang/String;
    .end local v15    # "commandBlock":Landroid/widget/RelativeLayout;
    .end local v16    # "durationDouble":D
    .end local v18    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v19    # "speedImage":Landroid/widget/ImageView;
    :cond_5
    invoke-static {v14}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->compile(Ljava/util/ArrayList;)V

    .line 562
    return-object v14

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x7f080057 -> :sswitch_7
        0x7f08007c -> :sswitch_1b
        0x7f08007d -> :sswitch_1c
        0x7f08007e -> :sswitch_1d
        0x7f08007f -> :sswitch_1e
        0x7f0800e9 -> :sswitch_1a
        0x7f080107 -> :sswitch_4
        0x7f080108 -> :sswitch_5
        0x7f080110 -> :sswitch_19
        0x7f080167 -> :sswitch_6
        0x7f080171 -> :sswitch_1
        0x7f080176 -> :sswitch_0
        0x7f08017f -> :sswitch_2
        0x7f080183 -> :sswitch_3
        0x7f0801ea -> :sswitch_1f
        0x7f0801ff -> :sswitch_11
        0x7f080200 -> :sswitch_12
        0x7f080201 -> :sswitch_13
        0x7f080202 -> :sswitch_10
        0x7f080203 -> :sswitch_15
        0x7f080204 -> :sswitch_16
        0x7f080205 -> :sswitch_17
        0x7f080206 -> :sswitch_14
        0x7f080207 -> :sswitch_9
        0x7f080208 -> :sswitch_a
        0x7f080209 -> :sswitch_b
        0x7f08020a -> :sswitch_8
        0x7f08020b -> :sswitch_d
        0x7f08020c -> :sswitch_e
        0x7f08020d -> :sswitch_f
        0x7f08020e -> :sswitch_c
        0x7f08024c -> :sswitch_18
    .end sparse-switch
.end method

.method static skipCode(ILcom/elenco/snapcoder/model/Bot;)V
    .locals 6
    .param p0, "startIndex"    # I
    .param p1, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, "ifCounter":I
    const/4 v0, 0x0

    .line 924
    .local v0, "endIfCounter":I
    move v1, p0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 925
    const-string v4, "MYTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", command: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "beginningOfIf"

    if-ne v3, v4, :cond_1

    .line 927
    add-int/lit8 v2, v2, 0x1

    .line 924
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_1
    sget-object v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commandsToBeExecuted:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endOfIf"

    if-ne v3, v4, :cond_0

    .line 929
    add-int/lit8 v0, v0, 0x1

    .line 930
    if-ne v2, v0, :cond_0

    .line 931
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/model/Bot;->setEndIfIndex(I)V

    .line 932
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/elenco/snapcoder/model/Bot;->setExecuteCommand(Z)V

    .line 937
    :cond_2
    return-void
.end method

.method public static stopExecutionTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 898
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 899
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 900
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 901
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 902
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->exTimer:Ljava/util/Timer;

    .line 903
    sput-boolean v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->keepLooping:Z

    .line 905
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->executionTimer:Ljava/util/Timer;

    .line 906
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 908
    sget-object v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uiCommandList:Landroid/widget/LinearLayout;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->clearCommandListHighlights(Landroid/widget/LinearLayout;I)V

    .line 910
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f08021a

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 911
    .local v0, "stopProgramButton":Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 912
    sput-boolean v3, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    .line 915
    return-void
.end method

.method static turnVisible(Landroid/widget/LinearLayout;IZ)V
    .locals 3
    .param p0, "codeViewBay"    # Landroid/widget/LinearLayout;
    .param p1, "index"    # I
    .param p2, "endedEarly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 350
    if-nez p2, :cond_4

    .line 351
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->turnVisible(Landroid/widget/LinearLayout;IZ)V

    .line 354
    sget v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 356
    add-int/lit8 v0, p1, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 357
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->turnVisible(Landroid/widget/LinearLayout;IZ)V

    .line 359
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_4
    if-lez p1, :cond_1

    .line 363
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->turnVisible(Landroid/widget/LinearLayout;IZ)V

    goto :goto_0
.end method
