.class Lcom/elenco/snapcoder/DiscoveredBotBay$1;
.super Ljava/lang/Object;
.source "DiscoveredBotBay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/DiscoveredBotBay;->createBotIcon(Landroid/bluetooth/BluetoothDevice;)Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

.field final synthetic val$bot:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$finalBotRowView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Landroid/view/View;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/DiscoveredBotBay;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iput-object p2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$finalBotRowView:Landroid/view/View;

    iput-object p3, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$bot:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0700da

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 161
    iget-object v5, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$finalBotRowView:Landroid/view/View;

    const v6, 0x7f0800b7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 162
    .local v3, "connectingLayer":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$finalBotRowView:Landroid/view/View;

    const v6, 0x7f0801ed

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 163
    .local v2, "connectToggle":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 165
    const v5, 0x7f0700c4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$bot:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->connectToBotByAddress(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f0800db

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 169
    .local v4, "driveButton":Landroid/widget/ImageButton;
    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 171
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f08009c

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 172
    .local v1, "codeButton":Landroid/widget/ImageButton;
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 174
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    iget-object v5, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iget-object v6, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$bot:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/DiscoveredBotBay;->insertConnectingBot(Ljava/lang/String;)V

    .line 189
    .end local v1    # "codeButton":Landroid/widget/ImageButton;
    .end local v4    # "driveButton":Landroid/widget/ImageButton;
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 181
    .local v0, "bots":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$1;->val$bot:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    iget-object v5, v5, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    iput-boolean v8, v5, Lcom/elenco/snapcoder/BatteryChecker;->dropped:Z

    .line 183
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method
