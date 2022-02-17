.class public Lcom/elenco/snapcoder/model/BotV2;
.super Lcom/elenco/snapcoder/model/Bot;
.source "BotV2.java"


# static fields
.field public static commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field doOnce:Z

.field handler:Landroid/os/Handler;

.field handler2:Landroid/os/Handler;

.field handler3:Landroid/os/Handler;

.field private reversing:Z

.field runningList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field stopPulse:Z

.field private straightCalibration:I

.field timestampCheck:Ljava/sql/Timestamp;

.field turnOff:Ljava/lang/Runnable;

.field turnOn:Ljava/lang/Runnable;

.field private turnsLeft:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/elenco/snapcoder/model/Bot;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    .line 30
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    .line 237
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    .line 297
    const/16 v0, 0x46

    iput v0, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    .line 298
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->reversing:Z

    .line 302
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$4;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$4;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOff:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$5;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$5;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOn:Ljava/lang/Runnable;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/elenco/snapcoder/model/Bot;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    .line 30
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    .line 237
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    .line 297
    const/16 v0, 0x46

    iput v0, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    .line 298
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->reversing:Z

    .line 302
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$4;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$4;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOff:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$5;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$5;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOn:Ljava/lang/Runnable;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lcom/elenco/snapcoder/model/BotV2;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 25
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV2;->CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/model/BotV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/model/BotV2;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/elenco/snapcoder/model/BotV2;->reversing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/model/BotV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/model/BotV2;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    return v0
.end method

.method static synthetic access$200(Lcom/elenco/snapcoder/model/BotV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/model/BotV2;

    .prologue
    .line 18
    iget v0, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    return v0
.end method


# virtual methods
.method allForward()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    iput-boolean v8, p0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    .line 242
    new-instance v2, Lcom/elenco/snapcoder/model/BotV2$3;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/model/BotV2$3;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    .line 258
    .local v2, "speedUp":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->slowSpeed()V

    .line 259
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->sleepOn()V

    .line 260
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftWheelForward()V

    .line 261
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightWheelForward()V

    .line 262
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->sleepOff()V

    .line 263
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    .line 264
    iget-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-boolean v4, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    if-nez v4, :cond_2

    .line 266
    iput-boolean v9, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    .line 268
    new-instance v1, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v1}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 269
    .local v1, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 273
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getStraightConfiguration()I

    move-result v4

    iput v4, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    .line 274
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTurningDirection()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "turningDirection":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 277
    const-string v3, "Right"

    .line 278
    const/16 v4, 0x46

    iput v4, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    .line 281
    :cond_0
    const-string v4, "Left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    iput-boolean v9, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    .line 289
    .end local v3    # "turningDirection":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->handler:Landroid/os/Handler;

    .line 290
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->handler2:Landroid/os/Handler;

    .line 292
    iget-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOff:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    .end local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_2
    return-void

    .line 284
    .restart local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .restart local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .restart local v3    # "turningDirection":Ljava/lang/String;
    :cond_3
    iput-boolean v8, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    goto :goto_0
.end method

.method allReverse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    iput-boolean v5, p0, Lcom/elenco/snapcoder/model/BotV2;->reversing:Z

    .line 350
    iput-boolean v4, p0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    .line 351
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 352
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    .line 354
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->leftSideForward(Z)V

    .line 355
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->rightSideForward(Z)V

    .line 356
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    .line 357
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 358
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 359
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 360
    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 361
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 362
    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 364
    iget-boolean v3, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    if-nez v3, :cond_1

    .line 365
    iput-boolean v5, p0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    .line 367
    new-instance v1, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v1}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 368
    .local v1, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 370
    .local v0, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 372
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseConfiguration()I

    move-result v3

    iput v3, p0, Lcom/elenco/snapcoder/model/BotV2;->straightCalibration:I

    .line 373
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseTurningDirection()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "turningDirection":Ljava/lang/String;
    const-string v3, "Left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    iput-boolean v5, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    .line 382
    .end local v2    # "turningDirection":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/elenco/snapcoder/model/BotV2;->handler:Landroid/os/Handler;

    .line 383
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/elenco/snapcoder/model/BotV2;->handler2:Landroid/os/Handler;

    .line 385
    iget-object v3, p0, Lcom/elenco/snapcoder/model/BotV2;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/elenco/snapcoder/model/BotV2;->turnOff:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    .end local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    :cond_1
    return-void

    .line 378
    .restart local v0    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .restart local v1    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .restart local v2    # "turningDirection":Ljava/lang/String;
    :cond_2
    iput-boolean v4, p0, Lcom/elenco/snapcoder/model/BotV2;->turnsLeft:Z

    goto :goto_0
.end method

.method public circuitAwake()V
    .locals 2

    .prologue
    .line 593
    const-string v0, "AT+PIO91"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 594
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO91"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method public circuitSleep()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "AT+PIO90"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 588
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO90"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public fastSpeed()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "AT+PIO60"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 39
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO60"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "AT+PIO70"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 41
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO70"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftHighSpeed()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "AT+PIO60"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 552
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO60"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public leftLowSpeed()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "AT+PIO61"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 558
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO61"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public leftNegativeOff()V
    .locals 2

    .prologue
    .line 533
    const-string v0, "AT+PIO40"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 534
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO40"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public leftNegativeOn()V
    .locals 2

    .prologue
    .line 527
    const-string v0, "AT+PIO41"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 528
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public leftOff()V
    .locals 2

    .prologue
    .line 521
    const-string v0, "AT+PIO30"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 522
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO30"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public leftOn()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "AT+PIO31"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 516
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO31"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method public leftPositiveOff()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "AT+PIO50"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 546
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO50"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public leftPositiveOn()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "AT+PIO51"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 540
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO51"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method leftSideForward(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    const-string v0, "AT+PIO41"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 455
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v0, "AT+PIO40"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    goto :goto_0
.end method

.method leftSideOn(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    const-string v0, "AT+PIO31"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 445
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO31"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "AT+PIO30"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 448
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO30"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method leftSideReverse(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 463
    const-string v0, "AT+PIOB1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 464
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOB1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string v0, "AT+PIOB0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 467
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOB0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method leftWheelForward()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideForward(Z)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 394
    return-void
.end method

.method leftWheelReverse()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->leftSideForward(Z)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    .line 400
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 401
    return-void
.end method

.method public mediumSpeed()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "AT+PIO60"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 47
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO60"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "AT+PIO71"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 49
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO71"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public rightHighSpeed()V
    .locals 2

    .prologue
    .line 611
    const-string v0, "AT+PIOB0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 612
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOB0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method public rightLowSpeed()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "AT+PIOB1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 618
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOB1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method public rightNegativeOff()V
    .locals 2

    .prologue
    .line 569
    const-string v0, "AT+PIO70"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 570
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO70"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public rightNegativeOn()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "AT+PIO71"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 564
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO71"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public rightOff()V
    .locals 2

    .prologue
    .line 599
    const-string v0, "AT+PIOA0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 600
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOA0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public rightOn()V
    .locals 2

    .prologue
    .line 605
    const-string v0, "AT+PIOA1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 606
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOA1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method public rightPositiveOff()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "AT+PIO80"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 582
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO80"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method

.method public rightPositiveOn()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "AT+PIO81"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 576
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO81"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method

.method rightSideForward(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 482
    if-eqz p1, :cond_0

    .line 483
    const-string v0, "AT+PIO81"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 484
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO81"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    const-string v0, "AT+PIO80"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 487
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO80"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method rightSideOn(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    const-string v0, "AT+PIOA1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 474
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOA1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string v0, "AT+PIOA0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 477
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIOA0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method rightSideReverse(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    const-string v0, "AT+PIO51"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 494
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO51"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v0, "AT+PIO50"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 497
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO50"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method rightWheelForward()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOn()V

    .line 405
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightNegativeOn()V

    .line 406
    return-void
.end method

.method rightWheelReverse()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 410
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->rightSideForward(Z)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    .line 413
    return-void
.end method

.method public singleCircuitOff()V
    .locals 2

    .prologue
    .line 509
    const-string v0, "AT+PIO20"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 510
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO20"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public singleCircuitOn()V
    .locals 2

    .prologue
    .line 503
    const-string v0, "AT+PIO21"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 504
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public sleepOff()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "AT+PIO91"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 69
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO91"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public sleepOn()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "AT+PIO90"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 63
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO90"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public slowSpeed()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "AT+PIO61"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 55
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO61"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "AT+PIO70"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->writeData([B)V

    .line 57
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    const-string v1, "PIO70"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    .line 223
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/BotV2;->reversing:Z

    .line 225
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideForward(Z)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideForward(Z)V

    .line 234
    sget-object v0, Lcom/elenco/snapcoder/model/BotV2;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    return-void
.end method

.method stopLeftWheel()V
    .locals 0

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftNegativeOff()V

    .line 417
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftPositiveOff()V

    .line 419
    return-void
.end method

.method public stopLeftWheelForward()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopLeftWheelForwardCommand()V

    .line 203
    return-void
.end method

.method stopLeftWheelForwardCommand()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->leftSideForward(Z)V

    .line 423
    return-void
.end method

.method public stopLeftWheelReverse()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopLeftWheelReverseCommand()V

    .line 208
    return-void
.end method

.method stopLeftWheelReverseCommand()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    .line 427
    return-void
.end method

.method public stopMotorCircuit(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "keepOn"    # Ljava/lang/String;
    .param p2, "shouldRemove"    # Z
    .param p3, "includeA"    # Z

    .prologue
    .line 625
    if-eqz p1, :cond_0

    .line 626
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 627
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    const-string v1, "D1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftPositiveOff()V

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    const-string v1, "D2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftNegativeOff()V

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    const-string v1, "D3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOff()V

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    const-string v1, "D4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 648
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightNegativeOff()V

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    .line 652
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->singleCircuitOff()V

    .line 656
    :cond_5
    return-void

    .line 628
    :cond_6
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 629
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_7
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 631
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2;->runningList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method stopRightWheel()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightNegativeOff()V

    .line 439
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOff()V

    .line 440
    return-void
.end method

.method public stopRightWheelForward()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopRightWheelForwardCommand()V

    .line 213
    return-void
.end method

.method stopRightWheelForwardCommand()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->rightSideForward(Z)V

    .line 431
    return-void
.end method

.method public stopRightWheelReverse()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopRightWheelReverseCommand()V

    .line 218
    return-void
.end method

.method stopRightWheelReverseCommand()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    .line 435
    return-void
.end method

.method public turnBack()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$2;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$2;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    .line 124
    .local v0, "speedUp":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 125
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 126
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 127
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftNegativeOn()V

    .line 128
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightNegativeOn()V

    .line 129
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    .line 130
    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public turnForward()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2$1;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/model/BotV2$1;-><init>(Lcom/elenco/snapcoder/model/BotV2;)V

    .line 94
    .local v0, "speedUp":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 95
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 96
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 97
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftPositiveOn()V

    .line 98
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOn()V

    .line 99
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    .line 100
    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV2;->handler3:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    return-void
.end method

.method public turnLeft()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 149
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 150
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 151
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOn()V

    .line 152
    return-void
.end method

.method public turnLeftBack()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightWheelReverse()V

    .line 136
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopLeftWheel()V

    .line 138
    return-void
.end method

.method public turnLeftWheel()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftWheelForward()V

    .line 183
    return-void
.end method

.method public turnLeftWheelReverse()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftWheelReverse()V

    .line 188
    return-void
.end method

.method public turnPowerLeft()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 157
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 158
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 159
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightPositiveOn()V

    .line 160
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftNegativeOn()V

    .line 161
    return-void
.end method

.method public turnPowerRight()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 174
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 175
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 176
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftPositiveOn()V

    .line 177
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightNegativeOn()V

    .line 178
    return-void
.end method

.method public turnRight()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->circuitAwake()V

    .line 166
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftOn()V

    .line 167
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightOn()V

    .line 168
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftPositiveOn()V

    .line 169
    return-void
.end method

.method public turnRightBack()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->leftWheelReverse()V

    .line 143
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->stopRightWheel()V

    .line 144
    return-void
.end method

.method public turnRightWheel()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightWheelForward()V

    .line 193
    return-void
.end method

.method public turnRightWheelReverse()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/BotV2;->rightWheelReverse()V

    .line 198
    return-void
.end method
