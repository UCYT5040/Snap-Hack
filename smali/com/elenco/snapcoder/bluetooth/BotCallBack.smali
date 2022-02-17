.class public Lcom/elenco/snapcoder/bluetooth/BotCallBack;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BotCallBack.java"


# static fields
.field private static final CIRCUIT_NAME:Ljava/lang/String; = "MCC"

.field private static final SC_CONTROLLER_NAME:Ljava/lang/String; = "SCC"


# instance fields
.field protected SERVICE_UUID:Ljava/util/UUID;

.field botList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field connectedAddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field connectedCircuits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

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

.field numberOfConnectedBots:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "circuitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .local p2, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 47
    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->SERVICE_UUID:Ljava/util/UUID;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedAddressList:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->numberOfConnectedBots:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->botList:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    .line 64
    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedAddressList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method private addBot(Landroid/bluetooth/BluetoothGatt;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 257
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 261
    .local v1, "btCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0

    .line 263
    .end local v1    # "btCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    :cond_1
    new-instance v0, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v0, p1}, Lcom/elenco/snapcoder/model/BotV2;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 267
    .local v0, "botV2":Lcom/elenco/snapcoder/model/BotV2;
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedAddressList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/BotV2;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedAddressList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/BotV2;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v0    # "botV2":Lcom/elenco/snapcoder/model/BotV2;
    :cond_2
    return-void
.end method

.method private onBotDisconnected(Ljava/lang/String;)V
    .locals 14
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 281
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 282
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 283
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 284
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getAddressesofBotsToBeConnected()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedAddressList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    move v5, v6

    .line 289
    .local v5, "finalI":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    new-instance v11, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;

    invoke-direct {v11, p0, v5, p1}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    .end local v5    # "finalI":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    const v11, 0x7f0800d4

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    .line 303
    .local v3, "discoveredBotTable":Landroid/widget/TableLayout;
    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 304
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 305
    invoke-virtual {v3, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 306
    invoke-virtual {v3, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0801ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 307
    .local v1, "connectToggle":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v11

    const v12, 0x7f0700c4

    invoke-static {v11, v12}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 308
    move v5, v6

    .line 309
    .restart local v5    # "finalI":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    new-instance v11, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;

    invoke-direct {v11, p0, v5, v3}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;ILandroid/widget/TableLayout;)V

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    .end local v1    # "connectToggle":Landroid/widget/ImageView;
    .end local v5    # "finalI":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 340
    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 341
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v10}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 342
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 346
    :cond_5
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    const v11, 0x7f0800d3

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 348
    .local v2, "disabledTable":Landroid/widget/LinearLayout;
    move-object v9, v2

    .line 350
    .local v9, "setDisabledTable":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 351
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 352
    move v7, v6

    .line 353
    .local v7, "position":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    new-instance v11, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;

    invoke-direct {v11, p0, v9, v7}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    .end local v7    # "position":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 362
    :cond_7
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 364
    new-instance v8, Lcom/elenco/snapcoder/bluetooth/BotCallBack$6;

    invoke-direct {v8, p0}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$6;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;)V

    .line 370
    .local v8, "resetDashbaord":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    .end local v8    # "resetDashbaord":Ljava/lang/Runnable;
    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    const-string v11, "BotCallBack.onBotDisconnected() successful"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "disabledTable":Landroid/widget/LinearLayout;
    .end local v3    # "discoveredBotTable":Landroid/widget/TableLayout;
    .end local v9    # "setDisabledTable":Landroid/widget/LinearLayout;
    :goto_5
    return-void

    .line 371
    .restart local v2    # "disabledTable":Landroid/widget/LinearLayout;
    .restart local v3    # "discoveredBotTable":Landroid/widget/TableLayout;
    .restart local v9    # "setDisabledTable":Landroid/widget/LinearLayout;
    :cond_9
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, v13, :cond_a

    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v13, :cond_8

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 372
    :cond_a
    new-instance v8, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;

    invoke-direct {v8, p0, v9}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/widget/LinearLayout;)V

    .line 435
    .restart local v8    # "resetDashbaord":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 438
    .end local v2    # "disabledTable":Landroid/widget/LinearLayout;
    .end local v3    # "discoveredBotTable":Landroid/widget/TableLayout;
    .end local v8    # "resetDashbaord":Ljava/lang/Runnable;
    .end local v9    # "setDisabledTable":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v4

    .line 439
    .local v4, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method


# virtual methods
.method public getErrorList()Ljava/util/ArrayList;
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
    .line 449
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 209
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 211
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 200
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 202
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 192
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 194
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 75
    const/16 v3, 0x85

    if-ne p2, v3, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->botList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 79
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 80
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/DiscoveredBotBay;->removeBots(Ljava/lang/String;)V

    .line 83
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 119
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    const-string v4, "BotCallBack.onConnectionStateChange() successful"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    return-void

    .line 87
    :pswitch_1
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->botList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->botList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V

    .line 103
    move-object v2, p1

    .line 104
    .local v2, "finalGatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    iget-object v3, v3, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    iget-boolean v3, v3, Lcom/elenco/snapcoder/BatteryChecker;->dropped:Z

    if-eqz v3, :cond_2

    .line 105
    new-instance v0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;

    invoke-direct {v0, p0, v2}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$1;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/bluetooth/BluetoothGatt;)V

    .line 111
    .local v0, "batteryDrop":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    .end local v0    # "batteryDrop":Ljava/lang/Runnable;
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    iget-object v3, v3, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/elenco/snapcoder/BatteryChecker;->dropped:Z

    .line 115
    iget-object v3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->botList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 236
    if-nez p3, :cond_1

    .line 239
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->connectedCircuits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 241
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getRSSI()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/model/Bot;->setLastRSSI(I)V

    .line 244
    invoke-virtual {v0, p2}, Lcom/elenco/snapcoder/model/Bot;->setRSSI(I)V

    goto :goto_0

    .line 249
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 134
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 135
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->addBot(Landroid/bluetooth/BluetoothGatt;)V

    .line 136
    new-instance v1, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;-><init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/bluetooth/BluetoothGatt;)V

    .line 174
    .local v1, "removeConnectingImage":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    const-string v3, "BotCallBack.onServicesDiscovered() successful"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "removeConnectingImage":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->errorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method writeData([BLandroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 218
    iget-object v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 221
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
