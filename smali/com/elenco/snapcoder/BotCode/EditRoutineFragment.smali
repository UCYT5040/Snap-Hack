.class public Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;
.super Landroid/support/v4/app/Fragment;
.source "EditRoutineFragment.java"


# static fields
.field public static routineName:Ljava/lang/String;


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->closeMe()V

    return-void
.end method

.method private closeMe()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 203
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "editRoutine"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 204
    .local v0, "editRoutineFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method deleteRoutine()V
    .locals 22

    .prologue
    .line 77
    const-string v19, "MYTAG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Deleting routine "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v15, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v15}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 80
    .local v15, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v18, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 81
    .local v18, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;-><init>()V

    .line 82
    .local v7, "commandRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;-><init>()V

    .line 83
    .local v5, "commandBotsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 84
    .local v3, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v15}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v14

    .line 86
    .local v14, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v13, 0x0

    .line 88
    .local v13, "programId":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    .line 89
    .local v12, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 90
    invoke-virtual {v12}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v13

    .line 95
    .end local v12    # "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v17

    .line 97
    .local v17, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_7

    .line 98
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_6

    .line 100
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v6

    .line 102
    .local v6, "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 103
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v20

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 105
    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    .line 108
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v20

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 109
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->delete(I)V

    .line 107
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 112
    :cond_3
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->delete(I)V

    .line 102
    .end local v4    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    .end local v11    # "k":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 115
    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->delete(I)V

    .line 97
    .end local v6    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    .end local v10    # "j":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 118
    :cond_7
    invoke-virtual {v15, v13}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->delete(I)V

    .line 120
    invoke-virtual {v15}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v14

    .line 121
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 122
    const-string v20, "DeleteTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Program: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " ProgramId, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " ProgramName"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v17

    .line 126
    const/4 v9, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_9

    .line 127
    const-string v20, "DeleteTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Subroutine "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " SubroutineId, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " SubroutineName, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " SubroutineProgramId"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 130
    :cond_9
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->getCommand()Ljava/util/List;

    move-result-object v6

    .line 131
    .restart local v6    # "commandList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    const/4 v9, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    .line 132
    const-string v20, "DeleteTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Command: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " CommandId, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandType()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " CommandType, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " Duration, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandOrder()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " CommandOrder, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " SubroutineId"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 135
    :cond_a
    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->getCommandBots()Ljava/util/List;

    move-result-object v4

    .line 136
    .restart local v4    # "commandBotsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    const/4 v9, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_b

    .line 137
    const-string v20, "DeleteTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CommandBots: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " CommandBotsId, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " CommandId, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getBotId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " BotId"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 140
    :cond_b
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/4 v9, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_c

    .line 142
    const-string v20, "DeleteTag"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bots: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " Bot Address, "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual/range {v19 .. v19}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " Bot Id"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 145
    :cond_c
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v19

    const v20, 0x7f0800aa

    invoke-virtual/range {v19 .. v20}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .line 146
    .local v8, "commandTable":Landroid/widget/TableLayout;
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v8}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_d

    .line 147
    invoke-virtual {v8, v9}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7f0801cc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 148
    invoke-virtual {v8, v9}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TableRow;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 149
    .local v16, "routineNameText":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 150
    invoke-virtual {v8, v9}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 155
    .end local v16    # "routineNameText":Landroid/widget/TextView;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->closeMe()V

    .line 156
    return-void

    .line 146
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f0a0033

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    .line 47
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->inflater:Landroid/view/LayoutInflater;

    .line 49
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    const v4, 0x7f08008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 50
    .local v0, "closeButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$1;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$1;-><init>(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 58
    .local v1, "deleteRoutineButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$2;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$2;-><init>(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    const v4, 0x7f0801c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 66
    .local v2, "renameRoutineButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$3;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment$3;-><init>(Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    return-object v3
.end method

.method renameRoutine()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 159
    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->view:Landroid/view/View;

    const v11, 0x7f0800e3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 161
    .local v2, "nameInput":Landroid/widget/EditText;
    new-instance v6, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-direct {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;-><init>()V

    .line 162
    .local v6, "programRepo":Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
    new-instance v9, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-direct {v9}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;-><init>()V

    .line 164
    .local v9, "subroutineRepo":Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->getProgram()Ljava/util/List;

    move-result-object v5

    .line 166
    .local v5, "programList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    const/4 v4, 0x0

    .line 168
    .local v4, "programId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    .line 169
    .local v3, "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 170
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v4

    .line 171
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->setProgramName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v6, v3}, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Program;)I

    .line 177
    .end local v3    # "program":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    :cond_1
    invoke-virtual {v9}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->getSubroutine()Ljava/util/List;

    move-result-object v8

    .line 179
    .local v8, "subroutineList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 180
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v10

    if-ne v10, v4, :cond_4

    .line 181
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubroutineName(Ljava/lang/String;)V

    .line 182
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;)I

    .line 187
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    const v11, 0x7f0800aa

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 188
    .local v0, "commandTable":Landroid/widget/TableLayout;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0801cc

    if-ne v10, v11, :cond_5

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableRow;

    invoke-virtual {v10, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 191
    .local v7, "routineNameText":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v7    # "routineNameText":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->closeMe()V

    .line 198
    return-void

    .line 179
    .end local v0    # "commandTable":Landroid/widget/TableLayout;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .restart local v0    # "commandTable":Landroid/widget/TableLayout;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
