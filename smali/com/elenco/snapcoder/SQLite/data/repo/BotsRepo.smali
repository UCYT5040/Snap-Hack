.class public Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
.super Ljava/lang/Object;
.source "BotsRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bots:Lcom/elenco/snapcoder/SQLite/data/model/Bots;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "CREATE TABLE Bots(BotId INTEGER PRIMARY KEY,BotAddress TEXT,LeftTurnSoft360 REAL,RightTurnSoft360 REAL,LeftTurnHard360 REAL,RightTurnHard360 REAL,TurningDirection TEXT,ReverseTurningDirection TEXT,StraightConfiguration INTEGER,ReverseConfiguration INTEGER,Name TEXT,Icon TEXT,CalibratedStraight INTEGER,CalibratedReverse INTEGER,CalibratedSpinLeft INTEGER,CalibratedSpinRight INTEGER,CalibratedTurnLeft INTEGER,CalibratedTurnRight Integer,TimeDriven INTEGER)"

    return-object v0
.end method


# virtual methods
.method public GetBot(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "botAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Bots;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 161
    .local v0, "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "botLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 165
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT Bots.BotId, Bots.BotAddress, Bots.Name, Bots.Icon, Bots.LeftTurnSoft360, Bots.RightTurnSoft360, Bots.LeftTurnHard360, Bots.RightTurnHard360, Bots.TurningDirection, Bots.ReverseTurningDirection, Bots.StraightConfiguration, Bots.ReverseConfiguration, Bots.CalibratedStraight, Bots.CalibratedReverse, Bots.CalibratedSpinLeft, Bots.CalibratedSpinRight, Bots.CalibratedTurnLeft, Bots.CalibratedTurnRight, Bots.TimeDriven FROM Bots WHERE Bots.BotAddress = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ORDER BY Bots.BotId ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 172
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .end local v0    # "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 175
    .restart local v0    # "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    const-string v5, "BotId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotId(I)V

    .line 176
    const-string v5, "BotAddress"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 177
    const-string v5, "Name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 178
    const-string v5, "Icon"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 179
    const-string v5, "LeftTurnSoft360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnSoft360(F)V

    .line 180
    const-string v5, "RightTurnSoft360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnSoft360(F)V

    .line 181
    const-string v5, "LeftTurnHard360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnHard360(F)V

    .line 182
    const-string v5, "RightTurnHard360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnHard360(F)V

    .line 183
    const-string v5, "TurningDirection"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTurningDirection(Ljava/lang/String;)V

    .line 184
    const-string v5, "ReverseTurningDirection"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseTurningDirection(Ljava/lang/String;)V

    .line 185
    const-string v5, "StraightConfiguration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setStraightConfiguration(I)V

    .line 186
    const-string v5, "ReverseConfiguration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseConfiguration(I)V

    .line 187
    const-string v5, "CalibratedStraight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedStraight(I)V

    .line 188
    const-string v5, "CalibratedReverse"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedReverse(I)V

    .line 189
    const-string v5, "CalibratedSpinLeft"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinLeft(I)V

    .line 190
    const-string v5, "CalibratedSpinRight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinRight(I)V

    .line 191
    const-string v5, "CalibratedTurnLeft"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnLeft(I)V

    .line 192
    const-string v5, "CalibratedTurnRight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnRight(I)V

    .line 193
    const-string v5, "TimeDriven"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTimeDriven(I)V

    .line 194
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 199
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 201
    return-object v1
.end method

.method public GetBots()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Bots;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 118
    .local v0, "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "botLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 121
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT Bots.BotId, Bots.BotAddress, Bots.Name, Bots.Icon, Bots.LeftTurnSoft360, Bots.RightTurnSoft360, Bots.LeftTurnHard360, Bots.RightTurnHard360, Bots.TurningDirection, Bots.ReverseTurningDirection, Bots.StraightConfiguration, Bots.ReverseConfiguration, Bots.CalibratedStraight, Bots.CalibratedReverse, Bots.CalibratedSpinLeft, Bots.CalibratedSpinRight, Bots.CalibratedTurnLeft, Bots.CalibratedTurnRight, Bots.TimeDriven FROM Bots ORDER BY Bots.BotId ASC"

    .line 125
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 127
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    :cond_0
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .end local v0    # "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 130
    .restart local v0    # "botList":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    const-string v5, "BotId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotId(I)V

    .line 131
    const-string v5, "BotAddress"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 132
    const-string v5, "Name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 133
    const-string v5, "Icon"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 134
    const-string v5, "LeftTurnSoft360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnSoft360(F)V

    .line 135
    const-string v5, "RightTurnSoft360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnSoft360(F)V

    .line 136
    const-string v5, "LeftTurnHard360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnHard360(F)V

    .line 137
    const-string v5, "RightTurnHard360"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnHard360(F)V

    .line 138
    const-string v5, "TurningDirection"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTurningDirection(Ljava/lang/String;)V

    .line 139
    const-string v5, "ReverseTurningDirection"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseTurningDirection(Ljava/lang/String;)V

    .line 140
    const-string v5, "StraightConfiguration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setStraightConfiguration(I)V

    .line 141
    const-string v5, "ReverseConfiguration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseConfiguration(I)V

    .line 142
    const-string v5, "CalibratedStraight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedStraight(I)V

    .line 143
    const-string v5, "CalibratedReverse"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedReverse(I)V

    .line 144
    const-string v5, "CalibratedSpinLeft"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinLeft(I)V

    .line 145
    const-string v5, "CalibratedSpinRight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinRight(I)V

    .line 146
    const-string v5, "CalibratedTurnLeft"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnLeft(I)V

    .line 147
    const-string v5, "CalibratedTurnRight"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnRight(I)V

    .line 148
    const-string v5, "TimeDriven"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTimeDriven(I)V

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 156
    return-object v1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Bots"

    const-string v2, "BotId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 114
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->bots:Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    const-string v1, "Bots"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 106
    return-void
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J
    .locals 6
    .param p1, "bots"    # Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .prologue
    .line 51
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "BotAddress"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "Name"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "Icon"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v4, "LeftTurnSoft360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 57
    const-string v4, "RightTurnSoft360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 58
    const-string v4, "LeftTurnHard360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 59
    const-string v4, "RightTurnHard360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 60
    const-string v4, "TurningDirection"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTurningDirection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v4, "ReverseTurningDirection"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseTurningDirection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v4, "StraightConfiguration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getStraightConfiguration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v4, "ReverseConfiguration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseConfiguration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v4, "CalibratedStraight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedStraight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v4, "CalibratedReverse"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedReverse()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v4, "CalibratedSpinLeft"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedSpinLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v4, "CalibratedSpinRight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedSpinRight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v4, "CalibratedTurnLeft"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedTurnLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v4, "CalibratedTurnRight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedTurnRight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v4, "TimeDriven"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v4, "Bots"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 73
    .local v2, "id":J
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 74
    return-wide v2
.end method

.method public update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I
    .locals 7
    .param p1, "bots"    # Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .prologue
    .line 78
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "BotAddress"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "Name"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "Icon"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "LeftTurnSoft360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 84
    const-string v2, "RightTurnSoft360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 85
    const-string v2, "LeftTurnHard360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 86
    const-string v2, "RightTurnHard360"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 87
    const-string v2, "TurningDirection"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTurningDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "ReverseTurningDirection"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseTurningDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "StraightConfiguration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getStraightConfiguration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v2, "ReverseConfiguration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseConfiguration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v2, "CalibratedStraight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedStraight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v2, "CalibratedReverse"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedReverse()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "CalibratedSpinLeft"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedSpinLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v2, "CalibratedSpinRight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedSpinRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "CalibratedTurnLeft"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedTurnLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v2, "CalibratedTurnRight"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedTurnRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v2, "TimeDriven"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v2, "Bots"

    const-string v3, "BotId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
