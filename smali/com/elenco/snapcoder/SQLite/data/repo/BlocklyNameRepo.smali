.class public Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyNameRepo;
.super Ljava/lang/Object;
.source "BlocklyNameRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private blocklyName:Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyNameRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/BlocklyNameRepo;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "CREATE TABLE BlocklyName(BlocklyId INTEGER PRIMARY KEY,BlocklyName TEXT)"

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "Id"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "BlocklyName"

    const-string v2, "BlocklyId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 57
    return-void
.end method

.method public getBlocklyName()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;-><init>()V

    .line 61
    .local v0, "blocklyNameList":Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "blocklyNameLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 65
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT BlocklyName.BlocklyId, BlocklyName.BlocklyName From BlocklyName ORDER BY BlocklyName.BlocklyId ASC"

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
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;

    .end local v0    # "blocklyNameList":Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;
    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;-><init>()V

    .line 74
    .restart local v0    # "blocklyNameList":Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;
    const-string v5, "BlocklyId"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->setBlocklyId(I)V

    .line 75
    const-string v5, "BlocklyName"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->setBlocklyName(Ljava/lang/String;)V

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 82
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 84
    return-object v1
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;)J
    .locals 6
    .param p1, "blocklyName"    # Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;

    .prologue
    .line 34
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "BlocklyName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->getBlocklyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v4, "BlocklyName"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 39
    .local v2, "id":J
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 40
    return-wide v2
.end method

.method public update(Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;)I
    .locals 7
    .param p1, "blocklyName"    # Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;

    .prologue
    .line 44
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "BlocklyName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->getBlocklyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "BlocklyName"

    const-string v3, "BlocklyId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->getBlocklyId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
