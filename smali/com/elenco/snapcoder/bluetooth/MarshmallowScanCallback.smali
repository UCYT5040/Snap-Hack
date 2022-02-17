.class public Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "MarshmallowScanCallback.java"


# static fields
.field private static final Circuit_Name:Ljava/lang/String; = "MCC"

.field private static final SC_CONTROLLER_NAME:Ljava/lang/String; = "SCC"


# instance fields
.field bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

.field discoveredBotBay:Landroid/widget/LinearLayout;

.field discoveredBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "bluetoothDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->discoveredBots:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->discoveredBots:Ljava/util/ArrayList;

    .line 35
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    const v6, 0x7f0800d4

    .line 41
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 43
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 44
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->discoveredBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "foundBot":Z
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 51
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    invoke-virtual {v4, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 52
    const/4 v1, 0x1

    .line 58
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 59
    iget-object v4, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->discoveredBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    new-instance v5, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;

    invoke-direct {v5, p0, v0}, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;-><init>(Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    .end local v1    # "foundBot":Z
    :cond_2
    :goto_1
    return-void

    .line 50
    .restart local v1    # "foundBot":Z
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "foundBot":Z
    .end local v2    # "i":I
    :cond_4
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
