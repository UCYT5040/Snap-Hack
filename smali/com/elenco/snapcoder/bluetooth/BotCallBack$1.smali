.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$finalGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;->val$finalGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;->val$finalGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BatteryChecker;->insertBatteryDrop(Ljava/lang/String;)V

    .line 109
    return-void
.end method
