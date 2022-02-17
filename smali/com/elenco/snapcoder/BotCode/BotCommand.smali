.class public Lcom/elenco/snapcoder/BotCode/BotCommand;
.super Ljava/lang/Object;
.source "BotCommand.java"


# instance fields
.field private botList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field private command:Ljava/lang/String;

.field private commandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field

.field private commandType:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private currentDirection:Ljava/lang/String;

.field private currentX:I

.field private currentY:I

.field private duration:I

.field private isBeginLoop:Z

.field private isEndLoop:Z

.field private isLoopCommand:Z

.field private iterations:I

.field private listOrdinal:J

.field private setSpeed:Ljava/lang/String;

.field private setupFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBotCommand()V
    .locals 15

    .prologue
    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    .line 155
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 157
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/elenco/snapcoder/model/Bot;->setDriveCommand(Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Spin"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Custom"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 160
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 161
    .local v2, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 165
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Hard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 166
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Left"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v3

    .line 181
    .local v3, "duration2":F
    :goto_1
    const-string v6, "MYTAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " duration"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "90"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    float-to-double v10, v3

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    double-to-int v6, v10

    int-to-float v3, v6

    .line 193
    :cond_1
    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 195
    .local v5, "multiplier":F
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    iget-object v9, v6, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 207
    :goto_4
    mul-float v4, v3, v5

    .line 209
    .local v4, "fixedDuration":F
    invoke-virtual {v0, v4}, Lcom/elenco/snapcoder/model/Bot;->setDuration(F)V

    .line 210
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getExecuteCommand()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    float-to-long v10, v4

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed:Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v6}, Lcom/elenco/snapcoder/model/Bot;->executeDriveCommand(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v3    # "duration2":F
    .end local v4    # "fixedDuration":F
    .end local v5    # "multiplier":F
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v3

    .restart local v3    # "duration2":F
    goto :goto_1

    .line 173
    .end local v3    # "duration2":F
    :cond_4
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Left"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v3

    .line 175
    .restart local v3    # "duration2":F
    const/high16 v3, 0x45fa0000    # 8000.0f

    goto :goto_1

    .line 177
    .end local v3    # "duration2":F
    :cond_5
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v3

    .restart local v3    # "duration2":F
    goto :goto_1

    .line 185
    :cond_6
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "180"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 186
    float-to-double v10, v3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v6, v10

    int-to-float v3, v6

    goto :goto_2

    .line 187
    :cond_7
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "270"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 188
    float-to-double v10, v3

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v6, v10

    int-to-float v3, v6

    goto :goto_2

    .line 189
    :cond_8
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "360"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 195
    .restart local v5    # "multiplier":F
    :sswitch_0
    const-string v10, "Slow"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    goto :goto_3

    :sswitch_1
    const-string v10, "Medium"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v10, "Fast"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x2

    goto/16 :goto_3

    .line 197
    :pswitch_0
    const v5, 0x402ccccd    # 2.7f

    .line 198
    goto/16 :goto_4

    .line 200
    :pswitch_1
    const v5, 0x3fb33333    # 1.4f

    .line 201
    goto/16 :goto_4

    .line 203
    :pswitch_2
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 214
    .end local v1    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v2    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v3    # "duration2":F
    .end local v5    # "multiplier":F
    :cond_9
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Custom"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-nez v6, :cond_d

    .line 215
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 216
    .restart local v2    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 218
    .restart local v1    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Spin"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 221
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Left"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 222
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v6

    div-float v3, v6, v14

    .line 236
    .restart local v3    # "duration2":F
    :goto_5
    iget v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->duration:I

    int-to-float v6, v6

    const/high16 v9, 0x43b40000    # 360.0f

    div-float/2addr v6, v9

    mul-float/2addr v6, v3

    float-to-int v6, v6

    int-to-float v3, v6

    .line 238
    invoke-virtual {v0, v3}, Lcom/elenco/snapcoder/model/Bot;->setDuration(F)V

    .line 239
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getExecuteCommand()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    float-to-long v10, v3

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed:Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v6}, Lcom/elenco/snapcoder/model/Bot;->executeDriveCommand(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v3    # "duration2":F
    :cond_a
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v6

    div-float v3, v6, v14

    .restart local v3    # "duration2":F
    goto :goto_5

    .line 227
    .end local v3    # "duration2":F
    :cond_b
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    const-string v9, "Left"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 228
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v6

    div-float v3, v6, v14

    .restart local v3    # "duration2":F
    goto :goto_5

    .line 230
    .end local v3    # "duration2":F
    :cond_c
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v6

    div-float v3, v6, v14

    .restart local v3    # "duration2":F
    goto :goto_5

    .line 245
    .end local v1    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v2    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v3    # "duration2":F
    :cond_d
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    iget v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->duration:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/elenco/snapcoder/model/Bot;->setDuration(F)V

    .line 247
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getExecuteCommand()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    iget v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->duration:I

    int-to-long v10, v6

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed:Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v6}, Lcom/elenco/snapcoder/model/Bot;->executeDriveCommand(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 253
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_e
    return-void

    .line 195
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

.method public getBotList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandList()Ljava/util/ArrayList;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->commandList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->commandType:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentX()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentX:I

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->duration:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->iterations:I

    return v0
.end method

.method public getListOrdinal()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->listOrdinal:J

    return-wide v0
.end method

.method public getSetSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public isBeginLoop()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isBeginLoop:Z

    return v0
.end method

.method public isEndLoop()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isEndLoop:Z

    return v0
.end method

.method public isLoopCommand()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isLoopCommand:Z

    return v0
.end method

.method public isSetupFinished()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setupFinished:Z

    return v0
.end method

.method public moveBotsBackward()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 267
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnBack()V

    goto :goto_0

    .line 269
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method

.method public moveBotsForward()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 259
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnForward()V

    goto :goto_0

    .line 261
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method

.method public setBeginLoop(Z)V
    .locals 0
    .param p1, "beginLoop"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isBeginLoop:Z

    .line 46
    return-void
.end method

.method public setBotList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "botList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->command:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCommandList(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 59
    .local p1, "commandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->commandList:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public setCommandType(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandType"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->commandType:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCurrentDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentDirection:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCurrentX(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentX:I

    .line 130
    return-void
.end method

.method public setCurrentY(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->currentY:I

    .line 138
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->duration:I

    .line 88
    return-void
.end method

.method public setEndLoop(Z)V
    .locals 0
    .param p1, "endLoop"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isEndLoop:Z

    .line 50
    return-void
.end method

.method public setIterations(I)V
    .locals 0
    .param p1, "iterations"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->iterations:I

    .line 42
    return-void
.end method

.method public setListOrdinal(J)V
    .locals 1
    .param p1, "listOrdinal"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->listOrdinal:J

    .line 72
    return-void
.end method

.method public setLoopCommand(Z)V
    .locals 0
    .param p1, "loopCommand"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->isLoopCommand:Z

    .line 54
    return-void
.end method

.method public setSetupFinished(Z)V
    .locals 0
    .param p1, "setupFinished"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setupFinished:Z

    .line 68
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "setSpeed"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->setSpeed:Ljava/lang/String;

    return-void
.end method

.method public turnBotsHardLeft()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 299
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnPowerLeft()V

    goto :goto_0

    .line 301
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method

.method public turnBotsHardRight()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 291
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnPowerRight()V

    goto :goto_0

    .line 293
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method

.method public turnBotsLeft()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 283
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnLeft()V

    goto :goto_0

    .line 285
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method

.method public turnBotsRight()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCommand;->botList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 275
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->turnRight()V

    goto :goto_0

    .line 277
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_0
    return-void
.end method
