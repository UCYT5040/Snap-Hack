.class public Lcom/elenco/snapcoder/BotCode/ProgramSaver;
.super Landroid/support/v4/app/Fragment;
.source "ProgramSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;,
        Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;
    }
.end annotation


# static fields
.field static dontModify:Z


# instance fields
.field botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

.field cloudSaveHolder:Landroid/widget/RelativeLayout;

.field database:Lcom/google/firebase/database/FirebaseDatabase;

.field foundCode:Z

.field inflater:Landroid/view/LayoutInflater;

.field isLongPress:Z

.field listOfAffectedBotsLists:Ljava/util/ArrayList;
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

.field longClickDuration:I

.field scrollViewMoved:Z

.field view:Landroid/view/View;

.field viewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->dontModify:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 147
    const/16 v0, 0x12c

    iput v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->longClickDuration:I

    .line 148
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->isLongPress:Z

    .line 149
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->scrollViewMoved:Z

    .line 815
    iput-boolean v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->foundCode:Z

    return-void
.end method

.method private makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;
    .locals 4
    .param p1, "duration"    # I
    .param p2, "iterations"    # I
    .param p3, "ordinal"    # I
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "commandType"    # Ljava/lang/String;
    .param p6, "loopCommand"    # Z
    .param p7, "speedChosen"    # Ljava/lang/String;
    .param p8, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 729
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 731
    .local v0, "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0, p4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 733
    invoke-virtual {v0, p2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 734
    invoke-virtual {v0, p5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommandType(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, p7}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setComment(Ljava/lang/String;)V

    .line 738
    const-string v1, "beginningOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    .line 745
    :goto_0
    const-string v1, "endOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    .line 752
    :goto_1
    invoke-virtual {v0, p6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setLoopCommand(Z)V

    .line 753
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 755
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 757
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p3, -0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 762
    :cond_0
    return-object v0

    .line 742
    :cond_1
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    goto :goto_0

    .line 749
    :cond_2
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    goto :goto_1
.end method


# virtual methods
.method public closeMe()V
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 185
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "programSaver"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 186
    .local v1, "programSaver":Landroid/support/v4/app/Fragment;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 188
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 204
    return-void
.end method

.method cloudSave(Ljava/util/ArrayList;)V
    .locals 17
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
    .line 766
    .local p1, "commandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    const-string v3, ""

    .line 767
    .local v3, "cloudString":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_2

    .line 769
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~meep~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 770
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getSetSpeed()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getIterations()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 771
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~@~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 772
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getComment()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getComment()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 773
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "~null~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 775
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getComment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 780
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->generateRandomString()Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, "code":Ljava/lang/String;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v14

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 783
    .local v6, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v14

    sget-object v15, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v14, v15, :cond_4

    :cond_3
    const/4 v14, 0x1

    .line 784
    invoke-virtual {v6, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v14

    sget-object v15, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v14, v15, :cond_5

    .line 787
    :cond_4
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v7

    .line 788
    .local v7, "database":Lcom/google/firebase/database/FirebaseDatabase;
    const-string v14, "BotCode"

    invoke-virtual {v7, v14}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v12

    .line 790
    .local v12, "myRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v12}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 792
    .local v11, "id":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 793
    .local v2, "c":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v14, "dd-MMM-yyyy"

    invoke-direct {v8, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 794
    .local v8, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 796
    .local v9, "formattedDate":Ljava/lang/String;
    new-instance v1, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    invoke-direct {v1, v11, v3, v4, v9}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .local v1, "botCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    invoke-virtual {v12, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v15, 0x7f0800a2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 800
    .local v5, "codeText":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->cloudSaveHolder:Landroid/widget/RelativeLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v15, 0x7f0801d1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 803
    .local v13, "nameInput":Landroid/widget/EditText;
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 804
    new-instance v14, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->saveCode(Z)V

    .line 813
    .end local v1    # "botCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    .end local v2    # "c":Ljava/util/Date;
    .end local v7    # "database":Lcom/google/firebase/database/FirebaseDatabase;
    .end local v8    # "df":Ljava/text/SimpleDateFormat;
    .end local v9    # "formattedDate":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v12    # "myRef":Lcom/google/firebase/database/DatabaseReference;
    :goto_2
    return-void

    .line 806
    .end local v5    # "codeText":Landroid/widget/TextView;
    .end local v13    # "nameInput":Landroid/widget/EditText;
    :cond_5
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v14

    invoke-virtual {v14}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "An internet connection is required to save from the cloud, your code was still saved locally."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v15, 0x7f0800a2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 808
    .restart local v5    # "codeText":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v15, 0x7f0801d1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 810
    .restart local v13    # "nameInput":Landroid/widget/EditText;
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 811
    new-instance v14, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->saveCode(Z)V

    goto :goto_2
.end method

.method createVisual(Z)V
    .locals 14
    .param p1, "isCloudSave"    # Z

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 120
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    const v11, 0x7f0800aa

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableLayout;

    .line 121
    .local v9, "tableLayout":Landroid/widget/TableLayout;
    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v11, 0x7f0801d1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 123
    .local v1, "nameInput":Landroid/widget/EditText;
    new-instance v2, Landroid/widget/TableRow;

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 125
    .local v2, "newRow":Landroid/widget/TableRow;
    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0a0053

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 126
    .local v7, "routineLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 127
    .local v8, "routineName":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x43480000    # 200.0f

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v6, v10

    .line 131
    .local v6, "pixelswidth":I
    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x42200000    # 40.0f

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v5, v10

    .line 132
    .local v5, "pixelsheight":I
    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x40a00000    # 5.0f

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v4, v10

    .line 134
    .local v4, "pixelsbottom":I
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v5, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 135
    .local v3, "param":Landroid/widget/TableRow$LayoutParams;
    const/4 v10, 0x4

    iput v10, v3, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 136
    iput v4, v3, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    .line 138
    const v10, 0x7f0801cc

    invoke-virtual {v2, v10}, Landroid/widget/TableRow;->setId(I)V

    .line 139
    invoke-virtual {v2, v7, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v9, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v10, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    invoke-direct {v10, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->closeMe()V

    .line 146
    :cond_0
    return-void
.end method

.method generateRandomString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 818
    const-string v1, "23456789ABCDEFGHJKMNPQRSTUVWXYZ"

    .line 819
    .local v1, "data":Ljava/lang/String;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 821
    .local v4, "random":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 823
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 824
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->database:Lcom/google/firebase/database/FirebaseDatabase;

    .line 828
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->database:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v7, "BotCode"

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    iput-object v6, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v0, "botCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/Classes/BotCodeDatabase;>;"
    iput-boolean v9, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->foundCode:Z

    .line 833
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->botCodeDatabase:Lcom/google/firebase/database/DatabaseReference;

    new-instance v7, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;

    invoke-direct {v7, p0, v0, v5}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v7}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 857
    iget-boolean v6, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->foundCode:Z

    if-eqz v6, :cond_1

    .line 858
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->generateRandomString()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "newString":Ljava/lang/String;
    invoke-virtual {v5, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 862
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 863
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    .end local v3    # "newString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->viewGroup:Landroid/view/ViewGroup;

    .line 78
    const v4, 0x7f0a003b

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    .line 79
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->inflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v5, 0x7f0801d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 82
    .local v3, "saveButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/ProgramSaver$1;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$1;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v5, 0x7f080090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "closeButton":Landroid/widget/Button;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/ProgramSaver$2;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$2;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v5, 0x7f080096

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 98
    .local v2, "cloudSaveButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v5, 0x7f080095

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->cloudSaveHolder:Landroid/widget/RelativeLayout;

    .line 108
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v5, 0x7f0801ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 109
    .local v1, "closeCloudSaveButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/elenco/snapcoder/BotCode/ProgramSaver$4;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$4;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    return-object v4
.end method

.method setUpCommandList()Ljava/util/ArrayList;
    .locals 28
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
    .line 594
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v20, "commandArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v6, 0x7f080099

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 597
    .local v27, "uiCommandList":Landroid/widget/LinearLayout;
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_4

    .line 599
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 600
    .local v21, "commandBlock":Landroid/widget/RelativeLayout;
    const v2, 0x7f080067

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 602
    .local v23, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v2, 0x7f0801f6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 604
    .local v26, "speedImage":Landroid/widget/ImageView;
    const-string v9, "Fast"

    .line 606
    .local v9, "speedChosen":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080167

    if-eq v2, v6, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080057

    if-eq v2, v6, :cond_0

    .line 607
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f0700e0

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v2, v6, :cond_2

    .line 608
    const-string v9, "Fast"

    .line 613
    :cond_0
    :goto_1
    const-wide/16 v24, 0x0

    .line 614
    .local v24, "durationDouble":D
    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 616
    const-wide v24, 0x4058beb851eb851fL    # 98.98

    .line 622
    :goto_2
    const-string v10, ""

    .line 623
    .local v10, "comment":Ljava/lang/String;
    const v2, 0x7f0800b0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    .line 624
    .local v22, "commentCode":Landroid/widget/EditText;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 625
    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 628
    :cond_1
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v24

    double-to-int v3, v6

    .line 629
    .local v3, "duration":I
    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 597
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 609
    .end local v3    # "duration":I
    .end local v10    # "comment":Ljava/lang/String;
    .end local v22    # "commentCode":Landroid/widget/EditText;
    .end local v24    # "durationDouble":D
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f0700e3

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v2, v6, :cond_0

    .line 610
    const-string v9, "Slow"

    goto :goto_1

    .line 618
    .restart local v24    # "durationDouble":D
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    goto :goto_2

    .line 631
    .restart local v3    # "duration":I
    .restart local v10    # "comment":Ljava/lang/String;
    .restart local v22    # "commentCode":Landroid/widget/EditText;
    :sswitch_0
    const/4 v4, 0x1

    const-string v6, "moveForwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 634
    :sswitch_1
    const/4 v4, 0x1

    const-string v6, "moveBackwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 637
    :sswitch_2
    const/4 v4, 0x1

    const-string v6, "turnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 640
    :sswitch_3
    const/4 v4, 0x1

    const-string v6, "turnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 643
    :sswitch_4
    const/4 v4, 0x1

    const-string v6, "hardTurnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 646
    :sswitch_5
    const/4 v4, 0x1

    const-string v6, "hardTurnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 649
    :sswitch_6
    div-int/lit16 v4, v3, 0x3e8

    .line 650
    .local v4, "iterations":I
    const-string v6, "beginningOfLoop"

    const-string v7, "structureCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 653
    .end local v4    # "iterations":I
    :sswitch_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, "endOfLoop"

    const-string v16, "structureCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 656
    :sswitch_8
    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 659
    :sswitch_9
    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 662
    :sswitch_a
    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 665
    :sswitch_b
    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 668
    :sswitch_c
    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 671
    :sswitch_d
    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 674
    :sswitch_e
    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 677
    :sswitch_f
    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 680
    :sswitch_10
    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 683
    :sswitch_11
    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 686
    :sswitch_12
    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 689
    :sswitch_13
    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 692
    :sswitch_14
    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 695
    :sswitch_15
    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 698
    :sswitch_16
    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 701
    :sswitch_17
    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 704
    :sswitch_18
    const/4 v13, 0x1

    const-string v15, "WAIT"

    const-string v16, "directionCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 707
    :sswitch_19
    const/4 v13, 0x1

    const-string v15, "turnCircuitD1OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 710
    :sswitch_1a
    const/4 v13, 0x1

    const-string v15, "turnCircuitD2OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 713
    :sswitch_1b
    const/4 v13, 0x1

    const-string v15, "turnCircuitD3OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 716
    :sswitch_1c
    const/4 v13, 0x1

    const-string v15, "turnCircuitD4OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 719
    :sswitch_1d
    const/4 v13, 0x1

    const-string v15, "turnSingleCircuitOnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 724
    .end local v3    # "duration":I
    .end local v9    # "speedChosen":Ljava/lang/String;
    .end local v10    # "comment":Ljava/lang/String;
    .end local v21    # "commandBlock":Landroid/widget/RelativeLayout;
    .end local v22    # "commentCode":Landroid/widget/EditText;
    .end local v23    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v24    # "durationDouble":D
    .end local v26    # "speedImage":Landroid/widget/ImageView;
    :cond_4
    return-object v20

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080057 -> :sswitch_7
        0x7f08007c -> :sswitch_19
        0x7f08007d -> :sswitch_1a
        0x7f08007e -> :sswitch_1b
        0x7f08007f -> :sswitch_1c
        0x7f080107 -> :sswitch_4
        0x7f080108 -> :sswitch_5
        0x7f080167 -> :sswitch_6
        0x7f080171 -> :sswitch_1
        0x7f080176 -> :sswitch_0
        0x7f08017f -> :sswitch_2
        0x7f080183 -> :sswitch_3
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
