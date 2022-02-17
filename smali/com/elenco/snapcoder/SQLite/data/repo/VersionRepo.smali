.class public Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;
.super Ljava/lang/Object;
.source "VersionRepo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private version:Lcom/elenco/snapcoder/SQLite/data/model/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static createTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "CREATE TABLE Version(VersionId NUMERIC PRIMARY KEY)"

    return-object v0
.end method


# virtual methods
.method public GetVersion()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/SQLite/data/model/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/model/Version;

    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Version;-><init>()V

    .line 66
    .local v3, "versionList":Lcom/elenco/snapcoder/SQLite/data/model/Version;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, "versionLists":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Version;>;"
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 69
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT Version.VersionId FROM Version ORDER BY Version.VersionId ASC"

    .line 73
    .local v2, "selectQuery":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    :cond_0
    new-instance v3, Lcom/elenco/snapcoder/SQLite/data/model/Version;

    .end local v3    # "versionList":Lcom/elenco/snapcoder/SQLite/data/model/Version;
    invoke-direct {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Version;-><init>()V

    .line 78
    .restart local v3    # "versionList":Lcom/elenco/snapcoder/SQLite/data/model/Version;
    const-string v5, "VersionId"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->setVersionId(I)V

    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 86
    return-object v4
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "Id"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Version"

    const-string v2, "VersionId= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 62
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;->version:Lcom/elenco/snapcoder/SQLite/data/model/Version;

    const-string v1, "Version"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 54
    return-void
.end method

.method public insert(Lcom/elenco/snapcoder/SQLite/data/model/Version;)J
    .locals 6
    .param p1, "version"    # Lcom/elenco/snapcoder/SQLite/data/model/Version;

    .prologue
    .line 33
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "VersionId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->getVersionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v4, "Version"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 38
    .local v2, "id":J
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->closeDatabase()V

    .line 39
    return-wide v2
.end method

.method public update(Lcom/elenco/snapcoder/SQLite/data/model/Version;)I
    .locals 7
    .param p1, "version"    # Lcom/elenco/snapcoder/SQLite/data/model/Version;

    .prologue
    .line 43
    invoke-static {}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "VersionId"

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->getVersionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "Version"

    const-string v3, "VersionId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->getVersionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
