.class public abstract Lcom/elenco/snapcoder/model/Bot;
.super Ljava/lang/Object;
.source "Bot.java"


# instance fields
.field protected CHARACTERISTIC_UUID:Ljava/util/UUID;

.field protected RSSI:I

.field protected SERVICE_UUID:Ljava/util/UUID;

.field protected activeBot:Z

.field private bearing:F

.field protected botFrameColor:Ljava/lang/String;

.field private calibratedRightTurn:D

.field private changedName:Ljava/lang/String;

.field protected characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private currentDirection:Ljava/lang/String;

.field private currentX:I

.field private currentY:I

.field protected driveCommand:Ljava/lang/String;

.field protected duration:F

.field private endIfIndex:I

.field private executeCommand:Z

.field protected gatt:Landroid/bluetooth/BluetoothGatt;

.field protected isConnected:Z

.field private isVirtual:Z

.field protected lastRSSI:I

.field private lastX:I

.field private lastY:I

.field public useAllReverse:Z

.field public useAllforward:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->botFrameColor:Ljava/lang/String;

    .line 23
    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->SERVICE_UUID:Ljava/util/UUID;

    .line 24
    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/model/Bot;->executeCommand:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->driveCommand:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/model/Bot;->duration:F

    .line 33
    iput v1, p0, Lcom/elenco/snapcoder/model/Bot;->currentX:I

    .line 34
    iput v1, p0, Lcom/elenco/snapcoder/model/Bot;->currentY:I

    .line 35
    iput v1, p0, Lcom/elenco/snapcoder/model/Bot;->lastX:I

    .line 36
    iput v1, p0, Lcom/elenco/snapcoder/model/Bot;->lastY:I

    .line 37
    iput v1, p0, Lcom/elenco/snapcoder/model/Bot;->endIfIndex:I

    .line 38
    const-string v0, "NORTH"

    iput-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->currentDirection:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/Bot;->useAllforward:Z

    .line 45
    iput-boolean v1, p0, Lcom/elenco/snapcoder/model/Bot;->useAllReverse:Z

    return-void
.end method

.method private setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "side"    # Ljava/lang/String;
    .param p2, "speed"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string v0, "Left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const-string v0, "Fast"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 627
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftLowSpeed()V

    goto :goto_0

    .line 621
    :cond_1
    const-string v0, "Fast"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightHighSpeed()V

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightLowSpeed()V

    goto :goto_0
.end method

.method private updateDrawingCoordinates()V
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->getCurrentX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->setLastX(I)V

    .line 600
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->getCurrentY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->setLastY(I)V

    .line 601
    return-void
.end method


# virtual methods
.method public checkBattery()V
    .locals 2

    .prologue
    .line 228
    const-string v1, "AT+BATT?"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 229
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 230
    return-void
.end method

.method public checkCalls()V
    .locals 3

    .prologue
    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_0

    .line 260
    const-string v2, "AT+PIO20"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 261
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public checkRSSI()V
    .locals 2

    .prologue
    .line 233
    const-string v1, "AT+RSSI?"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 234
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 235
    return-void
.end method

.method public abstract circuitAwake()V
.end method

.method public abstract circuitSleep()V
.end method

.method public enableNotification()V
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/elenco/snapcoder/model/Bot;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 282
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 283
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 284
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 285
    return-void
.end method

.method public executeDriveCommand(JLjava/lang/String;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "setSpeed"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "isMotorCircuit":Z
    iget-object v7, p0, Lcom/elenco/snapcoder/model/Bot;->driveCommand:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 379
    :goto_1
    if-nez v1, :cond_2

    .line 380
    if-eqz p3, :cond_2

    .line 381
    const/4 v6, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_1
    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 405
    :cond_2
    :goto_3
    const/4 v2, 0x0

    .line 407
    .local v2, "keepOn":Ljava/lang/String;
    iget-object v7, p0, Lcom/elenco/snapcoder/model/Bot;->driveCommand:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2

    :cond_3
    :goto_4
    packed-switch v6, :pswitch_data_2

    .line 528
    :goto_5
    invoke-direct {p0}, Lcom/elenco/snapcoder/model/Bot;->updateDrawingCoordinates()V

    .line 568
    const/4 v4, 0x0

    .line 569
    .local v4, "shouldRemove":Z
    const-wide/16 v6, 0x26aa

    cmp-long v6, p1, v6

    if-nez v6, :cond_4

    .line 570
    const-wide/16 p1, 0x1f4

    .line 571
    const/4 v4, 0x0

    .line 580
    :goto_6
    move-object v3, v2

    .line 581
    .local v3, "keepOn2":Ljava/lang/String;
    move v5, v4

    .line 583
    .local v5, "shouldRemove2":Z
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 585
    .local v0, "executionTimer":Ljava/util/Timer;
    new-instance v6, Lcom/elenco/snapcoder/model/Bot$1;

    invoke-direct {v6, p0, v3, v5}, Lcom/elenco/snapcoder/model/Bot$1;-><init>(Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;Z)V

    invoke-virtual {v0, v6, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 594
    return-void

    .line 346
    .end local v0    # "executionTimer":Ljava/util/Timer;
    .end local v2    # "keepOn":Ljava/lang/String;
    .end local v3    # "keepOn2":Ljava/lang/String;
    .end local v4    # "shouldRemove":Z
    .end local v5    # "shouldRemove2":Z
    :sswitch_0
    const-string v8, "moveMotorLeftForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string v8, "moveMotorLeftReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v8, "moveMotorRightForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v8, "moveMotorRightReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "turnCircuitD1OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string v8, "turnCircuitD2OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string v8, "turnCircuitD3OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "turnCircuitD4OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "turnSingleCircuitOnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "spinLeftMotorForward"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "spinLeftMotorReverse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v8, "spinRightMotorForward"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "spinRightMotorReverse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v8, "turnD1OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v8, "turnD2OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v8, "turnD3OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v8, "turnD4OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v8, "turnAOnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v8, "turnD1OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v8, "turnD2OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v8, "turnD3OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v8, "turnD4OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v8, "turnAOnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v8, "turnD1OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v8, "turnD2OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v8, "turnD3OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v8, "turnD4OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v8, "turnAOnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x1b

    goto/16 :goto_0

    .line 375
    :pswitch_0
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 381
    :sswitch_1c
    const-string v7, "Fast"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_2

    :sswitch_1d
    const-string v7, "High"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_1e
    const-string v7, "Medium"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    goto/16 :goto_2

    :sswitch_1f
    const-string v7, "Slow"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x3

    goto/16 :goto_2

    :sswitch_20
    const-string v7, "Low"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x4

    goto/16 :goto_2

    .line 384
    :pswitch_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const-string v7, "Fast"

    iput-object v7, v6, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 386
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightHighSpeed()V

    goto/16 :goto_3

    .line 389
    :pswitch_2
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const-string v7, "Medium"

    iput-object v7, v6, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 391
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightHighSpeed()V

    goto/16 :goto_3

    .line 395
    :pswitch_3
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const-string v7, "Slow"

    iput-object v7, v6, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftLowSpeed()V

    .line 397
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightLowSpeed()V

    goto/16 :goto_3

    .line 407
    .restart local v2    # "keepOn":Ljava/lang/String;
    :sswitch_21
    const-string v8, "moveForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_4

    :sswitch_22
    const-string v8, "turnLeftCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto/16 :goto_4

    :sswitch_23
    const-string v8, "turnLeftSpinSoft90Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x2

    goto/16 :goto_4

    :sswitch_24
    const-string v8, "turnLeftSpinSoft180Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x3

    goto/16 :goto_4

    :sswitch_25
    const-string v8, "turnLeftSpinSoft270Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x4

    goto/16 :goto_4

    :sswitch_26
    const-string v8, "turnLeftSpinSoft360Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x5

    goto/16 :goto_4

    :sswitch_27
    const-string v8, "turnLeftTurnCustomAngleCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x6

    goto/16 :goto_4

    :sswitch_28
    const-string v8, "hardTurnLeftCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x7

    goto/16 :goto_4

    :sswitch_29
    const-string v8, "turnLeftSpinHard90Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x8

    goto/16 :goto_4

    :sswitch_2a
    const-string v8, "turnLeftSpinHard180Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x9

    goto/16 :goto_4

    :sswitch_2b
    const-string v8, "turnLeftSpinHard270Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xa

    goto/16 :goto_4

    :sswitch_2c
    const-string v8, "turnLeftSpinHard360Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xb

    goto/16 :goto_4

    :sswitch_2d
    const-string v8, "turnLeftSpinCustomAngleCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xc

    goto/16 :goto_4

    :sswitch_2e
    const-string v8, "turnRightCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xd

    goto/16 :goto_4

    :sswitch_2f
    const-string v8, "turnRightSpinSoft90Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xe

    goto/16 :goto_4

    :sswitch_30
    const-string v8, "turnRightSpinSoft180Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0xf

    goto/16 :goto_4

    :sswitch_31
    const-string v8, "turnRightSpinSoft270Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x10

    goto/16 :goto_4

    :sswitch_32
    const-string v8, "turnRightSpinSoft360Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x11

    goto/16 :goto_4

    :sswitch_33
    const-string v8, "turnRightTurnCustomAngleCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x12

    goto/16 :goto_4

    :sswitch_34
    const-string v8, "hardTurnRightCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x13

    goto/16 :goto_4

    :sswitch_35
    const-string v8, "turnRightSpinHard90Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x14

    goto/16 :goto_4

    :sswitch_36
    const-string v8, "turnRightSpinHard180Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x15

    goto/16 :goto_4

    :sswitch_37
    const-string v8, "turnRightSpinHard270Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x16

    goto/16 :goto_4

    :sswitch_38
    const-string v8, "turnRightSpinHard360Command"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x17

    goto/16 :goto_4

    :sswitch_39
    const-string v8, "turnRightSpinCustomAngleCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x18

    goto/16 :goto_4

    :sswitch_3a
    const-string v8, "moveBackwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x19

    goto/16 :goto_4

    :sswitch_3b
    const-string v8, "turnLeftReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1a

    goto/16 :goto_4

    :sswitch_3c
    const-string v8, "turnRightReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1b

    goto/16 :goto_4

    :sswitch_3d
    const-string v8, "turnLeftForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1c

    goto/16 :goto_4

    :sswitch_3e
    const-string v8, "turnRightForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1d

    goto/16 :goto_4

    :sswitch_3f
    const-string v8, "moveMotorLeftForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1e

    goto/16 :goto_4

    :sswitch_40
    const-string v8, "spinLeftMotorForward"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x1f

    goto/16 :goto_4

    :sswitch_41
    const-string v8, "moveMotorLeftReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x20

    goto/16 :goto_4

    :sswitch_42
    const-string v8, "spinLeftMotorReverse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x21

    goto/16 :goto_4

    :sswitch_43
    const-string v8, "moveMotorRightForwardCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x22

    goto/16 :goto_4

    :sswitch_44
    const-string v8, "spinRightMotorForward"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x23

    goto/16 :goto_4

    :sswitch_45
    const-string v8, "moveMotorRightReverseCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x24

    goto/16 :goto_4

    :sswitch_46
    const-string v8, "spinRightMotorReverse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x25

    goto/16 :goto_4

    :sswitch_47
    const-string v8, "turnCircuitD1OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x26

    goto/16 :goto_4

    :sswitch_48
    const-string v8, "turnD1OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x27

    goto/16 :goto_4

    :sswitch_49
    const-string v8, "turnD1OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x28

    goto/16 :goto_4

    :sswitch_4a
    const-string v8, "turnD1OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x29

    goto/16 :goto_4

    :sswitch_4b
    const-string v8, "turnCircuitD2OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2a

    goto/16 :goto_4

    :sswitch_4c
    const-string v8, "turnD2OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2b

    goto/16 :goto_4

    :sswitch_4d
    const-string v8, "turnD2OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2c

    goto/16 :goto_4

    :sswitch_4e
    const-string v8, "turnD2OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2d

    goto/16 :goto_4

    :sswitch_4f
    const-string v8, "turnCircuitD3OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2e

    goto/16 :goto_4

    :sswitch_50
    const-string v8, "turnD3OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x2f

    goto/16 :goto_4

    :sswitch_51
    const-string v8, "turnD3OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x30

    goto/16 :goto_4

    :sswitch_52
    const-string v8, "turnD3OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x31

    goto/16 :goto_4

    :sswitch_53
    const-string v8, "turnCircuitD4OnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x32

    goto/16 :goto_4

    :sswitch_54
    const-string v8, "turnD4OnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x33

    goto/16 :goto_4

    :sswitch_55
    const-string v8, "turnD4OnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x34

    goto/16 :goto_4

    :sswitch_56
    const-string v8, "turnD4OnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x35

    goto/16 :goto_4

    :sswitch_57
    const-string v8, "turnSingleCircuitOnCommand"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x36

    goto/16 :goto_4

    :sswitch_58
    const-string v8, "turnAOnKliks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x37

    goto/16 :goto_4

    :sswitch_59
    const-string v8, "turnAOnTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x38

    goto/16 :goto_4

    :sswitch_5a
    const-string v8, "turnAOnToggle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v6, 0x39

    goto/16 :goto_4

    .line 409
    :pswitch_4
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnForward()V

    goto/16 :goto_5

    .line 417
    :pswitch_5
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnLeft()V

    goto/16 :goto_5

    .line 425
    :pswitch_6
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnPowerLeft()V

    goto/16 :goto_5

    .line 433
    :pswitch_7
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnRight()V

    goto/16 :goto_5

    .line 441
    :pswitch_8
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnPowerRight()V

    goto/16 :goto_5

    .line 444
    :pswitch_9
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnBack()V

    goto/16 :goto_5

    .line 447
    :pswitch_a
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnRightBack()V

    goto/16 :goto_5

    .line 450
    :pswitch_b
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnLeftBack()V

    goto/16 :goto_5

    .line 453
    :pswitch_c
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnRight()V

    goto/16 :goto_5

    .line 456
    :pswitch_d
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->turnLeft()V

    goto/16 :goto_5

    .line 460
    :pswitch_e
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 461
    const-string v6, "Left"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOn()V

    goto/16 :goto_5

    .line 466
    :pswitch_f
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 467
    const-string v6, "Left"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOn()V

    goto/16 :goto_5

    .line 472
    :pswitch_10
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 473
    const-string v6, "Right"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOn()V

    goto/16 :goto_5

    .line 478
    :pswitch_11
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 479
    const-string v6, "Right"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOn()V

    goto/16 :goto_5

    .line 486
    :pswitch_12
    const-string v2, "D1"

    .line 487
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 488
    const-string v6, "Left"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftPositiveOn()V

    goto/16 :goto_5

    .line 495
    :pswitch_13
    const-string v2, "D2"

    .line 496
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 497
    const-string v6, "Left"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOn()V

    goto/16 :goto_5

    .line 504
    :pswitch_14
    const-string v2, "D3"

    .line 505
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 506
    const-string v6, "Right"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightPositiveOn()V

    goto/16 :goto_5

    .line 513
    :pswitch_15
    const-string v2, "D4"

    .line 514
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 515
    const-string v6, "Right"

    invoke-direct {p0, v6, p3}, Lcom/elenco/snapcoder/model/Bot;->setMotorCircuitSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOn()V

    goto/16 :goto_5

    .line 522
    :pswitch_16
    const-string v2, "A"

    .line 523
    invoke-virtual {p0}, Lcom/elenco/snapcoder/model/Bot;->singleCircuitOn()V

    goto/16 :goto_5

    .line 572
    .restart local v4    # "shouldRemove":Z
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_5

    .line 573
    const-wide/16 p1, 0x0

    .line 574
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 576
    :cond_5
    const/4 v2, 0x0

    .line 577
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 346
    :sswitch_data_0
    .sparse-switch
        -0x7f3f2b56 -> :sswitch_b
        -0x7f131529 -> :sswitch_13
        -0x720c1821 -> :sswitch_19
        -0x70ba314a -> :sswitch_a
        -0x63cd143a -> :sswitch_e
        -0x538c6e50 -> :sswitch_7
        -0x4a2cd9e8 -> :sswitch_14
        -0x47d5df6f -> :sswitch_6
        -0x3e19d230 -> :sswitch_16
        -0x3c1f508e -> :sswitch_5
        -0x3068c1ad -> :sswitch_4
        -0x2c385fc2 -> :sswitch_2
        -0x1e9c1e69 -> :sswitch_1b
        -0x15546b39 -> :sswitch_c
        -0x15469ea7 -> :sswitch_15
        -0xb390a7f -> :sswitch_3
        -0x6508722 -> :sswitch_18
        0x41418a5 -> :sswitch_f
        0x223856e0 -> :sswitch_1a
        0x255b0e99 -> :sswitch_9
        0x26ec0fc8 -> :sswitch_8
        0x3451bee7 -> :sswitch_d
        0x4bc102f1 -> :sswitch_0
        0x4c06af96 -> :sswitch_12
        0x656b09dd -> :sswitch_17
        0x6bf54584 -> :sswitch_10
        0x6cc05834 -> :sswitch_1
        0x7a6207ed -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 381
    :sswitch_data_1
    .sparse-switch
        -0x76dc846b -> :sswitch_1e
        0x12b34 -> :sswitch_20
        0x214c7c -> :sswitch_1c
        0x2251c2 -> :sswitch_1d
        0x275e21 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 407
    :sswitch_data_2
    .sparse-switch
        -0x7f3f2b56 -> :sswitch_44
        -0x7f131529 -> :sswitch_4d
        -0x720c1821 -> :sswitch_52
        -0x713563b4 -> :sswitch_37
        -0x70ba314a -> :sswitch_42
        -0x6b481d1b -> :sswitch_33
        -0x6a2f5b9c -> :sswitch_23
        -0x675887f6 -> :sswitch_3d
        -0x63cd143a -> :sswitch_4c
        -0x5f86f117 -> :sswitch_32
        -0x5f665f3d -> :sswitch_29
        -0x5dce63e4 -> :sswitch_28
        -0x5767268d -> :sswitch_2a
        -0x557b2c96 -> :sswitch_39
        -0x538c6e50 -> :sswitch_53
        -0x506d4d09 -> :sswitch_21
        -0x4a2cd9e8 -> :sswitch_51
        -0x47d5df6f -> :sswitch_4f
        -0x465932b3 -> :sswitch_3b
        -0x45b8b3f0 -> :sswitch_25
        -0x3e19d230 -> :sswitch_59
        -0x3c1f508e -> :sswitch_4b
        -0x337f0779 -> :sswitch_22
        -0x3068c1ad -> :sswitch_47
        -0x2c385fc2 -> :sswitch_43
        -0x1f90f553 -> :sswitch_30
        -0x1e9c1e69 -> :sswitch_5a
        -0x15546b39 -> :sswitch_46
        -0x15469ea7 -> :sswitch_55
        -0x11306196 -> :sswitch_38
        -0xb390a7f -> :sswitch_45
        -0xb36d249 -> :sswitch_34
        -0xb049fb7 -> :sswitch_2f
        -0x6508722 -> :sswitch_4e
        -0x3ba358 -> :sswitch_35
        0x41418a5 -> :sswitch_50
        0x89ddb91 -> :sswitch_2b
        0x14655eac -> :sswitch_2e
        0x1a4c4e2e -> :sswitch_26
        0x223856e0 -> :sswitch_56
        0x23afce45 -> :sswitch_3e
        0x255b0e99 -> :sswitch_40
        0x26ec0fc8 -> :sswitch_57
        0x299c55d7 -> :sswitch_3a
        0x2ec59a2e -> :sswitch_36
        0x3451bee7 -> :sswitch_48
        0x40740ccb -> :sswitch_31
        0x44af2388 -> :sswitch_3c
        0x4bc102f1 -> :sswitch_3f
        0x4c06af96 -> :sswitch_49
        0x5a4249f2 -> :sswitch_24
        0x656b09dd -> :sswitch_4a
        0x689ff7aa -> :sswitch_27
        0x68a2ddaf -> :sswitch_2c
        0x6bf54584 -> :sswitch_54
        0x6cc05834 -> :sswitch_41
        0x7a6207ed -> :sswitch_58
        0x7e6ce82f -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public abstract fastSpeed()V
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->bearing:F

    return v0
.end method

.method public getBotFrameColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->botFrameColor:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->changedName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->currentDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentX()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->currentX:I

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->currentY:I

    return v0
.end method

.method public getDriveCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->driveCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->duration:F

    return v0
.end method

.method public getEndIfIndex()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->endIfIndex:I

    return v0
.end method

.method public getExecuteCommand()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/elenco/snapcoder/model/Bot;->executeCommand:Z

    return v0
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getIsVirtual()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/elenco/snapcoder/model/Bot;->isVirtual:Z

    return v0
.end method

.method public getLastRSSI()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->lastRSSI:I

    return v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->lastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->lastY:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/elenco/snapcoder/model/Bot;->RSSI:I

    return v0
.end method

.method public abstract leftHighSpeed()V
.end method

.method public abstract leftLowSpeed()V
.end method

.method public abstract leftNegativeOff()V
.end method

.method public abstract leftNegativeOn()V
.end method

.method public abstract leftOff()V
.end method

.method public abstract leftOn()V
.end method

.method public abstract leftPositiveOff()V
.end method

.method public abstract leftPositiveOn()V
.end method

.method public abstract mediumSpeed()V
.end method

.method public requestRSSI()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 187
    return-void
.end method

.method public resetBot()V
    .locals 2

    .prologue
    .line 254
    const-string v1, "AT+BATC1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 255
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 256
    return-void
.end method

.method public abstract rightHighSpeed()V
.end method

.method public abstract rightLowSpeed()V
.end method

.method public abstract rightNegativeOff()V
.end method

.method public abstract rightNegativeOn()V
.end method

.method public abstract rightOff()V
.end method

.method public abstract rightOn()V
.end method

.method public abstract rightPositiveOff()V
.end method

.method public abstract rightPositiveOn()V
.end method

.method public setBatteryState()V
    .locals 2

    .prologue
    .line 223
    const-string v1, "AT+BATC1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 224
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 225
    return-void
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "bearing"    # F

    .prologue
    .line 605
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->bearing:F

    .line 606
    return-void
.end method

.method public setBotFrameColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/elenco/snapcoder/model/Bot;->botFrameColor:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setChangedName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newChangedName"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/elenco/snapcoder/model/Bot;->changedName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setCurrentDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/elenco/snapcoder/model/Bot;->currentDirection:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setCurrentX(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->currentX:I

    .line 297
    return-void
.end method

.method public setCurrentY(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->currentY:I

    .line 305
    return-void
.end method

.method public setDriveCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/elenco/snapcoder/model/Bot;->driveCommand:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->duration:F

    .line 167
    return-void
.end method

.method public setEndIfIndex(I)V
    .locals 0
    .param p1, "endIfIndex"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->endIfIndex:I

    return-void
.end method

.method public setExecuteCommand(Z)V
    .locals 0
    .param p1, "executeCommand"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/elenco/snapcoder/model/Bot;->executeCommand:Z

    return-void
.end method

.method public setIsVirtual(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/elenco/snapcoder/model/Bot;->isVirtual:Z

    .line 326
    return-void
.end method

.method public setLastRSSI(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->lastRSSI:I

    .line 207
    return-void
.end method

.method public setLastX(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->lastX:I

    .line 313
    return-void
.end method

.method public setLastY(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->lastY:I

    .line 321
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+NAME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 241
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 242
    return-void
.end method

.method public setPioState()V
    .locals 2

    .prologue
    .line 212
    const-string v1, "AT+BEFC000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 213
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 214
    return-void
.end method

.method public setPowerState()V
    .locals 2

    .prologue
    .line 218
    const-string v1, "AT+POWE3"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 219
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/Bot;->writeData([B)V

    .line 220
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/elenco/snapcoder/model/Bot;->RSSI:I

    .line 197
    return-void
.end method

.method public abstract singleCircuitOff()V
.end method

.method public abstract singleCircuitOn()V
.end method

.method public abstract sleepOff()V
.end method

.method public abstract sleepOn()V
.end method

.method public abstract slowSpeed()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopLeftWheelForward()V
.end method

.method public abstract stopLeftWheelReverse()V
.end method

.method public abstract stopMotorCircuit(Ljava/lang/String;ZZ)V
.end method

.method public abstract stopRightWheelForward()V
.end method

.method public abstract stopRightWheelReverse()V
.end method

.method public abstract turnBack()V
.end method

.method public abstract turnForward()V
.end method

.method public abstract turnLeft()V
.end method

.method public abstract turnLeftBack()V
.end method

.method public abstract turnLeftWheel()V
.end method

.method public abstract turnLeftWheelReverse()V
.end method

.method public abstract turnPowerLeft()V
.end method

.method public abstract turnPowerRight()V
.end method

.method public abstract turnRight()V
.end method

.method public abstract turnRightBack()V
.end method

.method public abstract turnRightWheel()V
.end method

.method public abstract turnRightWheelReverse()V
.end method

.method protected writeData([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 48
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 50
    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/elenco/snapcoder/model/Bot;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 53
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
