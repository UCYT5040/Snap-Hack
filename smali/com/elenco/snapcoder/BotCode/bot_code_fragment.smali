.class public Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
.super Landroid/support/v4/app/Fragment;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;,
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$autoSave;,
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;,
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;,
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;,
        Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;
    }
.end annotation


# static fields
.field static dontModify:Z

.field public static draggedView:Landroid/view/View;

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


# instance fields
.field bot1:Lcom/elenco/snapcoder/model/Bot;

.field bot2:Lcom/elenco/snapcoder/model/Bot;

.field bot3:Lcom/elenco/snapcoder/model/Bot;

.field bot4:Lcom/elenco/snapcoder/model/Bot;

.field botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

.field botCodeFlyoutMenuIsMoving:Z

.field botCodeFlyoutMenuIsOpen:Z

.field public botCodeToChange:Lcom/elenco/snapcoder/AutoResizeTextView;

.field database:Lcom/google/firebase/database/FirebaseDatabase;

.field flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

.field flyOutFrame:Landroid/widget/RelativeLayout;

.field inflater:Landroid/view/LayoutInflater;

.field isLongPress:Z

.field isScrolling:Z

.field longClickDuration:I

.field private loopError:Z

.field scrollViewMoved:Z

.field selectedCircuits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field tempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field useTempList:Z

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 1334
    const/4 v0, 0x0

    sput-boolean v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->dontModify:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 88
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    .line 89
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot2:Lcom/elenco/snapcoder/model/Bot;

    .line 90
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot3:Lcom/elenco/snapcoder/model/Bot;

    .line 91
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot4:Lcom/elenco/snapcoder/model/Bot;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    .line 94
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 95
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    .line 102
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    .line 103
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsOpen:Z

    .line 1331
    const/16 v0, 0x12c

    iput v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->longClickDuration:I

    .line 1332
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    .line 1333
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->scrollViewMoved:Z

    .line 2632
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->useTempList:Z

    .line 2633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    return-void
.end method

.method private LoadPrograms()V
    .locals 17

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v14, 0x7f0800aa

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableLayout;

    .line 456
    .local v12, "tableLayout":Landroid/widget/TableLayout;
    new-instance v9, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v9}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 458
    .local v9, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    invoke-virtual {v9}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v8

    .line 460
    .local v8, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    .line 461
    .local v7, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MeeperDefaultProgram"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 463
    new-instance v2, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 465
    .local v2, "newRow":Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->inflater:Landroid/view/LayoutInflater;

    const v15, 0x7f0a0053

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 466
    .local v10, "routineLayout":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 467
    .local v11, "routineName":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    new-instance v14, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 472
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v14, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x43480000    # 200.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v6, v14

    .line 473
    .local v6, "pixelswidth":I
    iget v14, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x42200000    # 40.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v5, v14

    .line 474
    .local v5, "pixelsheight":I
    iget v14, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v4, v14

    .line 476
    .local v4, "pixelsbottom":I
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v3, v14, v5, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 477
    .local v3, "param":Landroid/widget/TableRow$LayoutParams;
    const/4 v14, 0x4

    iput v14, v3, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 478
    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    .line 480
    invoke-virtual {v2, v10, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const v14, 0x7f0801cc

    invoke-virtual {v2, v14}, Landroid/widget/TableRow;->setId(I)V

    .line 482
    invoke-virtual {v12, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 486
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "newRow":Landroid/widget/TableRow;
    .end local v3    # "param":Landroid/widget/TableRow$LayoutParams;
    .end local v4    # "pixelsbottom":I
    .end local v5    # "pixelsheight":I
    .end local v6    # "pixelswidth":I
    .end local v7    # "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    .end local v10    # "routineLayout":Landroid/widget/LinearLayout;
    .end local v11    # "routineName":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private OpenBotEdit(ILjava/lang/String;IZLandroid/widget/ImageView;)V
    .locals 10
    .param p1, "commandId"    # I
    .param p2, "duration"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "needInfinite"    # Z
    .param p5, "speedImage"    # Landroid/widget/ImageView;

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "botEditCommand"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1983
    new-instance v7, Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {v7}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;-><init>()V

    .line 1984
    .local v7, "botEditCommand":Lcom/elenco/snapcoder/BotCode/bot_edit_command;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 1985
    .local v9, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f0800f7

    const-string v1, "botEditCommand"

    invoke-virtual {v9, v0, v7, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1987
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .line 1988
    .local v8, "exTimer":Ljava/util/Timer;
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Ljava/lang/String;IILandroid/widget/ImageView;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v8, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2006
    .end local v7    # "botEditCommand":Lcom/elenco/snapcoder/BotCode/bot_edit_command;
    .end local v8    # "exTimer":Ljava/util/Timer;
    .end local v9    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private OpenBotSelection(IILandroid/widget/ImageView;)V
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "position"    # I
    .param p3, "speedImage"    # Landroid/widget/ImageView;

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "botEditSelection"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2011
    new-instance v0, Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;-><init>()V

    .line 2012
    .local v0, "botEditSelection":Lcom/elenco/snapcoder/BotCode/botEditFragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 2013
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "botEditSelection"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2015
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 2016
    .local v1, "exTimer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;IILandroid/widget/ImageView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2028
    .end local v0    # "botEditSelection":Lcom/elenco/snapcoder/BotCode/botEditFragment;
    .end local v1    # "exTimer":Ljava/util/Timer;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private OpenLoopEdit(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "duration"    # Ljava/lang/String;
    .param p2, "needDot"    # Z

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "loopEditCommand"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2033
    new-instance v2, Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-direct {v2}, Lcom/elenco/snapcoder/BotCode/loop_input;-><init>()V

    .line 2034
    .local v2, "loopEditCommand":Lcom/elenco/snapcoder/BotCode/loop_input;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 2035
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "loopEditCommand"

    invoke-virtual {v1, v3, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2037
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 2038
    .local v0, "exTimer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;

    invoke-direct {v3, p0, p2, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ZLjava/lang/String;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2065
    .end local v0    # "exTimer":Ljava/util/Timer;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v2    # "loopEditCommand":Lcom/elenco/snapcoder/BotCode/loop_input;
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->clearCode()V

    return-void
.end method

.method static synthetic access$400(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->respondToCommandDrop(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILjava/lang/String;IZLandroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/widget/ImageView;

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenBotEdit(ILjava/lang/String;IZLandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;IILandroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenBotSelection(IILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenLoopEdit(Ljava/lang/String;Z)V

    return-void
.end method

.method private addCommandToContainer(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZI)V
    .locals 17
    .param p1, "droppedView"    # Landroid/view/View;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "newCommandContainer"    # Landroid/widget/LinearLayout;
    .param p4, "isEndLoopCommandContainter"    # Z
    .param p5, "botType"    # I

    .prologue
    .line 690
    const/4 v4, 0x0

    .line 692
    .local v4, "botIndex":I
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 693
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    const v16, 0x7f080099

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 694
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 702
    .local v9, "draggedViewParent":Landroid/widget/LinearLayout;
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 705
    .local v11, "dropIndex":I
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getId()I

    move-result v15

    const v16, 0x7f080099

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    if-nez p4, :cond_a

    .line 707
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    if-nez v15, :cond_9

    .line 709
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 711
    .local v8, "draggedIndex":I
    const/4 v15, 0x1

    if-gt v8, v15, :cond_0

    .line 712
    const/4 v8, 0x2

    .line 715
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v11, v15, :cond_1

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v11, v15, -0x2

    .line 719
    :cond_1
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v16, v8, -0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 720
    .local v2, "affectBotsOfCommand":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v16, v8, -0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 724
    if-gez v11, :cond_6

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 726
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 742
    :goto_1
    const v15, 0x7f080064

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 743
    .local v5, "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v15, 0x7f080060

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 745
    .local v3, "botImage":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v5}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setBotnText(Landroid/widget/ImageButton;Ljava/util/ArrayList;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 747
    sget-object v7, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    check-cast v7, Landroid/widget/LinearLayout;

    .line 748
    .local v7, "dragged":Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    .line 749
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 799
    .end local v2    # "affectBotsOfCommand":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v3    # "botImage":Landroid/widget/ImageButton;
    .end local v5    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v7    # "dragged":Landroid/widget/LinearLayout;
    .end local v8    # "draggedIndex":I
    :cond_2
    :goto_2
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setListOfAffectedBotsLists(Ljava/util/ArrayList;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 804
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v16, 0x7f0801b4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 805
    .local v10, "dropActionsHereText":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v16, 0x7f0800e8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 808
    .local v12, "endHeaderImage":Landroid/widget/ImageView;
    const v15, 0x7f0700db

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v16, 0x7f0801d2

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 811
    .local v14, "openSaveButton":Landroid/widget/ImageButton;
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 813
    .end local v10    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v12    # "endHeaderImage":Landroid/widget/ImageView;
    .end local v14    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_3
    return-void

    .line 696
    .end local v9    # "draggedViewParent":Landroid/widget/LinearLayout;
    .end local v11    # "dropIndex":I
    :cond_4
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .restart local v9    # "draggedViewParent":Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 699
    .end local v9    # "draggedViewParent":Landroid/widget/LinearLayout;
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "draggedViewParent":Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 729
    .restart local v2    # "affectBotsOfCommand":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v8    # "draggedIndex":I
    .restart local v11    # "dropIndex":I
    :cond_6
    const/4 v15, 0x2

    if-gt v11, v15, :cond_7

    const/4 v15, -0x1

    if-le v11, v15, :cond_7

    .line 730
    const/4 v15, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 731
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 732
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 733
    :cond_7
    const/4 v15, 0x2

    if-le v11, v15, :cond_8

    .line 734
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 735
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v16, v11, -0x2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 736
    add-int/lit8 v4, v11, -0x2

    goto/16 :goto_1

    .line 738
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 739
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto/16 :goto_1

    .line 752
    .end local v2    # "affectBotsOfCommand":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v8    # "draggedIndex":I
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_2

    .line 755
    :cond_a
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getId()I

    move-result v15

    const v16, 0x7f0800aa

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 757
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v13

    .line 758
    .local v13, "index":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v6, "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    packed-switch p5, :pswitch_data_0

    .line 774
    :goto_3
    :pswitch_0
    if-ltz v13, :cond_e

    const/4 v15, 0x2

    if-ge v13, v15, :cond_e

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v15

    const v16, 0x7f080057

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/widget/LinearLayout;->getId()I

    move-result v15

    const v16, 0x7f0800e9

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 777
    :cond_b
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 778
    const/4 v15, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 779
    const/4 v4, 0x1

    .line 797
    :goto_4
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 762
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->useTempList:Z

    if-eqz v15, :cond_c

    .line 763
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    invoke-static {v15}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->cloneList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 764
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->useTempList:Z

    goto :goto_3

    .line 766
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-static {v15}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->cloneList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 768
    goto :goto_3

    .line 770
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-static {v15}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->cloneList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_3

    .line 781
    :cond_d
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 782
    const/4 v15, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 783
    const/4 v4, 0x0

    goto :goto_4

    .line 785
    :cond_e
    const/4 v15, 0x1

    if-le v13, v15, :cond_f

    .line 786
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v16, v13, -0x2

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 787
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 788
    add-int/lit8 v4, v13, -0x2

    goto :goto_4

    .line 792
    :cond_f
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 794
    sget-object v15, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_4

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private clearCode()V
    .locals 6

    .prologue
    .line 2068
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2070
    .local v0, "container":Landroid/widget/LinearLayout;
    sget-boolean v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    if-eqz v4, :cond_0

    .line 2071
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 2073
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 2074
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v5, 0x7f0801b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2075
    .local v1, "dropActionsHereText":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2076
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v5, 0x7f0800e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2077
    .local v2, "endHeaderImage":Landroid/widget/ImageView;
    const v4, 0x7f0700db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2078
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v5, 0x7f0801d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 2079
    .local v3, "openSaveButton":Landroid/widget/ImageButton;
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2081
    sget-object v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2082
    sget-object v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setListOfAffectedBotsLists(Ljava/util/ArrayList;)V

    .line 2083
    return-void
.end method

.method private static cloneList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    .local p0, "test":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v0, "cloneCmd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 818
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_0
    return-object v0
.end method

.method public static getListOfAffectedBotsLists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1679
    sget-object v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private postCheckLoops(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 10
    .param p1, "droppedView"    # Landroid/view/View;
    .param p2, "container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1688
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v9, 0x7f080099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1690
    .local v0, "codeBay":Landroid/widget/LinearLayout;
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1691
    .local v1, "draggedIndex":I
    const/4 v8, 0x1

    if-gt v1, v8, :cond_0

    .line 1692
    const/4 v1, 0x2

    .line 1695
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1697
    .local v2, "dropIndex":I
    const/4 v8, 0x2

    if-gt v2, v8, :cond_6

    const/4 v8, -0x1

    if-le v2, v8, :cond_6

    .line 1698
    const/4 v2, 0x0

    .line 1707
    :goto_0
    const/4 v7, 0x0

    .line 1708
    .local v7, "loopStartCount":I
    const/4 v6, 0x0

    .line 1709
    .local v6, "loopEndCount":I
    const/4 v5, 0x0

    .line 1710
    .local v5, "ifStartCount":I
    const/4 v4, 0x0

    .line 1712
    .local v4, "ifEndCount":I
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_18

    .line 1713
    add-int/lit8 v8, v1, -0x2

    if-ge v2, v8, :cond_d

    .line 1714
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    add-int/lit8 v8, v2, 0x2

    if-ge v3, v8, :cond_2

    .line 1715
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_9

    .line 1716
    add-int/lit8 v7, v7, 0x1

    .line 1721
    :cond_1
    :goto_2
    if-le v6, v7, :cond_a

    .line 1722
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1729
    :cond_2
    move v3, v1

    :goto_3
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_4

    .line 1730
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_b

    .line 1731
    add-int/lit8 v5, v5, 0x1

    .line 1736
    :cond_3
    :goto_4
    if-le v5, v4, :cond_c

    .line 1737
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1742
    :cond_4
    if-le v4, v5, :cond_5

    .line 1743
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1978
    .end local v3    # "i":I
    :cond_5
    :goto_5
    return-void

    .line 1699
    .end local v4    # "ifEndCount":I
    .end local v5    # "ifStartCount":I
    .end local v6    # "loopEndCount":I
    .end local v7    # "loopStartCount":I
    :cond_6
    const/4 v8, 0x2

    if-le v2, v8, :cond_7

    .line 1700
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 1701
    :cond_7
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_8

    .line 1702
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    goto :goto_0

    .line 1704
    :cond_8
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    goto :goto_0

    .line 1717
    .restart local v3    # "i":I
    .restart local v4    # "ifEndCount":I
    .restart local v5    # "ifStartCount":I
    .restart local v6    # "loopEndCount":I
    .restart local v7    # "loopStartCount":I
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_1

    .line 1718
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1714
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1732
    :cond_b
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_3

    .line 1733
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1729
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1746
    .end local v3    # "i":I
    :cond_d
    add-int/lit8 v8, v1, -0x2

    if-le v2, v8, :cond_5

    .line 1747
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_6
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_e

    .line 1748
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_10

    .line 1763
    :cond_e
    :goto_7
    move v3, v1

    :goto_8
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_f

    .line 1764
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1779
    :cond_f
    :goto_9
    if-le v5, v4, :cond_5

    .line 1780
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto :goto_5

    .line 1751
    :cond_10
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_12

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_12

    .line 1752
    add-int/lit8 v7, v7, 0x1

    .line 1757
    :cond_11
    :goto_a
    if-ge v7, v6, :cond_13

    .line 1758
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto :goto_7

    .line 1753
    :cond_12
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_11

    .line 1754
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1747
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1767
    :cond_14
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_16

    .line 1768
    add-int/lit8 v5, v5, 0x1

    .line 1773
    :cond_15
    :goto_b
    if-le v4, v5, :cond_17

    .line 1774
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto :goto_9

    .line 1769
    :cond_16
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_15

    .line 1770
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1763
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1783
    .end local v3    # "i":I
    :cond_18
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_2b

    .line 1784
    add-int/lit8 v8, v1, -0x2

    if-ge v2, v8, :cond_20

    .line 1785
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "i":I
    :goto_c
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_1a

    .line 1786
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_1c

    .line 1787
    add-int/lit8 v7, v7, 0x1

    .line 1792
    :cond_19
    :goto_d
    if-le v7, v6, :cond_1d

    .line 1793
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1799
    :cond_1a
    move v3, v1

    :goto_e
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_1f

    .line 1800
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_1e

    .line 1801
    add-int/lit8 v5, v5, 0x1

    .line 1799
    :cond_1b
    :goto_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 1788
    :cond_1c
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_19

    .line 1789
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 1785
    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 1802
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_1b

    .line 1803
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1807
    :cond_1f
    if-le v4, v5, :cond_5

    .line 1808
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1811
    .end local v3    # "i":I
    :cond_20
    add-int/lit8 v8, v1, -0x2

    if-le v2, v8, :cond_5

    .line 1812
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_10
    add-int/lit8 v8, v2, 0x2

    if-ge v3, v8, :cond_21

    .line 1813
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_23

    .line 1830
    :cond_21
    :goto_11
    move v3, v1

    :goto_12
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_22

    .line 1831
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_27

    .line 1847
    :cond_22
    :goto_13
    if-le v5, v4, :cond_5

    .line 1848
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1816
    :cond_23
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_25

    .line 1817
    add-int/lit8 v7, v7, 0x1

    .line 1822
    :cond_24
    :goto_14
    if-le v6, v7, :cond_26

    .line 1823
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto :goto_11

    .line 1818
    :cond_25
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_24

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_24

    .line 1819
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1812
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1834
    :cond_27
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_29

    .line 1835
    add-int/lit8 v5, v5, 0x1

    .line 1840
    :cond_28
    :goto_15
    if-le v4, v5, :cond_2a

    .line 1841
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto :goto_13

    .line 1836
    :cond_29
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_28

    .line 1837
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1830
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1851
    .end local v3    # "i":I
    :cond_2b
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_3d

    .line 1852
    add-int/lit8 v8, v1, -0x2

    if-ge v2, v8, :cond_34

    .line 1853
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_16
    add-int/lit8 v8, v2, 0x2

    if-ge v3, v8, :cond_2d

    .line 1854
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_30

    .line 1855
    add-int/lit8 v5, v5, 0x1

    .line 1860
    :cond_2c
    :goto_17
    if-le v4, v5, :cond_31

    .line 1861
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1868
    :cond_2d
    move v3, v1

    :goto_18
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_2f

    .line 1869
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_32

    .line 1870
    add-int/lit8 v7, v7, 0x1

    .line 1875
    :cond_2e
    :goto_19
    if-le v7, v6, :cond_33

    .line 1876
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1881
    :cond_2f
    if-le v6, v7, :cond_5

    .line 1882
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1856
    :cond_30
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_2c

    .line 1857
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1853
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1871
    :cond_32
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_2e

    .line 1872
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 1868
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1884
    .end local v3    # "i":I
    :cond_34
    add-int/lit8 v8, v1, -0x2

    if-le v2, v8, :cond_5

    .line 1885
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_1a
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_36

    .line 1886
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_39

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_39

    .line 1887
    add-int/lit8 v5, v5, 0x1

    .line 1892
    :cond_35
    :goto_1b
    if-ge v5, v4, :cond_3a

    .line 1893
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1898
    :cond_36
    move v3, v1

    :goto_1c
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_38

    .line 1899
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_3b

    .line 1900
    add-int/lit8 v7, v7, 0x1

    .line 1905
    :cond_37
    :goto_1d
    if-le v6, v7, :cond_3c

    .line 1906
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1911
    :cond_38
    if-le v7, v6, :cond_5

    .line 1912
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1888
    :cond_39
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_35

    .line 1889
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1885
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1901
    :cond_3b
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_37

    .line 1902
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 1898
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1915
    .end local v3    # "i":I
    :cond_3d
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_5

    .line 1916
    add-int/lit8 v8, v1, -0x2

    if-ge v2, v8, :cond_45

    .line 1917
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "i":I
    :goto_1e
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_3f

    .line 1918
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_41

    .line 1919
    add-int/lit8 v5, v5, 0x1

    .line 1924
    :cond_3e
    :goto_1f
    if-le v5, v4, :cond_42

    .line 1925
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1931
    :cond_3f
    move v3, v1

    :goto_20
    add-int/lit8 v8, v2, 0x2

    if-lt v3, v8, :cond_44

    .line 1932
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_43

    .line 1933
    add-int/lit8 v7, v7, 0x1

    .line 1931
    :cond_40
    :goto_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 1920
    :cond_41
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_3e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_3e

    .line 1921
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1917
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 1934
    :cond_43
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_40

    .line 1935
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1939
    :cond_44
    if-le v6, v7, :cond_5

    .line 1940
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1943
    .end local v3    # "i":I
    :cond_45
    add-int/lit8 v8, v1, -0x2

    if-le v2, v8, :cond_5

    .line 1944
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_22
    add-int/lit8 v8, v2, 0x2

    if-ge v3, v8, :cond_47

    .line 1945
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_4a

    .line 1946
    add-int/lit8 v5, v5, 0x1

    .line 1951
    :cond_46
    :goto_23
    if-le v4, v5, :cond_4b

    .line 1952
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1959
    :cond_47
    move v3, v1

    :goto_24
    add-int/lit8 v8, v2, 0x2

    if-gt v3, v8, :cond_49

    .line 1960
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_4c

    .line 1961
    add-int/lit8 v7, v7, 0x1

    .line 1966
    :cond_48
    :goto_25
    if-le v6, v7, :cond_4d

    .line 1967
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    .line 1973
    :cond_49
    if-le v7, v6, :cond_5

    .line 1974
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loopError:Z

    goto/16 :goto_5

    .line 1947
    :cond_4a
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_46

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    if-eq v8, v9, :cond_46

    .line 1948
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1944
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1962
    :cond_4c
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_48

    .line 1963
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 1959
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24
.end method

.method private respondToCommandDrop(Landroid/view/View;)V
    .locals 27
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 529
    .local v10, "container":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 530
    .local v11, "newCommandContainer":Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    .line 532
    .local v17, "endLoopCommandContainer":Landroid/widget/LinearLayout;
    const-string v7, "Fast"

    .line 534
    .local v7, "setSpeed":Ljava/lang/String;
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    const v3, 0x7f0801f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 535
    .local v24, "speedImage":Landroid/widget/ImageView;
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080167

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080057

    if-eq v2, v3, :cond_0

    if-eqz v24, :cond_0

    .line 536
    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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

    if-ne v2, v3, :cond_6

    .line 537
    const-string v7, "Fast"

    .line 545
    :cond_0
    :goto_0
    const/4 v13, 0x1

    .line 547
    .local v13, "botType":I
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 646
    const-string v2, "MYTAG"

    const-string v3, "draggedview is returning default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_1
    const v2, 0x7f080067

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 652
    .local v22, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    const v3, 0x7f080067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 653
    .local v26, "tempTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    if-eqz v26, :cond_1

    .line 654
    invoke-virtual/range {v26 .. v26}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_1
    const v2, 0x7f0800b0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 658
    .local v21, "commentText":Landroid/widget/EditText;
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/EditText;

    .line 659
    .local v25, "tempCommentText":Landroid/widget/EditText;
    if-eqz v25, :cond_2

    .line 660
    invoke-virtual/range {v25 .. v25}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_2
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const v3, 0x7f080167

    if-eq v2, v3, :cond_3

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const v3, 0x7f080057

    if-eq v2, v3, :cond_3

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const v3, 0x7f080110

    if-eq v2, v3, :cond_3

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const v3, 0x7f0800e9

    if-ne v2, v3, :cond_4

    .line 666
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->postCheckLoops(Landroid/view/View;Landroid/widget/LinearLayout;)V

    .line 671
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->addCommandToContainer(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZI)V

    .line 672
    if-eqz v17, :cond_5

    .line 673
    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v10

    move/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->addCommandToContainer(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZI)V

    .line 676
    :cond_5
    const/16 v23, 0x2

    .local v23, "i":I
    :goto_2
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_8

    .line 677
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 678
    .local v20, "command":Landroid/widget/RelativeLayout;
    const v2, 0x7f0800a0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 679
    const v2, 0x7f0800af

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 676
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 538
    .end local v13    # "botType":I
    .end local v20    # "command":Landroid/widget/RelativeLayout;
    .end local v21    # "commentText":Landroid/widget/EditText;
    .end local v22    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v23    # "i":I
    .end local v25    # "tempCommentText":Landroid/widget/EditText;
    .end local v26    # "tempTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const v4, 0x7f0700e3

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 539
    const-string v7, "Slow"

    goto/16 :goto_0

    .line 541
    :cond_7
    const-string v7, "Fast"

    goto/16 :goto_0

    .line 549
    .restart local v13    # "botType":I
    :sswitch_0
    const v3, 0x7f080176

    const v4, 0x7f0a0025

    const v5, 0x7f0700dc

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 550
    goto/16 :goto_1

    .line 552
    :sswitch_1
    const v3, 0x7f080171

    const v4, 0x7f0a0025

    const v5, 0x7f0700b0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 553
    goto/16 :goto_1

    .line 555
    :sswitch_2
    const v3, 0x7f080183

    const v4, 0x7f0a0025

    const v5, 0x7f070112

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 556
    goto/16 :goto_1

    .line 558
    :sswitch_3
    const v3, 0x7f08017f

    const v4, 0x7f0a0025

    const v5, 0x7f07010d

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 559
    goto/16 :goto_1

    .line 561
    :sswitch_4
    const v3, 0x7f080108

    const v4, 0x7f0a0025

    const v5, 0x7f070104

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 562
    goto/16 :goto_1

    .line 564
    :sswitch_5
    const v3, 0x7f080107

    const v4, 0x7f0a0025

    const v5, 0x7f0700ff

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 565
    goto/16 :goto_1

    .line 567
    :sswitch_6
    const v3, 0x7f080167

    const v4, 0x7f0a0027

    const v5, 0x7f0700e4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 569
    const v3, 0x7f080057

    const v4, 0x7f0a0023

    const v5, 0x7f0700e2

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v17

    .line 570
    goto/16 :goto_1

    .line 572
    :sswitch_7
    const v3, 0x7f080057

    const v4, 0x7f0a0023

    const v5, 0x7f0700e2

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 573
    goto/16 :goto_1

    .line 575
    :sswitch_8
    const v3, 0x7f08020a

    const v4, 0x7f0a0029

    const v5, 0x7f07010c

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 576
    goto/16 :goto_1

    .line 578
    :sswitch_9
    const v3, 0x7f080207

    const v4, 0x7f0a0029

    const v5, 0x7f070109

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 579
    goto/16 :goto_1

    .line 581
    :sswitch_a
    const v3, 0x7f080208

    const v4, 0x7f0a0029

    const v5, 0x7f07010a

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 582
    goto/16 :goto_1

    .line 584
    :sswitch_b
    const v3, 0x7f080209

    const v4, 0x7f0a0029

    const v5, 0x7f07010b

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 585
    goto/16 :goto_1

    .line 587
    :sswitch_c
    const v3, 0x7f08020e

    const v4, 0x7f0a0029

    const v5, 0x7f070111

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 588
    goto/16 :goto_1

    .line 590
    :sswitch_d
    const v3, 0x7f08020b

    const v4, 0x7f0a0029

    const v5, 0x7f07010e

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 591
    goto/16 :goto_1

    .line 593
    :sswitch_e
    const v3, 0x7f08020c

    const v4, 0x7f0a0029

    const v5, 0x7f07010f

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 594
    goto/16 :goto_1

    .line 596
    :sswitch_f
    const v3, 0x7f08020d

    const v4, 0x7f0a0029

    const v5, 0x7f070110

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 597
    goto/16 :goto_1

    .line 599
    :sswitch_10
    const v3, 0x7f080202

    const v4, 0x7f0a0029

    const v5, 0x7f0700fe

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 600
    goto/16 :goto_1

    .line 602
    :sswitch_11
    const v3, 0x7f0801ff

    const v4, 0x7f0a0029

    const v5, 0x7f0700fb

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 603
    goto/16 :goto_1

    .line 605
    :sswitch_12
    const v3, 0x7f080200

    const v4, 0x7f0a0029

    const v5, 0x7f0700fc

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 606
    goto/16 :goto_1

    .line 608
    :sswitch_13
    const v3, 0x7f080201

    const v4, 0x7f0a0029

    const v5, 0x7f0700fd

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 609
    goto/16 :goto_1

    .line 611
    :sswitch_14
    const v3, 0x7f080206

    const v4, 0x7f0a0029

    const v5, 0x7f070103

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 612
    goto/16 :goto_1

    .line 614
    :sswitch_15
    const v3, 0x7f080203

    const v4, 0x7f0a0029

    const v5, 0x7f070100

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 615
    goto/16 :goto_1

    .line 617
    :sswitch_16
    const v3, 0x7f080204

    const v4, 0x7f0a0029

    const v5, 0x7f070101

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 618
    goto/16 :goto_1

    .line 620
    :sswitch_17
    const v3, 0x7f080205

    const v4, 0x7f0a0029

    const v5, 0x7f070102

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 621
    goto/16 :goto_1

    .line 623
    :sswitch_18
    const v3, 0x7f08024c

    const v4, 0x7f0a0025

    const v5, 0x7f070113

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 624
    goto/16 :goto_1

    .line 626
    :sswitch_19
    const v3, 0x7f08007c

    const v4, 0x7f0a0025

    const v5, 0x7f0700d4

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 627
    const/4 v13, 0x3

    .line 628
    goto/16 :goto_1

    .line 630
    :sswitch_1a
    const v3, 0x7f08007d

    const v4, 0x7f0a0025

    const v5, 0x7f0700d5

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 631
    const/4 v13, 0x3

    .line 632
    goto/16 :goto_1

    .line 634
    :sswitch_1b
    const v3, 0x7f08007e

    const v4, 0x7f0a0025

    const v5, 0x7f0700d6

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 635
    const/4 v13, 0x3

    .line 636
    goto/16 :goto_1

    .line 638
    :sswitch_1c
    const v3, 0x7f08007f

    const v4, 0x7f0a0025

    const v5, 0x7f0700d7

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 639
    const/4 v13, 0x3

    .line 640
    goto/16 :goto_1

    .line 642
    :sswitch_1d
    const v3, 0x7f0801ea

    const v4, 0x7f0a0025

    const v5, 0x7f0700af

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 643
    const/4 v13, 0x3

    .line 644
    goto/16 :goto_1

    .line 684
    .restart local v21    # "commentText":Landroid/widget/EditText;
    .restart local v22    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v23    # "i":I
    .restart local v25    # "tempCommentText":Landroid/widget/EditText;
    .restart local v26    # "tempTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->indentCode(Landroid/widget/LinearLayout;)V

    .line 685
    return-void

    .line 547
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080057 -> :sswitch_7
        0x7f08007c -> :sswitch_19
        0x7f08007d -> :sswitch_1a
        0x7f08007e -> :sswitch_1b
        0x7f08007f -> :sswitch_1c
        0x7f080107 -> :sswitch_5
        0x7f080108 -> :sswitch_4
        0x7f080167 -> :sswitch_6
        0x7f080171 -> :sswitch_1
        0x7f080176 -> :sswitch_0
        0x7f08017f -> :sswitch_3
        0x7f080183 -> :sswitch_2
        0x7f0801ea -> :sswitch_1d
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


# virtual methods
.method LoadInBots()V
    .locals 7

    .prologue
    .line 1662
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v1

    .line 1663
    .local v1, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1664
    const-string v3, "MYTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load in bots size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1666
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 1667
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    const-string v4, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1671
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    new-instance v2, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v2}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 1672
    .local v2, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 1673
    const-string v3, "Blue"

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 1674
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->selectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    .end local v2    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    return-void
.end method

.method LoadProgram(Ljava/lang/String;)V
    .locals 33
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    .line 1436
    const/16 v30, -0x1

    .line 1437
    .local v30, "programId":I
    const/16 v25, 0x0

    .line 1439
    .local v25, "index":I
    const/16 v28, 0x0

    .line 1440
    .local v28, "newCommandContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1442
    .local v18, "container":Landroid/widget/LinearLayout;
    new-instance v32, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct/range {v32 .. v32}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 1443
    .local v32, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v16, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct/range {v16 .. v16}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 1444
    .local v16, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v14, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 1445
    .local v14, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v11, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 1447
    .local v11, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual/range {v32 .. v32}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v31

    .line 1448
    .local v31, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v15

    .line 1449
    .local v15, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v13

    .line 1450
    .local v13, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    invoke-virtual {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v10

    .line 1452
    .local v10, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_0

    .line 1453
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1454
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v30

    .line 1459
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v30

    if-le v0, v2, :cond_f

    .line 1460
    const/16 v19, 0x1

    .line 1461
    .local v19, "doOnce":Z
    const/16 v24, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_d

    .line 1462
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v2

    move/from16 v0, v30

    if-ne v2, v0, :cond_c

    .line 1463
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandSQL()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 1563
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f0801b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 1564
    .local v20, "dropActionsHereText":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1566
    const v2, 0x7f080067

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 1568
    .local v21, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f0801d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageButton;

    .line 1569
    .local v29, "openSaveButton":Landroid/widget/ImageButton;
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1571
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandSQL()Ljava/lang/String;

    move-result-object v2

    const-string v3, "beginningOfLoop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1572
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getIteration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    :goto_4
    const v2, 0x7f0800b0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 1583
    .local v17, "commentText":Landroid/widget/EditText;
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1584
    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1585
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getComment()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    .local v22, "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandSQL()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_2
    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 1597
    :goto_6
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_b

    .line 1598
    move/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v3

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 1599
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_a

    .line 1600
    move/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v3

    move/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getBotId()I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 1601
    move/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_3
    :goto_9
    packed-switch v2, :pswitch_data_2

    .line 1616
    const/16 v23, 0x0

    .line 1618
    .local v23, "foundConnectedBot":Z
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1619
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/elenco/snapcoder/model/Bot;

    .line 1620
    .local v9, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v9}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1621
    const/16 v23, 0x1

    .line 1622
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    .end local v9    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_5
    if-nez v23, :cond_6

    .line 1631
    if-eqz v19, :cond_6

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->PopUp()V

    .line 1633
    const/16 v19, 0x0

    .line 1599
    .end local v23    # "foundConnectedBot":Z
    :cond_6
    :goto_a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_8

    .line 1452
    .end local v17    # "commentText":Landroid/widget/EditText;
    .end local v19    # "doOnce":Z
    .end local v20    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v21    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v22    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v26    # "j":I
    .end local v27    # "k":I
    .end local v29    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 1463
    .restart local v19    # "doOnce":Z
    :sswitch_0
    const-string v4, "moveForwardCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "moveBackwardCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "turnLeftCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "turnRightCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "hardTurnLeftCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "hardTurnRightCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "beginningOfLoop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "endOfLoop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "turnLeftSpinSoft90Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "turnLeftSpinSoft180Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v4, "turnLeftSpinSoft270Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "turnLeftSpinSoft360Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v4, "turnRightSpinSoft90Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v4, "turnRightSpinSoft180Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "turnRightSpinSoft270Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "turnRightSpinSoft360Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "turnLeftSpinHard90Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "turnLeftSpinHard180Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "turnLeftSpinHard270Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "turnLeftSpinHard360Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v4, "turnRightSpinHard90Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string v4, "turnRightSpinHard180Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string v4, "turnRightSpinHard270Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v4, "turnRightSpinHard360Command"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_18
    const-string v4, "WAIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v4, "turnCircuitD1OnCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const-string v4, "turnCircuitD2OnCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const-string v4, "turnCircuitD3OnCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v4, "turnCircuitD4OnCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v4, "turnSingleCircuitOnCommand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_2

    .line 1465
    :pswitch_0
    const v3, 0x7f080176

    const v4, 0x7f0a0025

    const v5, 0x7f0700dc

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1466
    goto/16 :goto_3

    .line 1468
    :pswitch_1
    const v3, 0x7f080171

    const v4, 0x7f0a0025

    const v5, 0x7f0700b0

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1469
    goto/16 :goto_3

    .line 1471
    :pswitch_2
    const v3, 0x7f08017f

    const v4, 0x7f0a0025

    const v5, 0x7f07010d

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1472
    goto/16 :goto_3

    .line 1474
    :pswitch_3
    const v3, 0x7f080183

    const v4, 0x7f0a0025

    const v5, 0x7f070112

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1475
    goto/16 :goto_3

    .line 1477
    :pswitch_4
    const v3, 0x7f080107

    const v4, 0x7f0a0025

    const v5, 0x7f0700ff

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1478
    goto/16 :goto_3

    .line 1480
    :pswitch_5
    const v3, 0x7f080108

    const v4, 0x7f0a0025

    const v5, 0x7f070104

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1481
    goto/16 :goto_3

    .line 1483
    :pswitch_6
    const v3, 0x7f080167

    const v4, 0x7f0a0027

    const v5, 0x7f0700e4

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1484
    goto/16 :goto_3

    .line 1486
    :pswitch_7
    const v3, 0x7f080057

    const v4, 0x7f0a0023

    const v5, 0x7f0700e2

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1487
    goto/16 :goto_3

    .line 1489
    :pswitch_8
    const v3, 0x7f08020a

    const v4, 0x7f0a0029

    const v5, 0x7f07010c

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1490
    goto/16 :goto_3

    .line 1492
    :pswitch_9
    const v3, 0x7f080207

    const v4, 0x7f0a0029

    const v5, 0x7f070109

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1493
    goto/16 :goto_3

    .line 1495
    :pswitch_a
    const v3, 0x7f080208

    const v4, 0x7f0a0029

    const v5, 0x7f07010a

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1496
    goto/16 :goto_3

    .line 1498
    :pswitch_b
    const v3, 0x7f080209

    const v4, 0x7f0a0029

    const v5, 0x7f07010b

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1499
    goto/16 :goto_3

    .line 1501
    :pswitch_c
    const v3, 0x7f08020e

    const v4, 0x7f0a0029

    const v5, 0x7f070111

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1502
    goto/16 :goto_3

    .line 1504
    :pswitch_d
    const v3, 0x7f08020b

    const v4, 0x7f0a0029

    const v5, 0x7f07010e

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1505
    goto/16 :goto_3

    .line 1507
    :pswitch_e
    const v3, 0x7f08020c

    const v4, 0x7f0a0029

    const v5, 0x7f07010f

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1508
    goto/16 :goto_3

    .line 1510
    :pswitch_f
    const v3, 0x7f08020d

    const v4, 0x7f0a0029

    const v5, 0x7f070110

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1511
    goto/16 :goto_3

    .line 1513
    :pswitch_10
    const v3, 0x7f080202

    const v4, 0x7f0a0029

    const v5, 0x7f0700fe

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1514
    goto/16 :goto_3

    .line 1516
    :pswitch_11
    const v3, 0x7f0801ff

    const v4, 0x7f0a0029

    const v5, 0x7f0700fb

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1517
    goto/16 :goto_3

    .line 1519
    :pswitch_12
    const v3, 0x7f080200

    const v4, 0x7f0a0029

    const v5, 0x7f0700fc

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1520
    goto/16 :goto_3

    .line 1522
    :pswitch_13
    const v3, 0x7f080201

    const v4, 0x7f0a0029

    const v5, 0x7f0700fd

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1523
    goto/16 :goto_3

    .line 1525
    :pswitch_14
    const v3, 0x7f080206

    const v4, 0x7f0a0029

    const v5, 0x7f070103

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1526
    goto/16 :goto_3

    .line 1528
    :pswitch_15
    const v3, 0x7f080203

    const v4, 0x7f0a0029

    const v5, 0x7f070100

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1529
    goto/16 :goto_3

    .line 1531
    :pswitch_16
    const v3, 0x7f080204

    const v4, 0x7f0a0029

    const v5, 0x7f070101

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1532
    goto/16 :goto_3

    .line 1534
    :pswitch_17
    const v3, 0x7f080205

    const v4, 0x7f0a0029

    const v5, 0x7f070102

    const/4 v6, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1535
    goto/16 :goto_3

    .line 1537
    :pswitch_18
    const v3, 0x7f08024c

    const v4, 0x7f0a0025

    const v5, 0x7f070113

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1538
    goto/16 :goto_3

    .line 1541
    :pswitch_19
    const v3, 0x7f08007c

    const v4, 0x7f0a0025

    const v5, 0x7f0700d4

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1543
    goto/16 :goto_3

    .line 1545
    :pswitch_1a
    const v3, 0x7f08007d

    const v4, 0x7f0a0025

    const v5, 0x7f0700d5

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1547
    goto/16 :goto_3

    .line 1549
    :pswitch_1b
    const v3, 0x7f08007e

    const v4, 0x7f0a0025

    const v5, 0x7f0700d6

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1551
    goto/16 :goto_3

    .line 1553
    :pswitch_1c
    const v3, 0x7f08007f

    const v4, 0x7f0a0025

    const v5, 0x7f0700d7

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1555
    goto/16 :goto_3

    .line 1557
    :pswitch_1d
    const v3, 0x7f0801ea

    const v4, 0x7f0a0025

    const v5, 0x7f0700af

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v28

    goto/16 :goto_3

    .line 1574
    .restart local v20    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .restart local v21    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v29    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_8
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v2

    const v3, 0x47c15200    # 98980.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 1575
    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1577
    :cond_9
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1589
    .restart local v17    # "commentText":Landroid/widget/EditText;
    .restart local v22    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    :sswitch_1e
    const-string v4, "beginningOfLoop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_5

    :sswitch_1f
    const-string v4, "endOfLoop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_5

    :sswitch_20
    const-string v4, "WAIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_5

    .line 1593
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1601
    .restart local v26    # "j":I
    .restart local v27    # "k":I
    :sswitch_21
    const-string v4, "BlueVirtual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_9

    :sswitch_22
    const-string v4, "GreenVirtual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_9

    :sswitch_23
    const-string v4, "OrangeVirtual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_9

    :sswitch_24
    const-string v4, "YellowVirtual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_9

    .line 1603
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1606
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot2:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1609
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot3:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1612
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot4:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1597
    .end local v27    # "k":I
    :cond_a
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 1642
    :cond_b
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1644
    add-int/lit8 v2, v25, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1645
    add-int/lit8 v25, v25, 0x1

    .line 1461
    .end local v17    # "commentText":Landroid/widget/EditText;
    .end local v20    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v21    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v22    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v26    # "j":I
    .end local v29    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 1648
    :cond_d
    sget-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setListOfAffectedBotsLists(Ljava/util/ArrayList;)V

    .line 1650
    const/16 v24, 0x2

    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v24

    if-ge v0, v2, :cond_e

    .line 1651
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1652
    .local v12, "command":Landroid/widget/RelativeLayout;
    const v2, 0x7f0800a0

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    const v2, 0x7f0800af

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 1657
    .end local v12    # "command":Landroid/widget/RelativeLayout;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->indentCode(Landroid/widget/LinearLayout;)V

    .line 1659
    .end local v19    # "doOnce":Z
    :cond_f
    return-void

    .line 1463
    nop

    :sswitch_data_0
    .sparse-switch
        -0x713563b4 -> :sswitch_16
        -0x6a2f5b9c -> :sswitch_8
        -0x5f86f117 -> :sswitch_f
        -0x5f665f3d -> :sswitch_10
        -0x5dce63e4 -> :sswitch_4
        -0x5767268d -> :sswitch_11
        -0x538c6e50 -> :sswitch_1c
        -0x506d4d09 -> :sswitch_0
        -0x47d5df6f -> :sswitch_1b
        -0x45b8b3f0 -> :sswitch_a
        -0x3c1f508e -> :sswitch_1a
        -0x337f0779 -> :sswitch_2
        -0x3068c1ad -> :sswitch_19
        -0x2513d3a8 -> :sswitch_6
        -0x1f90f553 -> :sswitch_d
        -0x11306196 -> :sswitch_17
        -0xb36d249 -> :sswitch_5
        -0xb049fb7 -> :sswitch_c
        -0x3ba358 -> :sswitch_14
        0x288975 -> :sswitch_18
        0x89ddb91 -> :sswitch_12
        0x14655eac -> :sswitch_3
        0x1a4c4e2e -> :sswitch_b
        0x26ec0fc8 -> :sswitch_1d
        0x299c55d7 -> :sswitch_1
        0x2ec59a2e -> :sswitch_15
        0x40740ccb -> :sswitch_e
        0x5840a9d6 -> :sswitch_7
        0x5a4249f2 -> :sswitch_9
        0x68a2ddaf -> :sswitch_13
    .end sparse-switch

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 1589
    :sswitch_data_1
    .sparse-switch
        -0x2513d3a8 -> :sswitch_1e
        0x288975 -> :sswitch_20
        0x5840a9d6 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 1601
    :sswitch_data_2
    .sparse-switch
        -0x73ddef23 -> :sswitch_23
        -0x4fef0acf -> :sswitch_21
        -0x198ba829 -> :sswitch_24
        0x71d8e2a8 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method OpenSaveFragment()V
    .locals 5

    .prologue
    .line 490
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v4, 0x7f0801d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 491
    .local v2, "openSaveButton":Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 492
    new-instance v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-direct {v1}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;-><init>()V

    .line 493
    .local v1, "newFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 494
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0800f7

    const-string v4, "programSaver"

    invoke-virtual {v0, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 497
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    return-void
.end method

.method public PopUp()V
    .locals 3

    .prologue
    .line 2086
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2087
    .local v0, "botSelectionCheckDialog":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "No SC Controller(s) Found"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2088
    const-string v1, "The SC Controller for this code was not found.  Please reassign each command to a SC Controller.\nOr click reassign to automatically assign all connected SC Controllers to any unassigned commands."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2089
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 2090
    const-string v1, "OK"

    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$44;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$44;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2094
    const-string v1, "Reassign"

    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$45;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$45;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2100
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2101
    return-void
.end method

.method public closeMenusBotCode(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clearCode"    # Ljava/lang/Boolean;

    .prologue
    .line 2722
    const-string v0, "MYTAG"

    const-string v1, "CLOSING@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    if-nez v0, :cond_1

    .line 2724
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2725
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->clearCode()V

    .line 2727
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    .line 2728
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, -0x3ac48000    # -3000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$49;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$49;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2738
    :cond_1
    return-void
.end method

.method indentCode(Landroid/widget/LinearLayout;)V
    .locals 11
    .param p1, "container"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 2104
    const/4 v2, 0x0

    .line 2105
    .local v2, "loopIndex":I
    const/16 v1, 0xf

    .line 2106
    .local v1, "indentWidth":I
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_4

    .line 2107
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080167

    if-eq v6, v7, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080110

    if-ne v6, v7, :cond_1

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2110
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int v5, v6, v2

    .line 2112
    .local v5, "pixelswidth":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2113
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2115
    add-int/lit8 v2, v2, 0x1

    .line 2106
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "pixelswidth":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f080057

    if-eq v6, v7, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0800e9

    if-ne v6, v7, :cond_3

    .line 2117
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 2119
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2120
    .restart local v3    # "metrics":Landroid/util/DisplayMetrics;
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int v5, v6, v2

    .line 2122
    .restart local v5    # "pixelswidth":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2123
    .restart local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2125
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "pixelswidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2126
    .restart local v3    # "metrics":Landroid/util/DisplayMetrics;
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int v5, v6, v2

    .line 2128
    .restart local v5    # "pixelswidth":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2129
    .restart local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2132
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "pixelswidth":I
    :cond_4
    return-void
.end method

.method public loadCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "codeString"    # Ljava/lang/String;
    .param p2, "codeName"    # Ljava/lang/String;

    .prologue
    .line 2799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v2, 0x7f08014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 2800
    .local v18, "invisCodeHolder":Landroid/widget/LinearLayout;
    const/4 v1, 0x2

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 2802
    const-string v1, "~meep~"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 2803
    .local v23, "seperated":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v1, v0

    add-int/lit8 v16, v1, -0x1

    .local v16, "i":I
    :goto_0
    if-lez v16, :cond_8

    .line 2804
    const-string v1, "MYTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seperated[i]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v23, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    aget-object v1, v23, v16

    const-string v2, "~@~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 2806
    .local v24, "seperated2":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 2807
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    move-object/from16 v0, v24

    array-length v1, v0

    move/from16 v0, v19

    if-ge v0, v1, :cond_0

    .line 2808
    const-string v1, "MYTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seperated2[j]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v24, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2811
    :cond_0
    const/16 v17, 0x0

    .line 2813
    .local v17, "index":I
    const/16 v21, 0x0

    .line 2814
    .local v21, "newCommandContainer":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 2815
    .local v8, "cloneCommand":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2817
    .local v11, "container":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    aget-object v2, v24, v1

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 2971
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 2972
    .local v12, "dropActionsHereText":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2974
    const v1, 0x7f080067

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 2976
    .local v14, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v2, 0x7f0801d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    .line 2977
    .local v22, "openSaveButton":Landroid/widget/ImageButton;
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2979
    const/4 v1, 0x0

    aget-object v1, v24, v1

    const-string v2, "beginningOfLoop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v24, v1

    const-string v2, "Begin Loop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2980
    :cond_2
    const/4 v1, 0x3

    aget-object v1, v24, v1

    invoke-virtual {v14, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2990
    :goto_4
    const v1, 0x7f0800b0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 2991
    .local v10, "commentText":Landroid/widget/EditText;
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2992
    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2993
    const/4 v1, 0x6

    aget-object v1, v24, v1

    const-string v2, "~null~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2994
    const-string v1, ""

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2999
    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3000
    .local v15, "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3002
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3004
    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 3005
    const/4 v1, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 3006
    add-int/lit8 v17, v17, 0x1

    .line 3007
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setListOfAffectedBotsLists(Ljava/util/ArrayList;)V

    .line 3009
    const/16 v20, 0x2

    .local v20, "k":I
    :goto_6
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v20

    if-ge v0, v1, :cond_6

    .line 3010
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 3011
    .local v9, "command":Landroid/widget/RelativeLayout;
    const v1, 0x7f0800a0

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3012
    const v1, 0x7f0800af

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3009
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 2817
    .end local v9    # "command":Landroid/widget/RelativeLayout;
    .end local v10    # "commentText":Landroid/widget/EditText;
    .end local v12    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v14    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v15    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v20    # "k":I
    .end local v22    # "openSaveButton":Landroid/widget/ImageButton;
    :sswitch_0
    const-string v3, "moveForwardCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "Forward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "moveBackwardCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "Reverse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "turnLeftCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "Left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "turnRightCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "Right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "hardTurnLeftCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "Fast Left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "hardTurnRightCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "Fast Right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "beginningOfLoop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "Begin Loop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "endOfLoop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v3, "End Loop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v3, "turnLeftSpinSoft90Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string v3, "Left90"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v3, "turnLeftSpinSoft180Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string v3, "Left180"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v3, "turnLeftSpinSoft270Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string v3, "Left270"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string v3, "turnLeftSpinSoft360Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v3, "Left360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_2

    :sswitch_18
    const-string v3, "turnRightSpinSoft90Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v3, "Right90"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const-string v3, "turnRightSpinSoft180Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const-string v3, "Right180"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v3, "turnRightSpinSoft270Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v3, "Right270"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    goto/16 :goto_2

    :sswitch_1e
    const-string v3, "turnRightSpinSoft360Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1e

    goto/16 :goto_2

    :sswitch_1f
    const-string v3, "Right360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1f

    goto/16 :goto_2

    :sswitch_20
    const-string v3, "turnLeftSpinHard90Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x20

    goto/16 :goto_2

    :sswitch_21
    const-string v3, "Fast Left90"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x21

    goto/16 :goto_2

    :sswitch_22
    const-string v3, "turnLeftSpinHard180Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x22

    goto/16 :goto_2

    :sswitch_23
    const-string v3, "Fast Left180"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x23

    goto/16 :goto_2

    :sswitch_24
    const-string v3, "turnLeftSpinHard270Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x24

    goto/16 :goto_2

    :sswitch_25
    const-string v3, "Fast Left270"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x25

    goto/16 :goto_2

    :sswitch_26
    const-string v3, "turnLeftSpinHard360Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x26

    goto/16 :goto_2

    :sswitch_27
    const-string v3, "Fast Left360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x27

    goto/16 :goto_2

    :sswitch_28
    const-string v3, "turnRightSpinHard90Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x28

    goto/16 :goto_2

    :sswitch_29
    const-string v3, "Fast Right90"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x29

    goto/16 :goto_2

    :sswitch_2a
    const-string v3, "turnRightSpinHard180Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2a

    goto/16 :goto_2

    :sswitch_2b
    const-string v3, "Fast Right180"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2b

    goto/16 :goto_2

    :sswitch_2c
    const-string v3, "turnRightSpinHard270Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2c

    goto/16 :goto_2

    :sswitch_2d
    const-string v3, "Fast Right270"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2d

    goto/16 :goto_2

    :sswitch_2e
    const-string v3, "turnRightSpinHard360Command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2e

    goto/16 :goto_2

    :sswitch_2f
    const-string v3, "Fast Right360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2f

    goto/16 :goto_2

    :sswitch_30
    const-string v3, "WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x30

    goto/16 :goto_2

    :sswitch_31
    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x31

    goto/16 :goto_2

    :sswitch_32
    const-string v3, "turnCircuitD1OnCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x32

    goto/16 :goto_2

    :sswitch_33
    const-string v3, "D1 On"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x33

    goto/16 :goto_2

    :sswitch_34
    const-string v3, "turnCircuitD2OnCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x34

    goto/16 :goto_2

    :sswitch_35
    const-string v3, "D2 On"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x35

    goto/16 :goto_2

    :sswitch_36
    const-string v3, "turnCircuitD3OnCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x36

    goto/16 :goto_2

    :sswitch_37
    const-string v3, "D3 On"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x37

    goto/16 :goto_2

    :sswitch_38
    const-string v3, "turnCircuitD4OnCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x38

    goto/16 :goto_2

    :sswitch_39
    const-string v3, "D4 On"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x39

    goto/16 :goto_2

    :sswitch_3a
    const-string v3, "turnSingleCircuitOnCommand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x3a

    goto/16 :goto_2

    :sswitch_3b
    const-string v3, "Single Circuit On"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x3b

    goto/16 :goto_2

    .line 2820
    :pswitch_0
    const v2, 0x7f080176

    const v3, 0x7f0a0025

    const v4, 0x7f0700dc

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2821
    const v2, 0x7f080176

    const v3, 0x7f0a0025

    const v4, 0x7f0700dc

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2822
    goto/16 :goto_3

    .line 2825
    :pswitch_1
    const v2, 0x7f080171

    const v3, 0x7f0a0025

    const v4, 0x7f0700b0

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2826
    const v2, 0x7f080171

    const v3, 0x7f0a0025

    const v4, 0x7f0700b0

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2827
    goto/16 :goto_3

    .line 2830
    :pswitch_2
    const v2, 0x7f08017f

    const v3, 0x7f0a0025

    const v4, 0x7f07010d

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2831
    const v2, 0x7f08017f

    const v3, 0x7f0a0025

    const v4, 0x7f07010d

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2832
    goto/16 :goto_3

    .line 2835
    :pswitch_3
    const v2, 0x7f080183

    const v3, 0x7f0a0025

    const v4, 0x7f070112

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2836
    const v2, 0x7f080183

    const v3, 0x7f0a0025

    const v4, 0x7f070112

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2837
    goto/16 :goto_3

    .line 2840
    :pswitch_4
    const v2, 0x7f080107

    const v3, 0x7f0a0025

    const v4, 0x7f0700ff

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2841
    const v2, 0x7f080107

    const v3, 0x7f0a0025

    const v4, 0x7f0700ff

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2842
    goto/16 :goto_3

    .line 2845
    :pswitch_5
    const v2, 0x7f080108

    const v3, 0x7f0a0025

    const v4, 0x7f070104

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2846
    const v2, 0x7f080108

    const v3, 0x7f0a0025

    const v4, 0x7f070104

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2847
    goto/16 :goto_3

    .line 2850
    :pswitch_6
    const v2, 0x7f080167

    const v3, 0x7f0a0027

    const v4, 0x7f0700e4

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2851
    const v2, 0x7f080167

    const v3, 0x7f0a0027

    const v4, 0x7f0700e4

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2852
    goto/16 :goto_3

    .line 2855
    :pswitch_7
    const v2, 0x7f080057

    const v3, 0x7f0a0023

    const v4, 0x7f0700e2

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2856
    const v2, 0x7f080057

    const v3, 0x7f0a0023

    const v4, 0x7f0700e2

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2857
    goto/16 :goto_3

    .line 2860
    :pswitch_8
    const v2, 0x7f08020a

    const v3, 0x7f0a0029

    const v4, 0x7f07010c

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2861
    const v2, 0x7f08020a

    const v3, 0x7f0a0029

    const v4, 0x7f07010c

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2862
    goto/16 :goto_3

    .line 2865
    :pswitch_9
    const v2, 0x7f080207

    const v3, 0x7f0a0029

    const v4, 0x7f070109

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2866
    const v2, 0x7f080207

    const v3, 0x7f0a0029

    const v4, 0x7f070109

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2867
    goto/16 :goto_3

    .line 2870
    :pswitch_a
    const v2, 0x7f080208

    const v3, 0x7f0a0029

    const v4, 0x7f07010a

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2871
    const v2, 0x7f080208

    const v3, 0x7f0a0029

    const v4, 0x7f07010a

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2872
    goto/16 :goto_3

    .line 2875
    :pswitch_b
    const v2, 0x7f080209

    const v3, 0x7f0a0029

    const v4, 0x7f07010b

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2876
    const v2, 0x7f080209

    const v3, 0x7f0a0029

    const v4, 0x7f07010b

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2877
    goto/16 :goto_3

    .line 2880
    :pswitch_c
    const v2, 0x7f08020e

    const v3, 0x7f0a0029

    const v4, 0x7f070111

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2881
    const v2, 0x7f08020e

    const v3, 0x7f0a0029

    const v4, 0x7f070111

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2882
    goto/16 :goto_3

    .line 2885
    :pswitch_d
    const v2, 0x7f08020b

    const v3, 0x7f0a0029

    const v4, 0x7f07010e

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2886
    const v2, 0x7f08020b

    const v3, 0x7f0a0029

    const v4, 0x7f07010e

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2887
    goto/16 :goto_3

    .line 2890
    :pswitch_e
    const v2, 0x7f08020c

    const v3, 0x7f0a0029

    const v4, 0x7f07010f

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2891
    const v2, 0x7f08020c

    const v3, 0x7f0a0029

    const v4, 0x7f07010f

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2892
    goto/16 :goto_3

    .line 2895
    :pswitch_f
    const v2, 0x7f08020d

    const v3, 0x7f0a0029

    const v4, 0x7f070110

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2896
    const v2, 0x7f08020d

    const v3, 0x7f0a0029

    const v4, 0x7f070110

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2897
    goto/16 :goto_3

    .line 2900
    :pswitch_10
    const v2, 0x7f080202

    const v3, 0x7f0a0029

    const v4, 0x7f0700fe

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2901
    const v2, 0x7f080202

    const v3, 0x7f0a0029

    const v4, 0x7f0700fe

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2902
    goto/16 :goto_3

    .line 2905
    :pswitch_11
    const v2, 0x7f0801ff

    const v3, 0x7f0a0029

    const v4, 0x7f0700fb

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2906
    const v2, 0x7f0801ff

    const v3, 0x7f0a0029

    const v4, 0x7f0700fb

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2907
    goto/16 :goto_3

    .line 2910
    :pswitch_12
    const v2, 0x7f080200

    const v3, 0x7f0a0029

    const v4, 0x7f0700fc

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2911
    const v2, 0x7f080200

    const v3, 0x7f0a0029

    const v4, 0x7f0700fc

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2912
    goto/16 :goto_3

    .line 2915
    :pswitch_13
    const v2, 0x7f080201

    const v3, 0x7f0a0029

    const v4, 0x7f0700fd

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2916
    const v2, 0x7f080201

    const v3, 0x7f0a0029

    const v4, 0x7f0700fd

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2917
    goto/16 :goto_3

    .line 2920
    :pswitch_14
    const v2, 0x7f080206

    const v3, 0x7f0a0029

    const v4, 0x7f070103

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2921
    const v2, 0x7f080206

    const v3, 0x7f0a0029

    const v4, 0x7f070103

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2922
    goto/16 :goto_3

    .line 2925
    :pswitch_15
    const v2, 0x7f080203

    const v3, 0x7f0a0029

    const v4, 0x7f070100

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2926
    const v2, 0x7f080203

    const v3, 0x7f0a0029

    const v4, 0x7f070100

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2927
    goto/16 :goto_3

    .line 2930
    :pswitch_16
    const v2, 0x7f080204

    const v3, 0x7f0a0029

    const v4, 0x7f070101

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2931
    const v2, 0x7f080204

    const v3, 0x7f0a0029

    const v4, 0x7f070101

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2932
    goto/16 :goto_3

    .line 2935
    :pswitch_17
    const v2, 0x7f080205

    const v3, 0x7f0a0029

    const v4, 0x7f070102

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2936
    const v2, 0x7f080205

    const v3, 0x7f0a0029

    const v4, 0x7f070102

    const/4 v5, 0x1

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2937
    goto/16 :goto_3

    .line 2940
    :pswitch_18
    const v2, 0x7f08024c

    const v3, 0x7f0a0025

    const v4, 0x7f070113

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2941
    const v2, 0x7f08024c

    const v3, 0x7f0a0025

    const v4, 0x7f070113

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2942
    goto/16 :goto_3

    .line 2945
    :pswitch_19
    const v2, 0x7f08007c

    const v3, 0x7f0a0025

    const v4, 0x7f0700d4

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2946
    const v2, 0x7f08007c

    const v3, 0x7f0a0025

    const v4, 0x7f0700d4

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2947
    goto/16 :goto_3

    .line 2950
    :pswitch_1a
    const v2, 0x7f08007d

    const v3, 0x7f0a0025

    const v4, 0x7f0700d5

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2951
    const v2, 0x7f08007d

    const v3, 0x7f0a0025

    const v4, 0x7f0700d5

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2952
    goto/16 :goto_3

    .line 2955
    :pswitch_1b
    const v2, 0x7f08007e

    const v3, 0x7f0a0025

    const v4, 0x7f0700d6

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2956
    const v2, 0x7f08007e

    const v3, 0x7f0a0025

    const v4, 0x7f0700d6

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2957
    goto/16 :goto_3

    .line 2960
    :pswitch_1c
    const v2, 0x7f08007f

    const v3, 0x7f0a0025

    const v4, 0x7f0700d7

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2961
    const v2, 0x7f08007f

    const v3, 0x7f0a0025

    const v4, 0x7f0700d7

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 2962
    goto/16 :goto_3

    .line 2965
    :pswitch_1d
    const v2, 0x7f0801ea

    const v3, 0x7f0a0025

    const v4, 0x7f0700af

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v21

    .line 2966
    const v2, 0x7f0801ea

    const v3, 0x7f0a0025

    const v4, 0x7f0700af

    const/4 v5, 0x0

    const/4 v1, 0x2

    aget-object v6, v24, v1

    const/4 v7, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v8

    goto/16 :goto_3

    .line 2982
    .restart local v12    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .restart local v14    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v22    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_3
    const/4 v1, 0x1

    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x182a4

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xf1a68

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x970810

    if-eq v1, v2, :cond_4

    .line 2983
    const/16 v13, 0x3e8

    .line 2984
    .local v13, "duration":I
    const/4 v1, 0x1

    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2986
    .end local v13    # "duration":I
    :cond_4
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2996
    .restart local v10    # "commentText":Landroid/widget/EditText;
    :cond_5
    const/4 v1, 0x6

    aget-object v1, v24, v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3014
    .restart local v15    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v20    # "k":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->indentCode(Landroid/widget/LinearLayout;)V

    .line 2803
    .end local v8    # "cloneCommand":Landroid/widget/LinearLayout;
    .end local v10    # "commentText":Landroid/widget/EditText;
    .end local v11    # "container":Landroid/widget/LinearLayout;
    .end local v12    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v14    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v15    # "foundBot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v17    # "index":I
    .end local v19    # "j":I
    .end local v20    # "k":I
    .end local v21    # "newCommandContainer":Landroid/widget/LinearLayout;
    .end local v22    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 3018
    .end local v24    # "seperated2":[Ljava/lang/String;
    :cond_8
    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->saveCode(Ljava/lang/String;)V

    .line 3019
    const-string v1, "true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->showPopUp(Ljava/lang/String;)V

    .line 3020
    return-void

    .line 2817
    :sswitch_data_0
    .sparse-switch
        -0x78905282 -> :sswitch_11
        -0x713563b4 -> :sswitch_2c
        -0x6a2f5b9c -> :sswitch_10
        -0x5f86f117 -> :sswitch_1e
        -0x5f665f3d -> :sswitch_20
        -0x5dce63e4 -> :sswitch_8
        -0x5b39153e -> :sswitch_3
        -0x5767268d -> :sswitch_22
        -0x5537b5ed -> :sswitch_19
        -0x538c6e50 -> :sswitch_38
        -0x51bf2493 -> :sswitch_1b
        -0x51bf20f1 -> :sswitch_1d
        -0x51bf1d4f -> :sswitch_1f
        -0x506d4d09 -> :sswitch_0
        -0x4e64ff92 -> :sswitch_3b
        -0x4a6d7005 -> :sswitch_d
        -0x47d5df6f -> :sswitch_36
        -0x45b8b3f0 -> :sswitch_14
        -0x3c1f508e -> :sswitch_34
        -0x337f0779 -> :sswitch_4
        -0x3068c1ad -> :sswitch_32
        -0x2c196e42 -> :sswitch_23
        -0x2c196aa0 -> :sswitch_25
        -0x2c1966fe -> :sswitch_27
        -0x28331aa8 -> :sswitch_b
        -0x2513d3a8 -> :sswitch_c
        -0x1f90f553 -> :sswitch_1a
        -0x130a456f -> :sswitch_2b
        -0x130a41cd -> :sswitch_2d
        -0x130a3e2b -> :sswitch_2f
        -0x11306196 -> :sswitch_2e
        -0xb36d249 -> :sswitch_a
        -0xb049fb7 -> :sswitch_18
        -0x3ba358 -> :sswitch_28
        0x241427 -> :sswitch_5
        0x288975 -> :sswitch_30
        0x3d50692 -> :sswitch_33
        0x3d57af1 -> :sswitch_35
        0x3d5ef50 -> :sswitch_37
        0x3d663af -> :sswitch_39
        0x49535d6 -> :sswitch_31
        0x4b4d1fc -> :sswitch_7
        0x89ddb91 -> :sswitch_24
        0x14655eac -> :sswitch_6
        0x175a05a2 -> :sswitch_21
        0x1828f66f -> :sswitch_29
        0x1a4c4e2e -> :sswitch_16
        0x26ec0fc8 -> :sswitch_3a
        0x299c55d7 -> :sswitch_2
        0x2ec59a2e -> :sswitch_2a
        0x3adc2aa5 -> :sswitch_1
        0x40740ccb -> :sswitch_1c
        0x5840a9d6 -> :sswitch_e
        0x5a4249f2 -> :sswitch_12
        0x6685e562 -> :sswitch_13
        0x6685e904 -> :sswitch_15
        0x6685eca6 -> :sswitch_17
        0x672a5709 -> :sswitch_f
        0x68a2ddaf -> :sswitch_26
        0x724e254b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 62
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 112
    const v58, 0x7f0a0020

    const/16 v59, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, p2

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->inflater:Landroid/view/LayoutInflater;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    new-instance v59, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 117
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    sput-object v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0800aa

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TableLayout;

    .line 120
    .local v16, "commandBayContainer":Landroid/widget/TableLayout;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08009a

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    .line 123
    .local v14, "codeBayContainer":Landroid/widget/ScrollView;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Landroid/widget/ScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801b4

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    .line 126
    .local v33, "placeBotHolder":Landroid/widget/LinearLayout;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080217

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/LinearLayout;

    .line 129
    .local v55, "startHeader":Landroid/widget/LinearLayout;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0800e7

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 132
    .local v18, "endHeader":Landroid/widget/LinearLayout;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080168

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageButton;

    .line 135
    .local v26, "loopCommandsButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801ce

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageButton;

    .line 145
    .local v36, "runProgramButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$2;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$2;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08021a

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 153
    .local v15, "codeStopButton":Landroid/widget/ImageView;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$3;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$3;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080176

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    .line 161
    .local v28, "moveForwardButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080171

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageButton;

    .line 163
    .local v27, "moveBackwardButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08017f

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageButton;

    .line 165
    .local v29, "moveLeftButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080183

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageButton;

    .line 167
    .local v30, "moveRightButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080107

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    .line 169
    .local v21, "hardTurnLeftButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080108

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    .line 171
    .local v22, "hardTurnRightButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080167

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageButton;

    .line 173
    .local v25, "loopButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08020a

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/ImageButton;

    .line 175
    .local v50, "spinSoftLeft90":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080207

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/ImageButton;

    .line 177
    .local v47, "spinSoftLeft180":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080208

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/ImageButton;

    .line 179
    .local v48, "spinSoftLeft270":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v48

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080209

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/ImageButton;

    .line 181
    .local v49, "spinSoftLeft360":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08020e

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/ImageButton;

    .line 183
    .local v54, "spinSoftRight90":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08020b

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/ImageButton;

    .line 185
    .local v51, "spinSoftRight180":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08020c

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/ImageButton;

    .line 187
    .local v52, "spinSoftRight270":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08020d

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/ImageButton;

    .line 189
    .local v53, "spinSoftRight360":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080202

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageButton;

    .line 191
    .local v42, "spinHardLeft90":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801ff

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/ImageButton;

    .line 193
    .local v39, "spinHardLeft180":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080200

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageButton;

    .line 195
    .local v40, "spinHardLeft270":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080201

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageButton;

    .line 197
    .local v41, "spinHardLeft360":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080206

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/ImageButton;

    .line 199
    .local v46, "spinHardRight90":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080203

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageButton;

    .line 201
    .local v43, "spinHardRight180":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080204

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/ImageButton;

    .line 203
    .local v44, "spinHardRight270":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080205

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/ImageButton;

    .line 205
    .local v45, "spinHardRight360":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08024c

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/ImageButton;

    .line 207
    .local v57, "waitButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual/range {v57 .. v58}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080040

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 209
    .local v4, "bluetoothButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080110

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageButton;

    .line 210
    .local v24, "ifButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08007c

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 212
    .local v6, "circuitD1On":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08007d

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 214
    .local v7, "circuitD2On":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08007e

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 216
    .local v8, "circuitD3On":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08007f

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 218
    .local v9, "circuitD4On":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801ea

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageButton;

    .line 220
    .local v38, "singleCircuitOn":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801d2

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageButton;

    .line 223
    .local v32, "openSaveButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$4;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$4;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08008a

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 231
    .local v10, "clearCodeButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$5;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$5;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v58

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080093

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 238
    .local v13, "cloudLoadLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080092

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 239
    .local v12, "cloudLoadButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$6;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$6;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v58

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080094

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 247
    .local v11, "cloudLoadBackground":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$7;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$7;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v58

    invoke-virtual {v11, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801d9

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageButton;

    .line 255
    .local v37, "searchButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$8;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$8;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->LoadInBots()V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->LoadPrograms()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08005b

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 268
    .local v5, "botCodeText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const-string v59, "Blue"

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot2:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const-string v59, "Green"

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot2:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot3:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const-string v59, "Orange"

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot3:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot4:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const-string v59, "Yellow"

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot4:Lcom/elenco/snapcoder/model/Bot;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 277
    new-instance v31, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$9;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    .line 288
    .local v31, "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0800a9

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    .line 289
    .local v17, "commandScrollView":Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08009a

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/ScrollView;

    .line 290
    .local v56, "verticalScrollView":Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08009b

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/HorizontalScrollView;

    .line 292
    .local v23, "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/HorizontalScrollView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v56

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/ScrollView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$12;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$12;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/ScrollView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    invoke-static/range {p0 .. p0}, Lcom/elenco/snapcoder/UIManager;->setbot_code_fragment(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801bc

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 377
    .local v35, "reassignLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f0801bb

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageButton;

    .line 378
    .local v34, "reassignButton":Landroid/widget/ImageButton;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f080058

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v58, v0

    if-eqz v58, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v58, v0

    const v59, -0x3ac48000    # -3000.0f

    invoke-virtual/range {v58 .. v59}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 407
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/elenco/snapcoder/MainScreen;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v19

    .line 408
    .local v19, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v58, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-direct/range {v58 .. v58}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    .line 409
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v58

    const v59, 0x7f080058

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    move-object/from16 v60, v0

    const-string v61, "flyout_fragment_menu"

    .line 410
    invoke-virtual/range {v58 .. v61}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v58

    .line 411
    invoke-virtual/range {v58 .. v58}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v58

    .line 412
    invoke-virtual/range {v58 .. v58}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    const v59, 0x7f08016b

    invoke-virtual/range {v58 .. v59}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 415
    .local v20, "hamburgerMenuButton":Landroid/widget/LinearLayout;
    new-instance v58, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$14;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$14;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    move-object/from16 v58, v0

    return-object v58
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f080163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 427
    .local v1, "loadingPanel":Landroid/widget/RelativeLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    const-string v2, "MeeperDefaultProgram"

    invoke-virtual {p0, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->LoadProgram(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 433
    .local v0, "exTimer":Ljava/util/Timer;
    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 450
    return-void
.end method

.method openEditRoutine(Landroid/view/View;)V
    .locals 8
    .param p1, "routine"    # Landroid/view/View;

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "editRoutine"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2136
    new-instance v0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;-><init>()V

    .line 2137
    .local v0, "editRoutineFragment":Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 2138
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0800f7

    const-string v5, "editRoutine"

    invoke-virtual {v2, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2140
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "routine":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2142
    .local v3, "routineName":Landroid/widget/TextView;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 2143
    .local v1, "exTimer":Ljava/util/Timer;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;

    invoke-direct {v4, p0, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/TextView;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2159
    .end local v0    # "editRoutineFragment":Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;
    .end local v1    # "exTimer":Ljava/util/Timer;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "routineName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method openFlyout()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x5dc

    .line 2692
    const-string v0, "MYTAG"

    const-string v1, "OPEN@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    if-nez v0, :cond_0

    .line 2694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    .line 2695
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsOpen:Z

    if-nez v0, :cond_1

    .line 2696
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2705
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2719
    :cond_0
    :goto_0
    return-void

    .line 2707
    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFlyOutMenuBlank()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$48;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$48;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2716
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method reassignBots()V
    .locals 9

    .prologue
    .line 2536
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->setUpCommandListCodeManager()Ljava/util/ArrayList;

    move-result-object v1

    .line 2539
    .local v1, "botCommandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 2540
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 2541
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2542
    .local v2, "cloneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    sget-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2544
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2545
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2546
    const-string v6, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "botCommand: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " commandType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " botlist size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "beginningOfLoop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "endOfLoop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WAIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2549
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2550
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 2551
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2554
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2555
    const-string v6, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After removal: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 2573
    :cond_2
    const-string v5, "MYTAG"

    const-string v6, "EMPTY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2575
    .local v4, "vBots":Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 2578
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2584
    .end local v4    # "vBots":Ljava/util/ArrayList;
    :cond_3
    :goto_2
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clonelist size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2560
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_5
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2561
    const-string v5, "MYTAG"

    const-string v7, "doesn\'t contain circuit"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2563
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2564
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2580
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .restart local v4    # "vBots":Ljava/util/ArrayList;
    :cond_6
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 2586
    .end local v4    # "vBots":Ljava/util/ArrayList;
    :cond_7
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2589
    .restart local v4    # "vBots":Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2591
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2593
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2595
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT AFTER: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT AFTER AFTER: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2602
    .end local v3    # "i":I
    .end local v4    # "vBots":Ljava/util/ArrayList;
    :cond_8
    const-string v5, "MYTAG"

    const-string v6, "no connected bots"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    .restart local v4    # "vBots":Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->bot1:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2606
    const-string v6, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "botCommand: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " commandType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "beginningOfLoop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "endOfLoop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WAIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2608
    const-string v6, "MYTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clonelist.get(i).size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2610
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2612
    :cond_9
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clonelist size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 2615
    .end local v4    # "vBots":Ljava/util/ArrayList;
    :cond_a
    sget-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2616
    sget-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2621
    .end local v2    # "cloneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    .end local v3    # "i":I
    :goto_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    sget-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 2622
    sget-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 2623
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2624
    const-string v6, "MYTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listOfAffectedBotsLists name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2618
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v3    # "i":I
    :cond_b
    const-string v5, "MYTAG"

    const-string v6, "no commands"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2626
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .restart local v3    # "i":I
    :cond_c
    const-string v6, "MYTAG"

    const-string v7, "listOfAffectedBotsLists name: virtual command: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2621
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2630
    :cond_e
    return-void
.end method

.method searchDatabase()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2741
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v4, 0x7f08009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2742
    .local v1, "codeInput":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 2744
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    .line 2745
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->database:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v4, "BotCode"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 2746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    .local v0, "botCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/Classes/BotCodeDatabase;>;"
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2749
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

    .line 2750
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

    .line 2753
    :cond_1
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

    new-instance v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;

    invoke-direct {v4, p0, v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Ljava/util/ArrayList;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 2795
    :goto_0
    return-void

    .line 2793
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

.method setBotnText(Landroid/widget/ImageButton;Ljava/util/ArrayList;Lcom/elenco/snapcoder/AutoResizeTextView;)V
    .locals 8
    .param p1, "botImage"    # Landroid/widget/ImageButton;
    .param p3, "botText"    # Lcom/elenco/snapcoder/AutoResizeTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageButton;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;",
            "Lcom/elenco/snapcoder/AutoResizeTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "botList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    const v7, 0x7f07005d

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2636
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2637
    :cond_0
    iput-boolean v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->useTempList:Z

    .line 2638
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2639
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 2640
    .local v0, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 2641
    const-string v1, "Blue"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 2642
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    if-eqz p1, :cond_1

    .line 2644
    const v1, 0x7f07005e

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2646
    :cond_1
    if-eqz p3, :cond_2

    .line 2647
    invoke-virtual {p3, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 2689
    .end local v0    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_2
    :goto_0
    return-void

    .line 2650
    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2664
    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2667
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 2668
    invoke-virtual {p3, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2650
    :sswitch_0
    const-string v5, "Red"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "Blue"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "Green"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "Yellow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    .line 2652
    :pswitch_0
    const v1, 0x7f0700a9

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 2655
    :pswitch_1
    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 2658
    :pswitch_2
    const v1, 0x7f07008d

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 2661
    :pswitch_3
    const v1, 0x7f07012e

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 2671
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2672
    invoke-virtual {p3, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 2673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2675
    iput-boolean v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->useTempList:Z

    .line 2676
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2677
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 2678
    .restart local v0    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 2679
    const-string v1, "Blue"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 2680
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->tempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    if-eqz p1, :cond_6

    .line 2682
    invoke-virtual {p1, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2684
    :cond_6
    if-eqz p3, :cond_2

    .line 2685
    invoke-virtual {p3, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2650
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

.method public setListOfAffectedBotsLists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1683
    .local p1, "listOfAffectedBotsLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    sput-object p1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 1684
    return-void
.end method

.method public setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 37
    .param p1, "commandID"    # I
    .param p2, "layoutID"    # I
    .param p3, "ImageResource"    # I
    .param p4, "isSpin"    # Z
    .param p5, "speed"    # Ljava/lang/String;
    .param p6, "botType"    # I

    .prologue
    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 829
    .local v7, "codeBay2":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 831
    .local v8, "commandContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0a0040

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 832
    .local v29, "indenter":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->inflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 836
    .local v22, "command":Landroid/widget/RelativeLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 838
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 839
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 841
    move/from16 v5, p1

    .line 844
    .local v5, "commandId":I
    const v3, 0x7f080067

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 847
    .local v6, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v3, 0x7f0a0023

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const v3, 0x7f0a0027

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    if-nez p4, :cond_4

    const v3, 0x7f08024c

    if-eq v5, v3, :cond_4

    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_4

    .line 849
    const v3, 0x7f080061

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 850
    .local v20, "botImageHolder":Landroid/widget/RelativeLayout;
    const v3, 0x7f080060

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 851
    .local v10, "editBotButton":Landroid/widget/ImageButton;
    const v3, 0x7f080065

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 852
    .local v21, "botTimerHolder":Landroid/widget/LinearLayout;
    const v3, 0x7f080157

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    .line 853
    .local v30, "labelHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/FrameLayout;

    .line 854
    .local v36, "speedHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f6

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 855
    .local v9, "speedImage":Landroid/widget/ImageView;
    const v3, 0x7f080064

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 857
    .local v11, "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v27

    .line 859
    .local v27, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    const-string v4, "MYTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listofaffectedbots size: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " view.findViewById(R.id.codeBay2) size: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v13, 0x7f080099

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v3, "MYTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectedBots size: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v1, v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setBotnText(Landroid/widget/ImageButton;Ljava/util/ArrayList;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 865
    const/4 v3, -0x1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 876
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    :goto_1
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$16;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$16;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$17;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$17;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$18;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$18;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$19;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$19;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$20;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$20;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$21;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$21;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v6, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$22;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$22;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    .end local v9    # "speedImage":Landroid/widget/ImageView;
    .end local v10    # "editBotButton":Landroid/widget/ImageButton;
    .end local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    .end local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    .end local v27    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v30    # "labelHolder":Landroid/widget/FrameLayout;
    .end local v36    # "speedHolder":Landroid/widget/FrameLayout;
    :cond_1
    :goto_2
    const v3, 0x7f08005d

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 1153
    .local v23, "commandImage":Landroid/widget/ImageView;
    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    const v3, 0x7f0a0023

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const v3, 0x7f0a0027

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 1157
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v6, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    :cond_2
    const v3, 0x7f08024c

    if-ne v5, v3, :cond_3

    .line 1168
    const v3, 0x7f080061

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 1169
    .local v28, "editBotHolder":Landroid/widget/RelativeLayout;
    const/4 v3, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1171
    const v3, 0x7f0801f6

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1172
    .restart local v9    # "speedImage":Landroid/widget/ImageView;
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$38;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$38;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v6, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    .end local v9    # "speedImage":Landroid/widget/ImageView;
    .end local v28    # "editBotHolder":Landroid/widget/RelativeLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    .line 1184
    .local v31, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v31

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v35, v0

    .line 1185
    .local v35, "pixelswidth":I
    move-object/from16 v0, v31

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v34, v0

    .line 1187
    .local v34, "pixelsheight":I
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1188
    .local v32, "param":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1191
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1193
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v0, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1194
    .local v33, "param2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    const v3, 0x7f0800b0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 1197
    .local v26, "commentText":Landroid/widget/EditText;
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1199
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1202
    const v3, 0x7f0800ad

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    .line 1203
    .local v24, "commentHolder":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$39;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    const v3, 0x7f0800ae

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/FrameLayout;

    .line 1212
    .local v25, "commentHolder2":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$40;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$40;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    return-object v8

    .line 865
    .end local v23    # "commandImage":Landroid/widget/ImageView;
    .end local v24    # "commentHolder":Landroid/widget/FrameLayout;
    .end local v25    # "commentHolder2":Landroid/widget/FrameLayout;
    .end local v26    # "commentText":Landroid/widget/EditText;
    .end local v31    # "metrics":Landroid/util/DisplayMetrics;
    .end local v32    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "param2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "pixelsheight":I
    .end local v35    # "pixelswidth":I
    .restart local v9    # "speedImage":Landroid/widget/ImageView;
    .restart local v10    # "editBotButton":Landroid/widget/ImageButton;
    .restart local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    .restart local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    .restart local v27    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v30    # "labelHolder":Landroid/widget/FrameLayout;
    .restart local v36    # "speedHolder":Landroid/widget/FrameLayout;
    :sswitch_0
    const-string v4, "Fast"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "Medium"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "Slow"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 867
    :pswitch_0
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 870
    :pswitch_1
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 873
    :pswitch_2
    const v3, 0x7f0700e3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 953
    .end local v9    # "speedImage":Landroid/widget/ImageView;
    .end local v10    # "editBotButton":Landroid/widget/ImageButton;
    .end local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    .end local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    .end local v27    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v30    # "labelHolder":Landroid/widget/FrameLayout;
    .end local v36    # "speedHolder":Landroid/widget/FrameLayout;
    :cond_4
    if-eqz p4, :cond_6

    .line 955
    const v3, 0x7f080061

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 956
    .restart local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    const v3, 0x7f080060

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 957
    .restart local v10    # "editBotButton":Landroid/widget/ImageButton;
    const v3, 0x7f080065

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 958
    .restart local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    const v3, 0x7f080157

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    .line 959
    .restart local v30    # "labelHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/FrameLayout;

    .line 960
    .restart local v36    # "speedHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f6

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 961
    .restart local v9    # "speedImage":Landroid/widget/ImageView;
    const v3, 0x7f080064

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 963
    .restart local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v27

    .line 965
    .restart local v27    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v1, v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setBotnText(Landroid/widget/ImageButton;Ljava/util/ArrayList;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 969
    const/4 v3, -0x1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_5
    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 980
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 984
    :goto_4
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$23;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$23;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$24;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$24;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$25;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$25;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$27;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$27;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$28;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$28;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v6, v12}, Lcom/elenco/snapcoder/AutoResizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    new-instance v12, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$29;

    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$29;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 969
    :sswitch_3
    const-string v4, "Fast"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x0

    goto/16 :goto_3

    :sswitch_4
    const-string v4, "Medium"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_3

    :sswitch_5
    const-string v4, "Slow"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x2

    goto/16 :goto_3

    .line 971
    :pswitch_3
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 974
    :pswitch_4
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 977
    :pswitch_5
    const v3, 0x7f0700e3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1050
    .end local v9    # "speedImage":Landroid/widget/ImageView;
    .end local v10    # "editBotButton":Landroid/widget/ImageButton;
    .end local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    .end local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    .end local v27    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v30    # "labelHolder":Landroid/widget/FrameLayout;
    .end local v36    # "speedHolder":Landroid/widget/FrameLayout;
    :cond_6
    const/4 v3, 0x3

    move/from16 v0, p6

    if-ne v0, v3, :cond_1

    .line 1051
    const v3, 0x7f080061

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 1052
    .restart local v20    # "botImageHolder":Landroid/widget/RelativeLayout;
    const v3, 0x7f080060

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 1053
    .restart local v10    # "editBotButton":Landroid/widget/ImageButton;
    const v3, 0x7f080065

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 1054
    .restart local v21    # "botTimerHolder":Landroid/widget/LinearLayout;
    const v3, 0x7f080157

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    .line 1055
    .restart local v30    # "labelHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/FrameLayout;

    .line 1056
    .restart local v36    # "speedHolder":Landroid/widget/FrameLayout;
    const v3, 0x7f0801f6

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1057
    .restart local v9    # "speedImage":Landroid/widget/ImageView;
    const v3, 0x7f080064

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 1059
    .restart local v11    # "botText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3, v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setBotnText(Landroid/widget/ImageButton;Ljava/util/ArrayList;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 1061
    const v3, 0x7f0801ea

    if-eq v5, v3, :cond_8

    .line 1062
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    const/4 v3, -0x1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_7
    :goto_5
    packed-switch v3, :pswitch_data_2

    .line 1072
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1077
    :cond_8
    :goto_6
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$30;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$30;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$31;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$31;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$32;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$32;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$33;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$33;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$34;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$34;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$35;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$35;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v6, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$36;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$36;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILcom/elenco/snapcoder/AutoResizeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1064
    :sswitch_6
    const-string v4, "Fast"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :sswitch_7
    const-string v4, "Slow"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    .line 1066
    :pswitch_6
    const v3, 0x7f0700e0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 1069
    :pswitch_7
    const v3, 0x7f0700e3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 865
    nop

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

    .line 969
    :sswitch_data_1
    .sparse-switch
        -0x76dc846b -> :sswitch_4
        0x214c7c -> :sswitch_3
        0x275e21 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1064
    :sswitch_data_2
    .sparse-switch
        0x214c7c -> :sswitch_6
        0x275e21 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method showPopUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "didWork"    # Ljava/lang/String;

    .prologue
    .line 3436
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3438
    .local v0, "loadingAlert":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3439
    const-string v1, "Your code was loaded successfully."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3440
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->reassignBots()V

    .line 3446
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 3447
    const-string v1, "OK"

    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$51;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$51;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3451
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 3452
    return-void

    .line 3443
    :cond_0
    const-string v1, "There was an issue loading your code."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method
