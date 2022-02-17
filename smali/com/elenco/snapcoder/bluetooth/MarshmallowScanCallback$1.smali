.class Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;
.super Ljava/lang/Object;
.source "MarshmallowScanCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;->this$0:Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback;

    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/MarshmallowScanCallback$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/DiscoveredBotBay;->addBotToBay(Landroid/bluetooth/BluetoothDevice;)V

    .line 64
    return-void
.end method
