.class public Lcom/elenco/snapcoder/model/BotV1;
.super Lcom/elenco/snapcoder/model/Bot;
.source "BotV1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/elenco/snapcoder/model/Bot;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/elenco/snapcoder/model/Bot;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/elenco/snapcoder/model/BotV1;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 12
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV1;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV1;->CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/model/BotV1;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 13
    return-void
.end method


# virtual methods
.method public circuitAwake()V
    .locals 2

    .prologue
    .line 261
    const-string v1, "CIRCUIT_AWAKE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 262
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 263
    return-void
.end method

.method public circuitSleep()V
    .locals 2

    .prologue
    .line 255
    const-string v1, "CIRCUIT_SLEEP\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 256
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 257
    return-void
.end method

.method public fastSpeed()V
    .locals 2

    .prologue
    .line 16
    const-string v1, "fastSpeed\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 17
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 18
    return-void
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV1;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV1;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftHighSpeed()V
    .locals 2

    .prologue
    .line 231
    const-string v1, "LEFT_HIGH_SPEED\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 232
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 233
    return-void
.end method

.method public leftLowSpeed()V
    .locals 2

    .prologue
    .line 237
    const-string v1, "LEFT_LOW_SPEED\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 238
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 239
    return-void
.end method

.method public leftNegativeOff()V
    .locals 2

    .prologue
    .line 177
    const-string v1, "LEFT_NEGATIVE_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 178
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 179
    return-void
.end method

.method public leftNegativeOn()V
    .locals 2

    .prologue
    .line 171
    const-string v1, "LEFT_NEGATIVE_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 172
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 173
    return-void
.end method

.method public leftOff()V
    .locals 2

    .prologue
    .line 213
    const-string v1, "LEFT_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 214
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 215
    return-void
.end method

.method public leftOn()V
    .locals 2

    .prologue
    .line 207
    const-string v1, "LEFT_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 208
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 209
    return-void
.end method

.method public leftPositiveOff()V
    .locals 2

    .prologue
    .line 164
    const-string v1, "LEFT_POSITIVE_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 165
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 167
    return-void
.end method

.method public leftPositiveOn()V
    .locals 2

    .prologue
    .line 157
    const-string v1, "LEFT_POSITIVE_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 158
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 160
    return-void
.end method

.method public mediumSpeed()V
    .locals 2

    .prologue
    .line 21
    const-string v1, "mediumSpeed\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 22
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 23
    return-void
.end method

.method public rightHighSpeed()V
    .locals 2

    .prologue
    .line 243
    const-string v1, "RIGHT_HIGH_SPEED\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 244
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 245
    return-void
.end method

.method public rightLowSpeed()V
    .locals 2

    .prologue
    .line 249
    const-string v1, "RIGHT_LOW_SPEED\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 250
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 251
    return-void
.end method

.method public rightNegativeOff()V
    .locals 2

    .prologue
    .line 201
    const-string v1, "RIGHT_NEGATIVE_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 202
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 203
    return-void
.end method

.method public rightNegativeOn()V
    .locals 2

    .prologue
    .line 195
    const-string v1, "RIGHT_NEGATIVE_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 196
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 197
    return-void
.end method

.method public rightOff()V
    .locals 2

    .prologue
    .line 225
    const-string v1, "RIGHT_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 226
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 227
    return-void
.end method

.method public rightOn()V
    .locals 2

    .prologue
    .line 219
    const-string v1, "RIGHT_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 220
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 221
    return-void
.end method

.method public rightPositiveOff()V
    .locals 2

    .prologue
    .line 189
    const-string v1, "RIGHT_POSITIVE_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 190
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 191
    return-void
.end method

.method public rightPositiveOn()V
    .locals 2

    .prologue
    .line 183
    const-string v1, "RIGHT_POSITIVE_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 184
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 185
    return-void
.end method

.method public singleCircuitOff()V
    .locals 2

    .prologue
    .line 151
    const-string v1, "SINGLE_CIRCUIT_OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 152
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 153
    return-void
.end method

.method public singleCircuitOn()V
    .locals 2

    .prologue
    .line 145
    const-string v1, "SINGLE_CIRCUIT_ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 146
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 147
    return-void
.end method

.method public sleepOff()V
    .locals 2

    .prologue
    .line 36
    const-string v1, "sleepOff\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 37
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 38
    return-void
.end method

.method public sleepOn()V
    .locals 2

    .prologue
    .line 31
    const-string v1, "sleepOn\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 32
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 33
    return-void
.end method

.method public slowSpeed()V
    .locals 2

    .prologue
    .line 26
    const-string v1, "slowSpeed\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 27
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 28
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 91
    const-string v1, "OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 92
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 93
    return-void
.end method

.method public stopLeftWheelForward()V
    .locals 2

    .prologue
    .line 121
    const-string v1, "TURN_LEFT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 123
    return-void
.end method

.method public stopLeftWheelReverse()V
    .locals 2

    .prologue
    .line 127
    const-string v1, "TURN_LEFT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 128
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 129
    return-void
.end method

.method public stopMotorCircuit(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "keepOn"    # Ljava/lang/String;
    .param p2, "shouldRemove"    # Z
    .param p3, "includeA"    # Z

    .prologue
    .line 267
    const-string v1, "OFF\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 268
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 269
    return-void
.end method

.method public stopRightWheelForward()V
    .locals 2

    .prologue
    .line 133
    const-string v1, "TURN_RIGHT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 134
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 135
    return-void
.end method

.method public stopRightWheelReverse()V
    .locals 2

    .prologue
    .line 139
    const-string v1, "TURN_RIGHT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 140
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 141
    return-void
.end method

.method public turnBack()V
    .locals 2

    .prologue
    .line 49
    const-string v1, "REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 50
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 51
    return-void
.end method

.method public turnForward()V
    .locals 2

    .prologue
    .line 43
    const-string v1, "ON\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 45
    return-void
.end method

.method public turnLeft()V
    .locals 2

    .prologue
    .line 61
    const-string v1, "TURN_LEFT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 62
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 63
    return-void
.end method

.method public turnLeftBack()V
    .locals 2

    .prologue
    .line 67
    const-string v1, "TURN_LEFT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 68
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 69
    return-void
.end method

.method public turnLeftWheel()V
    .locals 2

    .prologue
    .line 97
    const-string v1, "TURN_LEFT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 98
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 99
    return-void
.end method

.method public turnLeftWheelReverse()V
    .locals 2

    .prologue
    .line 103
    const-string v1, "TURN_LEFT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 104
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 105
    return-void
.end method

.method public turnPowerLeft()V
    .locals 2

    .prologue
    .line 55
    const-string v1, "TURN_LEFT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 56
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 57
    return-void
.end method

.method public turnPowerRight()V
    .locals 2

    .prologue
    .line 79
    const-string v1, "TURN_RIGHT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 80
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 81
    return-void
.end method

.method public turnRight()V
    .locals 2

    .prologue
    .line 85
    const-string v1, "TURN_RIGHT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 86
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 87
    return-void
.end method

.method public turnRightBack()V
    .locals 2

    .prologue
    .line 73
    const-string v1, "TURN_RIGHT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 74
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 75
    return-void
.end method

.method public turnRightWheel()V
    .locals 2

    .prologue
    .line 109
    const-string v1, "TURN_RIGHT\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 110
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 111
    return-void
.end method

.method public turnRightWheelReverse()V
    .locals 2

    .prologue
    .line 115
    const-string v1, "TURN_RIGHT_REVERSE\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 116
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/model/BotV1;->writeData([B)V

    .line 117
    return-void
.end method
