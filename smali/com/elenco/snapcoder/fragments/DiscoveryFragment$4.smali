.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0800d4

    const/4 v8, 0x0

    .line 117
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-boolean v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    if-eqz v3, :cond_1

    .line 118
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    iget-boolean v3, v3, Lcom/elenco/snapcoder/MainScreen;->discoveryScreenOpen:Z

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->handlers:Landroid/os/Handler;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->stopScan()V

    .line 121
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-boolean v8, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    .line 122
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const v4, 0x7f0700df

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 123
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v4, "START SCAN TO FIND SC CONTROLLER(S)"

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->stopTextHandler()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    new-instance v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;)V

    iput-object v4, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->runnable:Ljava/lang/Runnable;

    .line 142
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 143
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 144
    .local v1, "discoveredBotTable":Landroid/widget/TableLayout;
    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 146
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 147
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;

    move-result-object v4

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/DiscoveredBotBay;->addBotToBay(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 150
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_2
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->handlers:Landroid/os/Handler;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->runnable:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget v5, v5, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanTime:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->scanForBots()V

    .line 152
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    .line 153
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const v4, 0x7f0700f3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v4, "SCANNING FOR SC CONTROLLER(S)"

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput v8, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    .line 156
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v4, v4, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 159
    .local v2, "discoveredTable":Landroid/widget/TableLayout;
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v4, "NO SC CONTROLLER(S) FOUND..."

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v4, "Make sure your SC Controller is turned on and has working batteries."

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v3, v8}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v3, v8}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 166
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v3, v8}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
