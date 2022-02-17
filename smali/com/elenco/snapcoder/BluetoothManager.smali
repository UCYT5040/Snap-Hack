.class public Lcom/elenco/snapcoder/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field private static NumberOfBotsToBeConnected:I

.field private static bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

.field private static numberOfConnectedBots:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    invoke-direct {v0}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/BluetoothManager;->bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    .line 11
    sput v1, Lcom/elenco/snapcoder/BluetoothManager;->NumberOfBotsToBeConnected:I

    .line 12
    sput v1, Lcom/elenco/snapcoder/BluetoothManager;->numberOfConnectedBots:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/elenco/snapcoder/BluetoothManager;->bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    return-object v0
.end method

.method public static getNumberOfBotsToBeConnected()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/elenco/snapcoder/BluetoothManager;->NumberOfBotsToBeConnected:I

    return v0
.end method

.method public static getNumberOfConnectedBots()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/elenco/snapcoder/BluetoothManager;->numberOfConnectedBots:I

    return v0
.end method

.method public static setNumberOfBotsToBeConnected(I)V
    .locals 0
    .param p0, "numberOfBotsToBeConnected"    # I

    .prologue
    .line 36
    sput p0, Lcom/elenco/snapcoder/BluetoothManager;->NumberOfBotsToBeConnected:I

    .line 37
    return-void
.end method

.method public static setNumberOfConnectedBots(I)V
    .locals 0
    .param p0, "numberOfConnectedBots"    # I

    .prologue
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public setBluetoothHelper(Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;)V
    .locals 0
    .param p1, "bluetoothHelper"    # Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    .prologue
    .line 19
    sput-object p1, Lcom/elenco/snapcoder/BluetoothManager;->bluetoothHelper:Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    return-void
.end method
