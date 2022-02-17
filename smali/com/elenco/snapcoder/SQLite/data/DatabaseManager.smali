.class public Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static instance:Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

.field private static mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;
    .locals 4

    .prologue
    .line 25
    const-class v1, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->instance:Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initialized, call initializeInstance(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 30
    :cond_0
    :try_start_1
    sget-object v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->instance:Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 18
    const-class v1, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->instance:Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->instance:Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;

    .line 20
    sput-object p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v1

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    .line 44
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    .line 35
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mOpenCounter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
