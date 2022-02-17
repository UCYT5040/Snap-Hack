.class public Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
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

.field loadCode:Ljava/lang/String;

.field programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 3023
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    .line 3025
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

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

    .line 3198
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;-><init>()V

    .line 3200
    .local v0, "botCommand":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v0, p4}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setDuration(I)V

    .line 3202
    invoke-virtual {v0, p2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setIterations(I)V

    .line 3203
    invoke-virtual {v0, p5}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommandType(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {v0, p7}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {v0, p8}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setComment(Ljava/lang/String;)V

    .line 3207
    const-string v1, "beginningOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3208
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    .line 3214
    :goto_0
    const-string v1, "endOfLoop"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3215
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    .line 3221
    :goto_1
    invoke-virtual {v0, p6}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setLoopCommand(Z)V

    .line 3222
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setListOrdinal(J)V

    .line 3224
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 3226
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p3, -0x2

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3228
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBotList(Ljava/util/ArrayList;)V

    .line 3231
    :cond_0
    return-object v0

    .line 3211
    :cond_1
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setBeginLoop(Z)V

    goto :goto_0

    .line 3218
    :cond_2
    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setEndLoop(Z)V

    goto :goto_1
.end method

.method private saveCommandList()V
    .locals 33

    .prologue
    .line 3236
    new-instance v23, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct/range {v23 .. v23}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 3237
    .local v23, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v28, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct/range {v28 .. v28}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 3238
    .local v28, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    new-instance v14, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 3239
    .local v14, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v12, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v12}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 3240
    .local v12, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v8, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 3245
    .local v8, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v17, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-direct/range {v17 .. v17}, Lcom/elenco/snapcoder/SQLite/data/model/Program;-><init>()V

    .line 3246
    .local v17, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->setProgramName(Ljava/lang/String;)V

    .line 3247
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Program;)J

    move-result-wide v20

    .line 3249
    .local v20, "programId":J
    new-instance v24, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-direct/range {v24 .. v24}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;-><init>()V

    .line 3250
    .local v24, "subroutine":Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubroutineName(Ljava/lang/String;)V

    .line 3251
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubRoutineProgramId(I)V

    .line 3252
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;)J

    move-result-wide v26

    .line 3254
    .local v26, "subroutineId":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 3257
    const-string v30, "SAVELOG"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3259
    new-instance v9, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-direct {v9}, Lcom/elenco/snapcoder/SQLite/data/model/Command;-><init>()V

    .line 3261
    .local v9, "command":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3263
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandOrder(I)V

    .line 3264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3265
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setSubroutineId(I)V

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

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

    .line 3270
    invoke-virtual {v14, v9}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Command;)J

    move-result-wide v18

    .line 3272
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/BotCode/BotCommand;

    .line 3273
    .local v3, "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/BotCode/BotCommand;->getBotList()Ljava/util/ArrayList;

    move-result-object v29

    if-eqz v29, :cond_6

    .line 3275
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

    .line 3277
    .local v2, "bot":Lcom/elenco/snapcoder/model/Bot;
    new-instance v10, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-direct {v10}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;-><init>()V

    .line 3278
    .local v10, "commandBots":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setCommandBotCommandId(I)V

    .line 3280
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 3281
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v31

    const/16 v29, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v29, :pswitch_data_0

    .line 3316
    :cond_1
    :goto_3
    invoke-virtual {v12, v10}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;)V

    goto :goto_1

    .line 3281
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

    .line 3283
    :pswitch_0
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 3286
    :pswitch_1
    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 3289
    :pswitch_2
    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 3292
    :pswitch_3
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto :goto_3

    .line 3296
    :cond_2
    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v7

    .line 3298
    .local v7, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/4 v15, 0x0

    .line 3300
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

    .line 3301
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

    .line 3302
    :cond_4
    const/4 v15, 0x1

    .line 3303
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    .line 3308
    .end local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_5
    if-nez v15, :cond_1

    .line 3309
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 3310
    .restart local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v8, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    move-result-wide v4

    .line 3312
    .local v4, "botId":J
    long-to-int v0, v4

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    goto/16 :goto_3

    .line 3254
    .end local v2    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v4    # "botId":J
    .end local v6    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v10    # "commandBots":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    .end local v15    # "foundBot":Z
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 3321
    .end local v3    # "botCommandFinal":Lcom/elenco/snapcoder/BotCode/BotCommand;
    .end local v9    # "command":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    .end local v18    # "id":J
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v22

    .line 3322
    .local v22, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/16 v16, 0x0

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 3323
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

    .line 3322
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3326
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v25

    .line 3327
    .local v25, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/16 v16, 0x0

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 3328
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

    .line 3327
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 3331
    :cond_9
    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v13

    .line 3332
    .local v13, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/16 v16, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 3333
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

    .line 3332
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 3336
    :cond_a
    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v11

    .line 3337
    .local v11, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/16 v16, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 3338
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

    .line 3337
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 3341
    :cond_b
    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v7

    .line 3342
    .restart local v7    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/16 v16, 0x0

    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 3343
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

    .line 3342
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 3345
    :cond_c
    return-void

    .line 3281
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
    .line 3062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3063
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v6, 0x7f08014b

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 3065
    .local v26, "uiCommandList":Landroid/widget/LinearLayout;
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_5

    .line 3067
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 3068
    .local v20, "commandBlock":Landroid/widget/RelativeLayout;
    const v2, 0x7f080067

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 3070
    .local v24, "durationTextView":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v2, 0x7f0801f6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 3072
    .local v25, "speedImage":Landroid/widget/ImageView;
    const-string v9, "Fast"

    .line 3074
    .local v9, "speedChosen":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080167

    if-eq v2, v6, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const v6, 0x7f080057

    if-eq v2, v6, :cond_0

    .line 3075
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f07011c

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v2, v6, :cond_2

    .line 3076
    const-string v9, "Fast"

    .line 3083
    :cond_0
    :goto_1
    const-wide/16 v22, 0x0

    .line 3084
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

    .line 3086
    const-wide v22, 0x4058beb851eb851fL    # 98.98

    .line 3092
    :goto_2
    const-string v10, ""

    .line 3093
    .local v10, "comment":Ljava/lang/String;
    const v2, 0x7f0800b0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/EditText;

    .line 3094
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

    .line 3095
    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3098
    :cond_1
    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v22

    double-to-int v3, v6

    .line 3099
    .local v3, "duration":I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3065
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3077
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

    const v7, 0x7f07011b

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v2, v6, :cond_3

    .line 3078
    const-string v9, "Medium"

    goto :goto_1

    .line 3079
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f07011a

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v2, v6, :cond_0

    .line 3080
    const-string v9, "Slow"

    goto/16 :goto_1

    .line 3088
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

    goto/16 :goto_2

    .line 3101
    .restart local v3    # "duration":I
    .restart local v10    # "comment":Ljava/lang/String;
    .restart local v21    # "commentCode":Landroid/widget/EditText;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "moveForwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3104
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "moveBackwardCommand"

    const-string v7, "directionCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3107
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "turnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3110
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "turnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3113
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "hardTurnLeftCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3116
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v6, "hardTurnRightCommand"

    const-string v7, "turnCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3119
    :sswitch_6
    div-int/lit16 v4, v3, 0x3e8

    .line 3120
    .local v4, "iterations":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const-string v6, "beginningOfLoop"

    const-string v7, "structureCommand"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3123
    .end local v4    # "iterations":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, "endOfLoop"

    const-string v16, "structureCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3126
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3129
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3132
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3135
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3138
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3141
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3144
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3147
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinSoft360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3150
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3153
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3156
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3159
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnLeftSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3162
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard90Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3165
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0x7d0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard180Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3168
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xbb8

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard270Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3171
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/16 v12, 0xfa0

    const/4 v13, 0x1

    const-string v15, "turnRightSpinHard360Command"

    const-string v16, "turnCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3174
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "WAIT"

    const-string v16, "directionCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3177
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD1OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3180
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD2OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3183
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD3OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3186
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnCircuitD4OnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3189
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->commandArrayList:Ljava/util/ArrayList;

    const/4 v13, 0x1

    const-string v15, "turnSingleCircuitOnCommand"

    const-string v16, "circuitCommand"

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move v12, v3

    move v14, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->makeBotCommand(IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/elenco/snapcoder/BotCode/BotCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3194
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

    .line 3099
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


# virtual methods
.method DeleteProgram(I)V
    .locals 17
    .param p1, "programId"    # I

    .prologue
    .line 3348
    new-instance v11, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 3349
    .local v11, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v13, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 3350
    .local v13, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 3351
    .local v6, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v4, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 3352
    .local v4, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 3354
    .local v2, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v12

    .line 3356
    .local v12, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 3357
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_4

    .line 3359
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v5

    .line 3361
    .local v5, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 3362
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

    .line 3364
    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v3

    .line 3366
    .local v3, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_1

    .line 3367
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

    .line 3368
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->delete(I)V

    .line 3366
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3371
    :cond_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v14

    invoke-virtual {v6, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->delete(I)V

    .line 3361
    .end local v3    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    .end local v9    # "k":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3374
    :cond_3
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v14}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->delete(I)V

    .line 3356
    .end local v5    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 3377
    :cond_5
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->delete(I)V

    .line 3379
    invoke-virtual {v11}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v10

    .line 3380
    .local v10, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_6

    .line 3381
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

    .line 3380
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3384
    :cond_6
    invoke-virtual {v13}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v12

    .line 3385
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_7

    .line 3386
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

    .line 3385
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3389
    :cond_7
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v5

    .line 3390
    .restart local v5    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v7, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_8

    .line 3391
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

    .line 3390
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 3394
    :cond_8
    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v3

    .line 3395
    .restart local v3    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v7, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 3396
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

    .line 3395
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3399
    :cond_9
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v1

    .line 3400
    .local v1, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/4 v7, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 3401
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

    .line 3400
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3404
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->setUpCommandList()V

    .line 3405
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->saveCommandList()V

    .line 3406
    return-void
.end method

.method createVisual()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 3409
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v9

    const v10, 0x7f0800aa

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 3411
    .local v8, "tableLayout":Landroid/widget/TableLayout;
    new-instance v1, Landroid/widget/TableRow;

    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 3413
    .local v1, "newRow":Landroid/widget/TableRow;
    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0a0053

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 3414
    .local v6, "routineLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3415
    .local v7, "routineName":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3417
    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v9}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3418
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x43480000    # 200.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v5, v9

    .line 3419
    .local v5, "pixelswidth":I
    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42200000    # 40.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v4, v9

    .line 3420
    .local v4, "pixelsheight":I
    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v3, v9

    .line 3422
    .local v3, "pixelsbottom":I
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v4, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 3423
    .local v2, "param":Landroid/widget/TableRow$LayoutParams;
    const/4 v9, 0x4

    iput v9, v2, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 3424
    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    .line 3426
    const v9, 0x7f0801cc

    invoke-virtual {v1, v9}, Landroid/widget/TableRow;->setId(I)V

    .line 3427
    invoke-virtual {v1, v6, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3428
    invoke-virtual {v8, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 3430
    new-instance v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {v9, v10}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3431
    return-void
.end method

.method saveCode(Ljava/lang/String;)V
    .locals 8
    .param p1, "loadedCode"    # Ljava/lang/String;

    .prologue
    .line 3029
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    .line 3030
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3032
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->programRepo:Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v4

    .line 3034
    .local v4, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v1, 0x0

    .line 3036
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

    .line 3037
    .local v2, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->loadCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3038
    const/4 v1, 0x1

    .line 3039
    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v3

    .line 3040
    .local v3, "programId":I
    invoke-virtual {p0, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->DeleteProgram(I)V

    .line 3045
    .end local v2    # "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    .end local v3    # "programId":I
    :cond_1
    if-nez v1, :cond_2

    .line 3046
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->setUpCommandList()V

    .line 3047
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->saveCommandList()V

    .line 3048
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->createVisual()V

    .line 3058
    .end local v1    # "foundProgram":Z
    .end local v4    # "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    :cond_2
    :goto_0
    return-void

    .line 3051
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$SaveExecution;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3052
    .local v0, "botSelectionCheckDialog":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v5, "Program name not entered"

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3053
    const-string v5, "Enter a valid name for the program."

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3054
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 3055
    const-string v5, "OK"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3056
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
