.class public Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;
.super Ljava/lang/Object;
.source "CommandBotsRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private commandBots:Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/CommandBotsRepo;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "CREATE TABLE CommandBots(CommandBotId INTEGER PRIMARY KEY,CommandBotCommandId Integer, BotId Integer, FOREIGN KEY(BotId)REFERENCES Bots(BotId)FOREIGN KEY(CommandBotCommandId)REFERENCES Bots(CommandId))"

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "Id"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "CommandBots"

    const-string v2, "CommandBotId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 59
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "CommandBots"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 51
    return-void
.end method

.method public getCommandBots()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;-><init>()V

    .line 63
    .local v0, "commandBotsList":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "commandBotsLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 66
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT CommandBots.CommandBotId, CommandBots.BotId, CommandBots.CommandBotCommandId FROM CommandBots ORDER BY CommandBots.CommandBotId, CommandBots.CommandBotCommandId ASC"

    .line 69
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 71
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    .end local v0    # "commandBotsList":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;-><init>()V

    .line 74
    .restart local v0    # "commandBotsList":Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
    const-string v5, "CommandBotId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setCommandBotId(I)V

    .line 75
    const-string v5, "CommandBotCommandId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setCommandBotCommandId(I)V

    .line 76
    const-string v5, "BotId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->setBotId(I)V

    .line 78
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 83
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 85
    return-object v1
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;)V
    .locals 4
    .param p1, "commandBots"    # Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    .prologue
    .line 38
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "CommandBotCommandId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getCommandBotCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v2, "BotId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->getBotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v2, "CommandBots"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 44
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 45
    return-void
.end method
