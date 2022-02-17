.class public Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;
.super Ljava/lang/Object;
.source "SubroutineRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private subroutine:Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "CREATE TABLE Subroutine(SubroutineId INTEGER PRIMARY KEY,SubroutineProgramId INTEGER,SubroutineName TEXT, FOREIGN KEY(SubroutineProgramId)REFERENCES Program(ProgramId))"

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 6
    .param p1, "Id"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 66
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Subroutine"

    const-string v2, "SubroutineProgramId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 68
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/elenco/snapcoder/SQLite/data/repo/SubroutineRepo;->subroutine:Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    const-string v1, "Subroutine"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 60
    return-void
.end method

.method public getSubroutine()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;-><init>()V

    .line 72
    .local v3, "subroutineList":Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "subroutineLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 75
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT Subroutine.SubroutineId, Subroutine.SubroutineName, Subroutine.SubroutineProgramId FROM Subroutine ORDER BY Subroutine.SubroutineId ASC"

    .line 79
    .local v2, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    .end local v3    # "subroutineList":Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;-><init>()V

    .line 84
    .restart local v3    # "subroutineList":Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
    const-string v5, "SubroutineId"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubroutineId(I)V

    .line 85
    const-string v5, "SubroutineName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubroutineName(Ljava/lang/String;)V

    .line 86
    const-string v5, "SubroutineProgramId"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->setSubRoutineProgramId(I)V

    .line 88
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 95
    return-object v4
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;)J
    .locals 6
    .param p1, "subroutine"    # Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    .prologue
    .line 37
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "SubroutineName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v4, "SubroutineProgramId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v4, "Subroutine"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 43
    .local v2, "id":J
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 44
    return-wide v2
.end method

.method public update(Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;)I
    .locals 7
    .param p1, "subroutine"    # Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;

    .prologue
    .line 48
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "SubroutineName"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "SubroutineProgramId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineProgramId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v2, "Subroutine"

    const-string v3, "SubroutineId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->getSubroutineId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
