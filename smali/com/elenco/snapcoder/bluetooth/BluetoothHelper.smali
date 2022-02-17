.class public Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BluetoothHelper.java"


# instance fields
.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field botCallBack:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field errorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field marshmallowScanCallback:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedAddresses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/bluetooth/BotCallBack;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->botCallBack:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .line 25
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 26
    new-instance v0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->marshmallowScanCallback:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 34
    return-void
.end method


# virtual methods
.method public connectBot(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 63
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->botCallBack:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    invoke-virtual {p1, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 65
    .local v0, "bluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    const-string v2, "BluetoothHelper.connectBot() successful"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "bt"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public connectToBotByAddress(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->connectBot(Landroid/bluetooth/BluetoothDevice;)V

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    const-string v3, "BluetoothHelper.connectToBotByAddress() successfull"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public disableBluetooth()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 119
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 111
    return-void
.end method

.method public getErrorList()Ljava/util/ArrayList;
    .locals 2
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
    .line 100
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->botCallBack:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->getErrorList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->errorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public scanForBots()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 44
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->marshmallowScanCallback:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 45
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->marshmallowScanCallback:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 54
    :cond_0
    return-void
.end method
