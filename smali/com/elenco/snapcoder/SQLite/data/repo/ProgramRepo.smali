.class public Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;
.super Ljava/lang/Object;
.source "ProgramRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private program:Lcom/elenco/snapcoder/SQLite/data/model/Program;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/ProgramRepo;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "CREATE TABLE Program(ProgramId INTEGER PRIMARY KEY,ProgramName TEXT)"

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "Id"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Program"

    const-string v2, "ProgramId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 63
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Program"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 55
    return-void
.end method

.method public getProgram()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Program;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;-><init>()V

    .line 66
    .local v2, "programList":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "programLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Program;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT Program.ProgramId, Program.ProgramName From Program ORDER BY Program.ProgramId ASC"

    .line 74
    .local v4, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    :cond_0
    new-instance v2, Lcom/elenco/snapcoder/SQLite/data/model/Program;

    .end local v2    # "programList":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    invoke-direct {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Program;-><init>()V

    .line 79
    .restart local v2    # "programList":Lcom/elenco/snapcoder/SQLite/data/model/Program;
    const-string v5, "ProgramId"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->setProgramId(I)V

    .line 80
    const-string v5, "ProgramName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->setProgramName(Ljava/lang/String;)V

    .line 82
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 89
    return-object v3
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/Program;)J
    .locals 6
    .param p1, "program"    # Lcom/elenco/snapcoder/SQLite/data/model/Program;

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
    const-string v4, "ProgramName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v4, "Program"

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

.method public update(Lcom/elenco/snapcoder/SQLite/data/model/Program;)I
    .locals 7
    .param p1, "program"    # Lcom/elenco/snapcoder/SQLite/data/model/Program;

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
    const-string v2, "ProgramName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "Program"

    const-string v3, "ProgramId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Program;->getProgramId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
