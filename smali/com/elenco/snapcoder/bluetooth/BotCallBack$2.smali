.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0800b7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 139
    const/4 v5, 0x0

    .line 140
    .local v5, "notReady":Z
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f0800d4

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 141
    .local v2, "discoveredBotTable":Landroid/widget/TableLayout;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 142
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 144
    .local v1, "connectingLayout":Landroid/widget/FrameLayout;
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;

    move-result-object v6

    iget-object v7, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/DiscoveredBotBay;->removeBots(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    iget-object v7, v6, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 165
    .end local v1    # "connectingLayout":Landroid/widget/FrameLayout;
    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 166
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f0800db

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 167
    .local v3, "driveButton":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    const v7, 0x7f08009c

    invoke-virtual {v6, v7}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 168
    .local v0, "codeButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 169
    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 141
    .end local v0    # "codeButton":Landroid/widget/ImageButton;
    .end local v3    # "driveButton":Landroid/widget/ImageButton;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .restart local v1    # "connectingLayout":Landroid/widget/FrameLayout;
    :sswitch_0
    const-string v8, "Fast"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "Medium"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "Slow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    .line 148
    :pswitch_0
    const-string v6, "Fast"

    invoke-static {v6}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :pswitch_1
    const-string v6, "Medium"

    invoke-static {v6}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :pswitch_2
    const-string v6, "Slow"

    invoke-static {v6}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v1    # "connectingLayout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 160
    .restart local v1    # "connectingLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 161
    const/4 v5, 0x1

    goto :goto_2

    .line 172
    .end local v1    # "connectingLayout":Landroid/widget/FrameLayout;
    :cond_4
    return-void

    .line 146
    nop

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
