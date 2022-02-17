.class public Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;
.super Ljava/lang/Object;
.source "CommandRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private command:Lcom/elenco/snapcoder/SQLite/data/model/Command;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/CommandRepo;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "CREATE TABLE Command(SubroutineId INTEGER, CommandId INTEGER PRIMARY KEY,CommandType TEXT, Duration REAL, CommandOrder INTEGER, Iteration REAL, Command TEXT, Speed TEXT, Comment TEXT, FOREIGN KEY(SubroutineId)REFERENCES Subroutine(SubroutineId))"

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "Id"    # I

    .prologue
    .line 67
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Command"

    const-string v2, "CommandId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 71
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Command"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 63
    return-void
.end method

.method public getCommand()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;-><init>()V

    .line 75
    .local v0, "commandList":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "commandLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Command;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 78
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT Command.CommandId, Command.SubroutineId, Command.CommandType, Command.Duration, Command.CommandOrder, Command.Iteration, Command.Command, Command.Speed, Command.Comment FROM Command ORDER BY Command.CommandId, Command.CommandOrder ASC"

    .line 82
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 84
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    .end local v0    # "commandList":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Command;-><init>()V

    .line 87
    .restart local v0    # "commandList":Lcom/elenco/snapcoder/SQLite/data/model/Command;
    const-string v5, "SubroutineId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setSubroutineId(I)V

    .line 88
    const-string v5, "CommandId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandId(I)V

    .line 89
    const-string v5, "CommandType"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandType(Ljava/lang/String;)V

    .line 90
    const-string v5, "Duration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setDuration(F)V

    .line 91
    const-string v5, "CommandOrder"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandOrder(I)V

    .line 92
    const-string v5, "Iteration"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setIteration(I)V

    .line 93
    const-string v5, "Command"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setCommandSQL(Ljava/lang/String;)V

    .line 94
    const-string v5, "Speed"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setSpeed(Ljava/lang/String;)V

    .line 95
    const-string v5, "Comment"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->setComment(Ljava/lang/String;)V

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 104
    return-object v1
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/Command;)J
    .locals 6
    .param p1, "command"    # Lcom/elenco/snapcoder/SQLite/data/model/Command;

    .prologue
    .line 42
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "SubroutineId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSubroutineId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v4, "CommandType"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "Duration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getDuration()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 47
    const-string v4, "CommandOrder"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string v4, "Iteration"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getIteration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v4, "Command"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getCommandSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "Speed"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "Comment"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Command;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "Command"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 54
    .local v2, "id":J
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 56
    return-wide v2
.end method
