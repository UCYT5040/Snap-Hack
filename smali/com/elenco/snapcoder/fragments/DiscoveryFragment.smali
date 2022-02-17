.class public Lcom/elenco/snapcoder/fragments/DiscoveryFragment;
.super Landroid/app/Fragment;
.source "DiscoveryFragment.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field alreadyStarted:Z

.field cancelBotButton:Landroid/widget/ImageButton;

.field public checkBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field delay:I

.field dotCount:I

.field driveButtonPressed:Z

.field firstTime:Z

.field handlers:Landroid/os/Handler;

.field hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

.field isScanning:Z

.field public locationIsOn:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field mStatusChecker:Ljava/lang/Runnable;

.field noBotsLayout:Landroid/widget/FrameLayout;

.field normalLayout:Landroid/widget/LinearLayout;

.field runnable:Ljava/lang/Runnable;

.field scanButton:Landroid/widget/ImageButton;

.field scanTime:I

.field scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

.field skip:Z

.field statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

.field textHandler:Landroid/os/Handler;

.field textRunnable:Ljava/lang/Runnable;

.field view:Landroid/view/View;

.field welcomeLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBots:Ljava/util/ArrayList;

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->locationIsOn:Ljava/lang/Boolean;

    .line 57
    iput-boolean v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->alreadyStarted:Z

    .line 58
    iput-boolean v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->firstTime:Z

    .line 59
    iput-boolean v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->driveButtonPressed:Z

    .line 62
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->CIRCUIT_NAME:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanTime:I

    .line 66
    iput v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textHandler:Landroid/os/Handler;

    .line 191
    iput-boolean v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->skip:Z

    .line 192
    iput v3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->delay:I

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->handlers:Landroid/os/Handler;

    .line 195
    iput-boolean v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    .line 894
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mStatusChecker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public checkBluetooth()Z
    .locals 14

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->alreadyStarted:Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->firstTime:Z

    .line 203
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkLocation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->skip:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->locationIsOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$6;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$6;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->runnable:Ljava/lang/Runnable;

    .line 242
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->handlers:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->runnable:Ljava/lang/Runnable;

    iget v12, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanTime:I

    int-to-long v12, v12

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    .line 244
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 245
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "SCANNING FOR SC CONTROLLER(S)"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    .line 249
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 254
    .local v2, "noBluetoothLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 257
    .local v11, "noLocationLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 266
    .local v3, "driveConnectionButton":Landroid/widget/ImageButton;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 269
    .local v4, "codeConnectionButton":Landroid/widget/ImageButton;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 272
    .local v5, "discoveredTable":Landroid/widget/TableLayout;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 274
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/model/Bot;

    .line 275
    .local v8, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;

    move-result-object v1

    invoke-virtual {v8}, Lcom/elenco/snapcoder/model/Bot;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v12

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/elenco/snapcoder/DiscoveredBotBay;->addBotToBay(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 278
    .end local v8    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->scanForBots()V

    .line 281
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 282
    .local v9, "handler":Landroid/os/Handler;
    new-instance v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;

    invoke-direct {v10, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    .line 300
    .local v10, "noBotsFound":Ljava/lang/Runnable;
    const-wide/16 v0, 0xbb8

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    .end local v2    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    .end local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    .end local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    .end local v5    # "discoveredTable":Landroid/widget/TableLayout;
    .end local v9    # "handler":Landroid/os/Handler;
    .end local v10    # "noBotsFound":Ljava/lang/Runnable;
    .end local v11    # "noLocationLayout":Landroid/widget/LinearLayout;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 310
    .restart local v2    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "YOU MAY NEED TO ACCEPT THE LOCATION SERVICES IN ORDER FOR BLUETOOTH TO WORK..."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "BLUETOOTH IS REQUIRED TO CONTROL A SC CONTROLLER."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "Would you like to accept the Location Services?"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 321
    .restart local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 324
    .restart local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 327
    .restart local v5    # "discoveredTable":Landroid/widget/TableLayout;
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 331
    .local v7, "bluetoothYesButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TableLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 360
    .local v6, "bluetoothNoButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;

    invoke-direct {v0, p0, v6}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 377
    .end local v2    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    .end local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    .end local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    .end local v5    # "discoveredTable":Landroid/widget/TableLayout;
    .end local v6    # "bluetoothNoButton":Landroid/widget/ImageButton;
    .end local v7    # "bluetoothYesButton":Landroid/widget/ImageButton;
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 384
    .restart local v2    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "YOUR BLUETOOTH IS TURNED OFF..."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "BLUETOOTH IS REQUIRED TO CONTROL A SC CONTROLLER."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "Would you like to turn on your Bluetooth?"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 396
    .restart local v11    # "noLocationLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 399
    .restart local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 402
    .restart local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 405
    .restart local v5    # "discoveredTable":Landroid/widget/TableLayout;
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 409
    .restart local v7    # "bluetoothYesButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TableLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 437
    .restart local v6    # "bluetoothNoButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;

    invoke-direct {v0, p0, v6}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 454
    .end local v2    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    .end local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    .end local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    .end local v5    # "discoveredTable":Landroid/widget/TableLayout;
    .end local v6    # "bluetoothNoButton":Landroid/widget/ImageButton;
    .end local v7    # "bluetoothYesButton":Landroid/widget/ImageButton;
    .end local v11    # "noLocationLayout":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "INCOMPATIBLE BLUETOOTH DETECTED..."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "YOUR DEVICE NEEDS TO HAVE AT LEAST BLUETOOTH 4.0 IN ORDER TO CONNECT TO A SC CONTROLLER."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method checkLocation()Z
    .locals 15

    .prologue
    const/4 v0, 0x1

    const/16 v14, 0x8

    const/4 v12, 0x0

    .line 469
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v1, v13, :cond_0

    .line 470
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const-string v13, "location"

    invoke-virtual {v1, v13}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 471
    .local v7, "lm":Landroid/location/LocationManager;
    const/4 v6, 0x0

    .line 472
    .local v6, "gps_enabled":Z
    const/4 v8, 0x0

    .line 475
    .local v8, "network_enabled":Z
    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v7, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 480
    :goto_0
    :try_start_1
    const-string v1, "network"

    invoke-virtual {v7, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 484
    :goto_1
    if-nez v6, :cond_0

    if-nez v8, :cond_0

    .line 486
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 491
    .local v9, "noBluetoothLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "NEW VERSIONS OF BLUETOOTH MAY REQUIRE LOCATION TO BE ENABLED."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "Would you like to turn on Location settings?"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v12}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v14}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v12}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 503
    .local v3, "driveConnectionButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 506
    .local v4, "codeConnectionButton":Landroid/widget/ImageButton;
    invoke-virtual {v4, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 509
    .local v5, "discoveredTable":Landroid/widget/TableLayout;
    invoke-virtual {v5, v14}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 512
    .local v2, "noLocationLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 515
    .local v11, "yesLocationButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TableLayout;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 546
    .local v10, "noLocationButton":Landroid/widget/ImageButton;
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;

    invoke-direct {v0, p0, v10}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v12

    .line 564
    .end local v2    # "noLocationLayout":Landroid/widget/LinearLayout;
    .end local v3    # "driveConnectionButton":Landroid/widget/ImageButton;
    .end local v4    # "codeConnectionButton":Landroid/widget/ImageButton;
    .end local v5    # "discoveredTable":Landroid/widget/TableLayout;
    .end local v6    # "gps_enabled":Z
    .end local v7    # "lm":Landroid/location/LocationManager;
    .end local v8    # "network_enabled":Z
    .end local v9    # "noBluetoothLayout":Landroid/widget/LinearLayout;
    .end local v10    # "noLocationButton":Landroid/widget/ImageButton;
    .end local v11    # "yesLocationButton":Landroid/widget/ImageButton;
    :cond_0
    return v0

    .line 481
    .restart local v6    # "gps_enabled":Z
    .restart local v7    # "lm":Landroid/location/LocationManager;
    .restart local v8    # "network_enabled":Z
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 476
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public closeConnectScreen()V
    .locals 36

    .prologue
    .line 570
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/elenco/snapcoder/MainScreen;->discoveryScreenOpen:Z

    .line 572
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_0
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/model/Bot;

    .line 573
    .local v2, "b":Lcom/elenco/snapcoder/model/Bot;
    const/4 v15, 0x0

    .line 574
    .local v15, "foundBot":Z
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 575
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v31

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 576
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/ConnectedBay;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v31

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 578
    const/4 v15, 0x1

    .line 583
    .end local v19    # "i":I
    :cond_1
    if-nez v15, :cond_0

    .line 585
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/ConnectedBay;->addBotToBay(Lcom/elenco/snapcoder/model/Bot;)V

    goto :goto_0

    .line 575
    .restart local v19    # "i":I
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 589
    .end local v2    # "b":Lcom/elenco/snapcoder/model/Bot;
    .end local v15    # "foundBot":Z
    .end local v19    # "i":I
    :cond_3
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800d3

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 590
    .local v14, "disabledTable":Landroid/widget/LinearLayout;
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 592
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v9

    .line 593
    .local v9, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_16

    .line 596
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 597
    .local v7, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 599
    .local v5, "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v6

    .line 601
    .local v6, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 603
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->sleepOff()V

    .line 604
    const/16 v16, 0x0

    .line 606
    .local v16, "foundbot":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 607
    .local v3, "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 609
    const/16 v16, 0x1

    .line 610
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedStraight()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getStraightConfiguration()I

    move-result v31

    if-eqz v31, :cond_5

    .line 613
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/elenco/snapcoder/model/Bot;->useAllforward:Z

    .line 615
    :cond_5
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getCalibratedReverse()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getReverseConfiguration()I

    move-result v31

    if-eqz v31, :cond_6

    .line 616
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/elenco/snapcoder/model/Bot;->useAllReverse:Z

    .line 622
    .end local v3    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_6
    if-nez v16, :cond_8

    .line 625
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    const-string v32, "Blue"

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 626
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 627
    const-string v31, "Blue"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 628
    const/high16 v31, 0x45fa0000    # 8000.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnSoft360(F)V

    .line 629
    const/high16 v31, 0x45fa0000    # 8000.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnSoft360(F)V

    .line 630
    const v31, 0x45866000    # 4300.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnHard360(F)V

    .line 631
    const v31, 0x45866000    # 4300.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnHard360(F)V

    .line 632
    const-string v31, "Right"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTurningDirection(Ljava/lang/String;)V

    .line 633
    const-string v31, "Right"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseTurningDirection(Ljava/lang/String;)V

    .line 634
    const/16 v31, 0xf

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseConfiguration(I)V

    .line 635
    const/16 v31, 0x46

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setStraightConfiguration(I)V

    .line 636
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedStraight(I)V

    .line 637
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedReverse(I)V

    .line 638
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinLeft(I)V

    .line 639
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinRight(I)V

    .line 640
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnLeft(I)V

    .line 641
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnRight(I)V

    .line 643
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 644
    :cond_7
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 645
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 651
    .end local v21    # "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 601
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 647
    :cond_9
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    goto :goto_3

    .line 655
    .end local v16    # "foundbot":Z
    :cond_a
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v6

    .line 657
    const/16 v29, 0x0

    .line 659
    .local v29, "timeDriven":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_b
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 660
    .restart local v3    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    const-string v31, "MYTAG"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotId()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotsName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnSoft360()F

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnSoft360()F

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getLeftTurnHard360()F

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getRightTurnHard360()F

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getStraightConfiguration()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTurningDirection()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 663
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v29

    goto/16 :goto_4

    .line 668
    .end local v3    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_c
    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x4002666666666666L    # 2.3

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v29, v0

    .line 669
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 670
    .local v30, "timeDrivenString":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 671
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_5

    .line 674
    :cond_d
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->mainTimeDriven:Ljava/lang/String;

    .line 677
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a7

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 678
    .local v17, "hundredThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x0

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801aa

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 680
    .local v26, "tenThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x1

    const/16 v32, 0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801ac

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 682
    .local v28, "thousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x2

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a8

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 684
    .local v18, "hundredsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x3

    const/16 v32, 0x4

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801ab

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 686
    .local v27, "tensText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x4

    const/16 v32, 0x5

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a9

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 688
    .local v25, "singlesText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x5

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800c4

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 691
    .local v4, "botName":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_12

    .line 692
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :goto_6
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->setBotImage(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    .line 707
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801e9

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 708
    .local v24, "singleBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080187

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 711
    .local v20, "multiBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    :goto_7
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800d2

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/HorizontalScrollView;

    .line 721
    .local v13, "disabledLayout":Landroid/widget/HorizontalScrollView;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 723
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080193

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 724
    .local v23, "noBotsLayout":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 783
    .end local v4    # "botName":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v5    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v19    # "i":I
    .end local v23    # "noBotsLayout":Landroid/widget/LinearLayout;
    .end local v29    # "timeDriven":I
    .end local v30    # "timeDrivenString":Ljava/lang/String;
    :cond_e
    :goto_8
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v10

    .line 784
    .local v10, "connectedCircuits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_19

    .line 785
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 786
    .restart local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 788
    .restart local v5    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v6

    .line 790
    .restart local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_19

    .line 792
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->sleepOff()V

    .line 793
    const/16 v16, 0x0

    .line 795
    .restart local v16    # "foundbot":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_f
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 796
    .restart local v3    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 798
    const/16 v16, 0x1

    .line 799
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotIcon()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 804
    .end local v3    # "bot":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_10
    if-nez v16, :cond_11

    .line 806
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    const-string v32, "Blue"

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 807
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 808
    const-string v31, "Blue"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 809
    const/high16 v31, 0x45fa0000    # 8000.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnSoft360(F)V

    .line 810
    const/high16 v31, 0x45fa0000    # 8000.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnSoft360(F)V

    .line 811
    const v31, 0x45866000    # 4300.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnHard360(F)V

    .line 812
    const v31, 0x45866000    # 4300.0f

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnHard360(F)V

    .line 813
    const-string v31, "Right"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTurningDirection(Ljava/lang/String;)V

    .line 814
    const-string v31, "Right"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseTurningDirection(Ljava/lang/String;)V

    .line 815
    const/16 v31, 0xf

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseConfiguration(I)V

    .line 816
    const/16 v31, 0x46

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setStraightConfiguration(I)V

    .line 817
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedStraight(I)V

    .line 818
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedReverse(I)V

    .line 819
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinLeft(I)V

    .line 820
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinRight(I)V

    .line 821
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnLeft(I)V

    .line 822
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnRight(I)V

    .line 824
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 825
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 826
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 832
    .end local v21    # "name":Ljava/lang/String;
    :goto_a
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 790
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 694
    .end local v10    # "connectedCircuits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v13    # "disabledLayout":Landroid/widget/HorizontalScrollView;
    .end local v16    # "foundbot":Z
    .end local v20    # "multiBotDash":Landroid/widget/LinearLayout;
    .end local v24    # "singleBotDash":Landroid/widget/LinearLayout;
    .restart local v4    # "botName":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v29    # "timeDriven":I
    .restart local v30    # "timeDrivenString":Ljava/lang/String;
    :cond_12
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_14

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->SC_CONTROLLER_NAME:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->CIRCUIT_NAME:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 695
    :cond_13
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 696
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 699
    .end local v21    # "name":Ljava/lang/String;
    :cond_14
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 713
    :cond_15
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801e9

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 714
    .restart local v24    # "singleBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080187

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 717
    .restart local v20    # "multiBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 733
    .end local v4    # "botName":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v5    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v17    # "hundredThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v18    # "hundredsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v19    # "i":I
    .end local v20    # "multiBotDash":Landroid/widget/LinearLayout;
    .end local v24    # "singleBotDash":Landroid/widget/LinearLayout;
    .end local v25    # "singlesText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v26    # "tenThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v27    # "tensText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v28    # "thousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v29    # "timeDriven":I
    .end local v30    # "timeDrivenString":Ljava/lang/String;
    :cond_16
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800c4

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 734
    .local v4, "botName":Landroid/widget/TextView;
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800c3

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 737
    .local v11, "dashboardBotFrame":Landroid/widget/ImageView;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 739
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800c5

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 740
    .local v12, "dashboardCalibrate":Landroid/widget/ImageView;
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 742
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a7

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 743
    .restart local v17    # "hundredThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801aa

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 745
    .restart local v26    # "tenThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801ac

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 747
    .restart local v28    # "thousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a8

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 749
    .restart local v18    # "hundredsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801ab

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 751
    .restart local v27    # "tensText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801a9

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 753
    .restart local v25    # "singlesText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v31, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0801e9

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 756
    .restart local v24    # "singleBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 758
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080187

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 759
    .restart local v20    # "multiBotDash":Landroid/widget/LinearLayout;
    const/16 v31, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 761
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800d2

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/HorizontalScrollView;

    .line 762
    .restart local v13    # "disabledLayout":Landroid/widget/HorizontalScrollView;
    const/16 v31, 0x8

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 764
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_17

    .line 765
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080080

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    if-nez v31, :cond_e

    .line 766
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/MainScreen;->setCircuits()V

    goto/16 :goto_8

    .line 770
    :cond_17
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080193

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 771
    .restart local v23    # "noBotsLayout":Landroid/widget/LinearLayout;
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080191

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    .line 774
    .local v22, "noBotsConnectButton":Landroid/widget/ImageButton;
    new-instance v31, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$14;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$14;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 828
    .end local v4    # "botName":Landroid/widget/TextView;
    .end local v11    # "dashboardBotFrame":Landroid/widget/ImageView;
    .end local v12    # "dashboardCalibrate":Landroid/widget/ImageView;
    .end local v22    # "noBotsConnectButton":Landroid/widget/ImageButton;
    .end local v23    # "noBotsLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .restart local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .restart local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .restart local v10    # "connectedCircuits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v16    # "foundbot":Z
    .restart local v19    # "i":I
    :cond_18
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 839
    .end local v5    # "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .end local v6    # "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    .end local v7    # "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    .end local v16    # "foundbot":Z
    .end local v19    # "i":I
    :cond_19
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f080080

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 840
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/MainScreen;->setCircuits()V

    .line 845
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    const v32, 0x7f0800b8

    invoke-virtual/range {v31 .. v32}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 847
    new-instance v8, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$15;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$15;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    .line 853
    .local v8, "clearDiscoveredBotsBay":Ljava/lang/Runnable;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 856
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v31

    if-eqz v31, :cond_1a

    .line 857
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->stopScan()V

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->stopTextHandler()V

    .line 861
    :cond_1a
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->driveButtonPressed:Z

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->stopRepeatingTask()V

    .line 864
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setDiscoveryFragment(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    .line 76
    const v2, 0x7f0a0032

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    .line 77
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f08024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    .line 78
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f080198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f080192

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    .line 80
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f080218

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/AutoResizeTextView;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 81
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/AutoResizeTextView;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 83
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->cancelBotButton:Landroid/widget/ImageButton;

    .line 84
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->cancelBotButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    .local v0, "codeConnectionButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 105
    .local v1, "hamburgerMenu":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$3;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$3;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/elenco/snapcoder/AutoResizeTextView;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 113
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v3, 0x7f0801d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    .line 114
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V

    iput-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textRunnable:Ljava/lang/Runnable;

    .line 188
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public setBotImage(Ljava/lang/String;)V
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0700b4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 868
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 869
    .local v0, "botFrame":Landroid/widget/ImageView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 871
    .local v1, "calibrate":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 873
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 875
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 889
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    :goto_1
    return-void

    .line 875
    :sswitch_0
    const-string v3, "Red"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Blue"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Green"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Yellow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 877
    :pswitch_0
    const v2, 0x7f0700f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 880
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 883
    :pswitch_2
    const v2, 0x7f0700de

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 886
    :pswitch_3
    const v2, 0x7f070115

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 875
    nop

    :sswitch_data_0
    .sparse-switch
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_0
        0x1fa47a -> :sswitch_1
        0x41ddee3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startRepeatingTask()V
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->alreadyStarted:Z

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->alreadyStarted:Z

    .line 971
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 973
    :cond_0
    return-void
.end method

.method stopRepeatingTask()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 977
    return-void
.end method

.method public stopTextHandler()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    return-void
.end method
