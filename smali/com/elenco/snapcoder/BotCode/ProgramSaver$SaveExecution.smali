.class public Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;
.super Ljava/lang/Object;
.source "ProgramSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveExecution"
.end annotation


# instance fields
.field commandArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field

.field nameInput:Landroid/widget/EditText;

.field programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V
    .locals 2
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->nameInput:Landroid/widget/EditText;

    .line 209
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

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

    .line 380
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 382
    .local v0, "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0, p4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 384
    invoke-virtual {v0, p2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 385
    invoke-virtual {v0, p5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommandType(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p7}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setComment(Ljava/lang/String;)V

    .line 389
    const-string v1, "beginningOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    .line 396
    :goto_0
    const-string v1, "endOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    .line 403
    :goto_1
    invoke-virtual {v0, p6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setLoopCommand(Z)V

    .line 404
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 406
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 408
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p3, -0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 413
    :cond_0
    return-object v0

    .line 393
    :cond_1
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    goto :goto_1
.end method

.method private saveCommandList()V
    .locals 33

    .prologue
    .line 418
    new-instance v23, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct/range {v23 .. v23}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 419
    .local v23, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v28, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct/range {v28 .. v28}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 420
    .local v28, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    new-instance v14, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 421
    .local v14, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v12, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v12}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 422
    .local v12, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v8, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 427
    .local v8, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v17, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-direct/range {v17 .. v17}, Lcom/elenco/snapcoder/SQLite/data/model/Program;-><init>()V

    .line 428
    .local v17, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->nameInput:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->setProgramName(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Program;)J

    move-result-wide v20

    .line 431
    .local v20, "programId":J
    new-instance v24, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-direct/range {v24 .. v24}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;-><init>()V

    .line 432
    .local v24, "subroutine":Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->nameInput:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubroutineName(Ljava/lang/String;)V

    .line 433
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubRoutineProgramId(I)V

    .line 434
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;)J

    move-result-wide v26

    .line 436
    .local v26, "subroutineId":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 439
    const-string v30, "SAVELOG"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v9, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-direct {v9}, Lcom/elenco/snapcoder/SQLite/data/model/Command;-><init>()V

    .line 443
    .local v9, "command":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getDuration()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setDuration(F)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getIterations()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setIteration(I)V

    .line 445
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandOrder(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommand()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandSQL(Ljava/lang/String;)V

    .line 447
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setSubroutineId(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getCommandType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandType(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getSetSpeed()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setSpeed(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getComment()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setComment(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v14, v9}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Command;)J

    move-result-wide v18

    .line 454
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 455
    .local v3, "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v29

    if-eqz v29, :cond_6

    .line 457
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    .line 459
    .local v2, "bot":Lcom/elenco/snapcoder/model/Bot;
    new-instance v10, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-direct {v10}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;-><init>()V

    .line 460
    .local v10, "commandBots":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setCommandBotCommandId(I)V

    .line 462
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 463
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v31

    const/16 v29, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v29, :pswitch_data_0

    .line 498
    :cond_1
    :goto_3
    invoke-virtual {v12, v10}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;)V

    goto :goto_1

    .line 463
    :sswitch_0
    const-string v32, "Blue"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v29, 0x0

    goto :goto_2

    :sswitch_1
    const-string v32, "Green"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v29, 0x1

    goto :goto_2

    :sswitch_2
    const-string v32, "Orange"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v29, 0x2

    goto :goto_2

    :sswitch_3
    const-string v32, "Yellow"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v29, 0x3

    goto :goto_2

    .line 465
    :pswitch_0
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 468
    :pswitch_1
    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 471
    :pswitch_2
    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 474
    :pswitch_3
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 478
    :cond_2
    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v7

    .line 480
    .local v7, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/4 v15, 0x0

    .line 482
    .local v15, "foundBot":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 483
    .local v6, "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_4

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 484
    :cond_4
    const/4 v15, 0x1

    .line 485
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    .line 490
    .end local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_5
    if-nez v15, :cond_1

    .line 491
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 492
    .restart local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v8, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    move-result-wide v4

    .line 494
    .local v4, "botId":J
    long-to-int v0, v4

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto/16 :goto_3

    .line 436
    .end local v2    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v4    # "botId":J
    .end local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v10    # "commandBots":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    .end local v15    # "foundBot":Z
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 503
    .end local v3    # "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v9    # "command":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    .end local v18    # "id":J
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v22

    .line 504
    .local v22, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/16 v16, 0x0

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 505
    const-string v30, "LoadTag"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Program: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " ProgramId, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " ProgramName"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 508
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v25

    .line 509
    .local v25, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/16 v16, 0x0

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 510
    const-string v30, "LoadTag"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Subroutine "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " SubroutineId, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " SubroutineName, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " SubroutineProgramId"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 513
    :cond_9
    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v13

    .line 514
    .local v13, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/16 v16, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 515
    const-string v30, "LoadTag"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Command: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " CommandId, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " CommandType, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Duration, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getIteration()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Iteration, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandSQL()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Command,"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandOrder()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " CommandOrder, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Speed, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getComment()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Comment, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " SubroutineId"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 518
    :cond_a
    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v11

    .line 519
    .local v11, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/16 v16, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 520
    const-string v30, "LoadTag"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CommandBots: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " CommandBotsId, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " CommandId, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getBotId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " BotId"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 523
    :cond_b
    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v7

    .line 524
    .restart local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/16 v16, 0x0

    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 525
    const-string v30, "LoadTag"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Bots: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Bot Address, "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v29 .. v29}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v29

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, " Bot Id"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 527
    :cond_c
    return-void

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72bcedb2 -> :sswitch_2
        -0x625eaf6c -> :sswitch_3
        0x1fa47a -> :sswitch_0
        0x41ddee3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setUpCommandList()V
    .locals 27

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v6, 0x7f080099

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 247
    .local v26, "uiCommandList":Landroid/widget/LinearLayout;
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_5

    .line 249
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 250
    .local v20, "commandBlock":Landroid/widget/RelativeLayout;
    const v2, 0x7f080067

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 252
    .local v24, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v2, 0x7f0801f6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 254
    .local v25, "speedImage":Landroid/widget/ImageView;
    const-string v9, "Fast"

    .line 256
    .local v9, "speedChosen":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080167

    if-eq v2, v6, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080057

    if-eq v2, v6, :cond_0

    .line 257
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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

    .line 258
    const-string v9, "Fast"

    .line 265
    :cond_0
    :goto_1
    const-wide/16 v22, 0x0

    .line 266
    .local v22, "durationDouble":D
    invoke-virtual/range {v24 .. v24}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    const-wide v22, 0x4058beb851eb851fL    # 98.98

    .line 274
    :goto_2
    const-string v10, ""

    .line 275
    .local v10, "comment":Ljava/lang/String;
    const v2, 0x7f0800b0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 276
    .local v21, "commentCode":Landroid/widget/EditText;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 280
    :cond_1
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v22

    double-to-int v3, v6

    .line 281
    .local v3, "duration":I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 259
    .end local v3    # "duration":I
    .end local v10    # "comment":Ljava/lang/String;
    .end local v21    # "commentCode":Landroid/widget/EditText;
    .end local v22    # "durationDouble":D
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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

    if-ne v2, v6, :cond_3

    .line 260
    const-string v9, "Slow"

    goto :goto_1

    .line 262
    :cond_3
    const-string v9, "Fast"

    goto :goto_1

    .line 270
    .restart local v22    # "durationDouble":D
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    goto :goto_2

    .line 283
    .restart local v3    # "duration":I
    .restart local v10    # "comment":Ljava/lang/String;
    .restart local v21    # "commentCode":Landroid/widget/EditText;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "moveForwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "moveBackwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 289
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "turnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 292
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "turnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 295
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "hardTurnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 298
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "hardTurnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 301
    :sswitch_6
    div-int/lit16 v4, v3, 0x3e8

    .line 302
    .local v4, "iterations":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const-string v6, "beginningOfLoop"

    const-string v7, "structureCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 305
    .end local v4    # "iterations":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, "endOfLoop"

    const-string v16, "structureCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 308
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 311
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 314
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 317
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 320
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 323
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 326
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 329
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 332
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 335
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 338
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 341
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 344
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 347
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 350
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 353
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 356
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "WAIT"

    const-string v16, "directionCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 359
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD1OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 362
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD2OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 365
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD3OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 368
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD4OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 371
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnSingleCircuitOnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 376
    .end local v3    # "duration":I
    .end local v9    # "speedChosen":Ljava/lang/String;
    .end local v10    # "comment":Ljava/lang/String;
    .end local v20    # "commandBlock":Landroid/widget/RelativeLayout;
    .end local v21    # "commentCode":Landroid/widget/EditText;
    .end local v22    # "durationDouble":D
    .end local v24    # "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v25    # "speedImage":Landroid/widget/ImageView;
    :cond_5
    return-void

    .line 281
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


# virtual methods
.method DeleteProgram(I)V
    .locals 17
    .param p1, "programId"    # I

    .prologue
    .line 530
    new-instance v11, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 531
    .local v11, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v13, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 532
    .local v13, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 533
    .local v6, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v4, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 534
    .local v4, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 536
    .local v2, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v12

    .line 538
    .local v12, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 539
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_4

    .line 541
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v5

    .line 543
    .local v5, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 544
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v15

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v14

    if-ne v15, v14, :cond_2

    .line 546
    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v3

    .line 548
    .local v3, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_1

    .line 549
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v15

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v14

    if-ne v15, v14, :cond_0

    .line 550
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->delete(I)V

    .line 548
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 553
    :cond_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v14

    invoke-virtual {v6, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->delete(I)V

    .line 543
    .end local v3    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    .end local v9    # "k":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 556
    :cond_3
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->delete(I)V

    .line 538
    .end local v5    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 559
    :cond_5
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->delete(I)V

    .line 561
    invoke-virtual {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v10

    .line 562
    .local v10, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_6

    .line 563
    const-string v15, "DeleteTag"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Program: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ProgramId, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ProgramName"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 566
    :cond_6
    invoke-virtual {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v12

    .line 567
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_7

    .line 568
    const-string v15, "DeleteTag"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Subroutine "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " SubroutineId, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " SubroutineName, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " SubroutineProgramId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 571
    :cond_7
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v5

    .line 572
    .restart local v5    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v7, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_8

    .line 573
    const-string v15, "DeleteTag"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Command: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " CommandId, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " CommandType, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Duration, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandOrder()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " CommandOrder, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " SubroutineId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 576
    :cond_8
    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v3

    .line 577
    .restart local v3    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v7, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 578
    const-string v15, "DeleteTag"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CommandBots: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " CommandBotsId, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " CommandId, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getBotId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " BotId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 581
    :cond_9
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/4 v7, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 583
    const-string v15, "DeleteTag"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bots: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Bot Address, "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Bot Id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 586
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->setUpCommandList()V

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->saveCommandList()V

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->closeMe()V

    .line 589
    return-void
.end method

.method saveCode(Z)V
    .locals 8
    .param p1, "isCloudSave"    # Z

    .prologue
    .line 212
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 214
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v4

    .line 216
    .local v4, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v1, 0x0

    .line 218
    .local v1, "foundProgram":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    .line 219
    .local v2, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->nameInput:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 221
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v3

    .line 222
    .local v3, "programId":I
    invoke-virtual {p0, v3}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->DeleteProgram(I)V

    .line 227
    .end local v2    # "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    .end local v3    # "programId":I
    :cond_1
    if-nez v1, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->setUpCommandList()V

    .line 229
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->saveCommandList()V

    .line 230
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v5, p1}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->createVisual(Z)V

    .line 240
    .end local v1    # "foundProgram":Z
    .end local v4    # "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "botSelectionCheckDialog":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v5, "Program name not entered"

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    const-string v5, "Enter a valid name for the program."

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 237
    const-string v5, "OK"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
