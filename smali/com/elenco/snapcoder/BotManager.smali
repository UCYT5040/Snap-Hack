.class public Lcom/elenco/snapcoder/BotManager;
.super Ljava/lang/Object;
.source "BotManager.java"


# static fields
.field private static connectedAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static connectedCircuits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field private static discoveredBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field static drivingTime:I

.field private static enabledBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field public static handler3:Landroid/os/Handler;

.field static leftForward:Z

.field static leftReverse:Z

.field private static mHandler:Landroid/os/Handler;

.field static mStatusChecker:Ljava/lang/Runnable;

.field static rightForward:Z

.field static rightReverse:Z

.field static running:Z

.field private static startDrive:Ljava/util/Date;


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->discoveredBots:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->connectedAddresses:Ljava/util/ArrayList;

    .line 320
    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    .line 321
    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    .line 322
    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    .line 323
    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    .line 564
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    .line 566
    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 568
    new-instance v0, Lcom/elenco/snapcoder/BotManager$2;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotManager$2;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotManager;->CIRCUIT_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotManager;->SC_CONTROLLER_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->updateTimer()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getConnectedAddresses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->connectedAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getConnectedCircuits()Ljava/util/ArrayList;
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
    .line 518
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDiscoveredBots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->discoveredBots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDiscoveredBotsString()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "discoveredDevicesString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->discoveredBots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->discoveredBots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->discoveredBots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method public static getEnabledBots()Ljava/util/ArrayList;
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
    .line 51
    sget-object v0, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static moveBotsBackward()V
    .locals 2

    .prologue
    .line 241
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 242
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 244
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 247
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 249
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnBack()V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public static moveBotsForward()V
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 175
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 178
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 180
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnForward()V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method public static moveBotsLeft()V
    .locals 2

    .prologue
    .line 259
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 260
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 262
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 265
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 266
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 267
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnLeft()V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method public static moveBotsRight()V
    .locals 2

    .prologue
    .line 277
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 278
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 280
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 283
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 285
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnRight()V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return-void
.end method

.method static saveOdometer(I)V
    .locals 14
    .param p0, "i"    # I

    .prologue
    const/4 v12, 0x0

    .line 542
    sget-object v7, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    if-eqz v7, :cond_1

    .line 543
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 544
    .local v6, "timeNow":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sget-object v7, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 545
    .local v2, "diffInMs":J
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 547
    .local v4, "diffInSec":J
    new-instance v1, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v1}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 548
    .local v1, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    sget-object v7, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 549
    sget-object v7, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 551
    .local v0, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 552
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTimeDriven(I)V

    .line 553
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v1, v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)I

    .line 555
    sget-object v7, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 556
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v7

    int-to-double v10, v7

    const-wide v12, 0x4002666666666666L    # 2.3

    mul-double/2addr v10, v12

    double-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/elenco/snapcoder/MainScreen;->displayOdometer(Ljava/lang/String;)V

    .line 560
    .end local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    :cond_0
    const/4 v7, 0x0

    sput-object v7, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 562
    .end local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v2    # "diffInMs":J
    .end local v4    # "diffInSec":J
    .end local v6    # "timeNow":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method static setOdometer(I)V
    .locals 5
    .param p0, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 530
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    new-instance v1, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v1}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 532
    .local v1, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 534
    .local v0, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 535
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v2

    sput v2, Lcom/elenco/snapcoder/BotManager;->drivingTime:I

    .line 538
    .end local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_0
    return-void
.end method

.method public static setSleep(Z)V
    .locals 2
    .param p0, "shouldSleep"    # Z

    .prologue
    .line 135
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    if-eqz p0, :cond_0

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->sleepOn()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->sleepOff()V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static setSpeed(Ljava/lang/String;)V
    .locals 3
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 110
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 131
    :cond_1
    return-void

    .line 110
    :sswitch_0
    const-string v2, "Fast"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Medium"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Slow"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 112
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 114
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightHighSpeed()V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 119
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 120
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightHighSpeed()V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftLowSpeed()V

    .line 126
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightLowSpeed()V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_1
        0x214c7c -> :sswitch_0
        0x275e21 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stopBots(Ljava/lang/Boolean;)V
    .locals 7
    .param p0, "includeA"    # Ljava/lang/Boolean;

    .prologue
    .line 192
    sget-object v3, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    const/4 v3, 0x0

    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 194
    sget-object v3, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    new-instance v2, Lcom/elenco/snapcoder/BotManager$1;

    invoke-direct {v2}, Lcom/elenco/snapcoder/BotManager$1;-><init>()V

    .line 217
    .local v2, "stop":Ljava/lang/Runnable;
    const-string v3, "Slow"

    invoke-static {v3}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    .line 219
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/elenco/snapcoder/BotManager;->handler3:Landroid/os/Handler;

    .line 220
    sget-object v3, Lcom/elenco/snapcoder/BotManager;->handler3:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .end local v2    # "stop":Ljava/lang/Runnable;
    :cond_0
    sget-object v3, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 225
    sget-object v3, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 226
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    const-string v4, "clear"

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/elenco/snapcoder/model/Bot;->stopMotorCircuit(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 230
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    const v4, 0x7f0800dd

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .local v1, "drivingAStud":Landroid/widget/ImageView;
    const v3, 0x7f070004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    .end local v1    # "drivingAStud":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public static toggleA(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "toggleAStud"    # Landroid/widget/ImageView;

    .prologue
    const v3, 0x7f070005

    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 150
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->singleCircuitOff()V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 161
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->singleCircuitOn()V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    return-void
.end method

.method public static toggleLeftNegative(ZZLcom/elenco/snapcoder/model/Bot;)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "stopCallback"    # Z
    .param p2, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 373
    if-eqz p0, :cond_3

    .line 374
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    .line 375
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 377
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 380
    :cond_0
    if-nez p2, :cond_1

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 382
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 383
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 384
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 385
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOn()V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 389
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 390
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOn()V

    .line 416
    :cond_2
    :goto_1
    return-void

    .line 393
    :cond_3
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    .line 394
    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    if-nez v1, :cond_5

    .line 395
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 397
    if-nez p2, :cond_4

    .line 398
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 399
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOff()V

    .line 400
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->saveOdometer(I)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOff()V

    goto :goto_1

    .line 406
    :cond_5
    if-nez p2, :cond_6

    .line 407
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 408
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOff()V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 411
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOff()V

    goto :goto_1
.end method

.method public static toggleLeftPositive(ZZLcom/elenco/snapcoder/model/Bot;)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "stopCallback"    # Z
    .param p2, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 326
    if-eqz p0, :cond_3

    .line 327
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    .line 328
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 330
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 333
    :cond_0
    if-nez p2, :cond_1

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 335
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 336
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 337
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 338
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOn()V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 342
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 343
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOn()V

    .line 369
    :cond_2
    :goto_1
    return-void

    .line 346
    :cond_3
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    .line 347
    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    if-nez v1, :cond_5

    .line 348
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 350
    if-nez p2, :cond_4

    .line 351
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 352
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOff()V

    .line 353
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->saveOdometer(I)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 356
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOff()V

    goto :goto_1

    .line 359
    :cond_5
    if-nez p2, :cond_6

    .line 360
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 361
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOff()V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 364
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOff()V

    goto :goto_1
.end method

.method public static toggleRightNegative(ZZLcom/elenco/snapcoder/model/Bot;)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "stopCallback"    # Z
    .param p2, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 467
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 468
    if-eqz p0, :cond_3

    .line 469
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    .line 470
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 471
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 472
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 475
    :cond_0
    if-nez p2, :cond_1

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 477
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 478
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 479
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 480
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOn()V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 484
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 485
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOn()V

    .line 512
    :cond_2
    :goto_1
    return-void

    .line 488
    :cond_3
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    .line 489
    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    if-nez v1, :cond_5

    .line 490
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 493
    if-nez p2, :cond_4

    .line 494
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 495
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOff()V

    .line 496
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->saveOdometer(I)V

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 499
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOff()V

    goto :goto_1

    .line 502
    :cond_5
    if-nez p2, :cond_6

    .line 503
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 504
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOff()V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 507
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOff()V

    goto :goto_1
.end method

.method public static toggleRightPositive(ZZLcom/elenco/snapcoder/model/Bot;)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "stopCallback"    # Z
    .param p2, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 420
    if-eqz p0, :cond_3

    .line 421
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    .line 422
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 424
    sput-boolean v2, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 427
    :cond_0
    if-nez p2, :cond_1

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 429
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 430
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 431
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 432
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOn()V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 436
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 437
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOn()V

    .line 464
    :cond_2
    :goto_1
    return-void

    .line 440
    :cond_3
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    .line 441
    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->leftReverse:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightForward:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->rightReverse:Z

    if-nez v1, :cond_5

    .line 442
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    sput-boolean v3, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 445
    if-nez p2, :cond_4

    .line 446
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 447
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOff()V

    .line 448
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->saveOdometer(I)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 451
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOff()V

    goto :goto_1

    .line 454
    :cond_5
    if-nez p2, :cond_6

    .line 455
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 456
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOff()V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 459
    .end local v0    # "i":I
    :cond_6
    invoke-virtual {p2}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOff()V

    goto :goto_1
.end method

.method public static turnBotsPowerLeft()V
    .locals 2

    .prologue
    .line 307
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 308
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 310
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 313
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 315
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnPowerLeft()V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    return-void
.end method

.method public static turnBotsPowerRight()V
    .locals 2

    .prologue
    .line 292
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 293
    sget-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    .line 295
    const/4 v1, 0x1

    sput-boolean v1, Lcom/elenco/snapcoder/BotManager;->running:Z

    .line 298
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 299
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->setOdometer(I)V

    .line 300
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->enabledBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->turnPowerRight()V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method private static updateTimer()V
    .locals 10

    .prologue
    .line 583
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 585
    .local v4, "timeNow":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v5, Lcom/elenco/snapcoder/BotManager;->startDrive:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 586
    .local v0, "diffInMs":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 588
    .local v2, "diffInSec":J
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    sget v6, Lcom/elenco/snapcoder/BotManager;->drivingTime:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    long-to-double v6, v6

    const-wide v8, 0x4002666666666666L    # 2.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->displayOdometer(Ljava/lang/String;)V

    .line 590
    return-void
.end method


# virtual methods
.method public setBatteryState()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->setBatteryState()V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public setBotName(Ljava/lang/String;)V
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 62
    iget-object v1, p0, Lcom/elenco/snapcoder/BotManager;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 63
    .local v1, "version":Ljava/lang/String;
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotManager;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/elenco/snapcoder/BotManager;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 69
    :cond_0
    :goto_1
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2, v1, p1}, Lcom/elenco/snapcoder/model/Bot;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotManager;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/elenco/snapcoder/BotManager;->CIRCUIT_NAME:Ljava/lang/String;

    goto :goto_1

    .line 71
    .end local v1    # "version":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setPioState()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->setPioState()V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public setPowerState()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    sget-object v1, Lcom/elenco/snapcoder/BotManager;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->setPowerState()V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
