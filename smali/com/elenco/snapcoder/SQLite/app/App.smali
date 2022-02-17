.class public Lcom/elenco/snapcoder/SQLite/app/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static dbHelper:Lcom/elenco/snapcoder/SQLite/data/DBHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/elenco/snapcoder/SQLite/app/App;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-virtual {p0}, Lcom/elenco/snapcoder/SQLite/app/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/SQLite/app/App;->context:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/elenco/snapcoder/SQLite/data/DBHelper;

    invoke-direct {v0}, Lcom/elenco/snapcoder/SQLite/data/DBHelper;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/SQLite/app/App;->dbHelper:Lcom/elenco/snapcoder/SQLite/data/DBHelper;

    .line 24
    sget-object v0, Lcom/elenco/snapcoder/SQLite/app/App;->dbHelper:Lcom/elenco/snapcoder/SQLite/data/DBHelper;

    invoke-static {v0}, Lcom/elenco/snapcoder/SQLite/data/DatabaseManager;->initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 26
    const-string v0, "DEFAULT"

    const-string v1, "fonts/visby.otf"

    invoke-static {p0, v0, v1}, Lcom/elenco/snapcoder/util/FontsOverride;->setDefaultFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "MONOSPACE"

    const-string v1, "fonts/helvetica_bold.otf"

    invoke-static {p0, v0, v1}, Lcom/elenco/snapcoder/util/FontsOverride;->setDefaultFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "SERIF"

    const-string v1, "fonts/helvetica_bold.otf"

    invoke-static {p0, v0, v1}, Lcom/elenco/snapcoder/util/FontsOverride;->setDefaultFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "SANS_SERIF"

    const-string v1, "fonts/helvetica_bold.otf"

    invoke-static {p0, v0, v1}, Lcom/elenco/snapcoder/util/FontsOverride;->setDefaultFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method
