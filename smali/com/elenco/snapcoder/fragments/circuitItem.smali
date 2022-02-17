.class public Lcom/elenco/snapcoder/fragments/circuitItem;
.super Landroid/app/Fragment;
.source "circuitItem.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field backgroundImage:Landroid/widget/ImageView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field circuit:Lcom/elenco/snapcoder/model/Bot;

.field circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

.field d1Active:Z

.field d1Button:Landroid/widget/ImageButton;

.field d2Active:Z

.field d2Button:Landroid/widget/ImageButton;

.field d3Active:Z

.field d3Button:Landroid/widget/ImageButton;

.field d4Active:Z

.field d4Button:Landroid/widget/ImageButton;

.field leftSpeedToggle:Landroid/widget/ImageView;

.field leftToggleBottomButton:Landroid/widget/Button;

.field leftToggleTopButton:Landroid/widget/Button;

.field rightSpeedToggle:Landroid/widget/ImageView;

.field rightToggleBottomButton:Landroid/widget/Button;

.field rightToggleTopButton:Landroid/widget/Button;

.field singleCircuitActive:Z

.field singleCircuitImage:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d1Active:Z

    .line 46
    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Active:Z

    .line 47
    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d3Active:Z

    .line 48
    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Active:Z

    .line 49
    iput-boolean v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->singleCircuitActive:Z

    .line 58
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->CIRCUIT_NAME:Ljava/lang/String;

    .line 59
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->SC_CONTROLLER_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0700b3

    const v8, 0x7f07005d

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f0a002b

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    .line 66
    sget-boolean v3, Lcom/elenco/snapcoder/UIManager;->useCircuit2:Z

    if-eqz v3, :cond_3

    .line 67
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getCircuit2()Lcom/elenco/snapcoder/model/Bot;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    .line 68
    sput-boolean v4, Lcom/elenco/snapcoder/UIManager;->useCircuit2:Z

    .line 74
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->circuitAwake()V

    .line 75
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 76
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 78
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v6, 0x7f080030

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    .line 80
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v6, 0x7f08006a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->buttonLayout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v6, 0x7f080083

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, "circuitNameImage":Landroid/widget/ImageView;
    const-string v3, "MYTAG"

    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v6

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 106
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_2
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v6, 0x7f080084

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/AutoResizeTextView;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 112
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 113
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_3
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0800bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d1Button:Landroid/widget/ImageButton;

    .line 127
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d1Button:Landroid/widget/ImageButton;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$1;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$1;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0800c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Button:Landroid/widget/ImageButton;

    .line 149
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Button:Landroid/widget/ImageButton;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$2;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$2;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d3Button:Landroid/widget/ImageButton;

    .line 169
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d3Button:Landroid/widget/ImageButton;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$3;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$3;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0800c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Button:Landroid/widget/ImageButton;

    .line 190
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Button:Landroid/widget/ImageButton;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$4;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$4;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0801eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 210
    .local v2, "singleCircuitImage":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/fragments/circuitItem$5;

    invoke-direct {v3, p0, v2}, Lcom/elenco/snapcoder/fragments/circuitItem$5;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftSpeedToggle:Landroid/widget/ImageView;

    .line 229
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f080089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->rightSpeedToggle:Landroid/widget/ImageView;

    .line 231
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f08015b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftToggleTopButton:Landroid/widget/Button;

    .line 232
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftToggleTopButton:Landroid/widget/Button;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$6;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$6;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f08015a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftToggleBottomButton:Landroid/widget/Button;

    .line 242
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftToggleBottomButton:Landroid/widget/Button;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$7;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$7;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0801c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->rightToggleTopButton:Landroid/widget/Button;

    .line 252
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->rightToggleTopButton:Landroid/widget/Button;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$8;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$8;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f0801c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->rightToggleBottomButton:Landroid/widget/Button;

    .line 262
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->rightToggleBottomButton:Landroid/widget/Button;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$9;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$9;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v4, 0x7f08007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 272
    .local v0, "circuitCustomizeFrame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/elenco/snapcoder/fragments/circuitItem$10;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$10;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    new-instance v4, Lcom/elenco/snapcoder/fragments/circuitItem$11;

    invoke-direct {v4, p0}, Lcom/elenco/snapcoder/fragments/circuitItem$11;-><init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    return-object v3

    .line 69
    .end local v0    # "circuitCustomizeFrame":Landroid/widget/FrameLayout;
    .end local v1    # "circuitNameImage":Landroid/widget/ImageView;
    .end local v2    # "singleCircuitImage":Landroid/widget/ImageButton;
    :cond_3
    sget-boolean v3, Lcom/elenco/snapcoder/UIManager;->useCircuit1:Z

    if-eqz v3, :cond_0

    .line 70
    sput-boolean v4, Lcom/elenco/snapcoder/UIManager;->useCircuit1:Z

    .line 71
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getCircuit1()Lcom/elenco/snapcoder/model/Bot;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    goto/16 :goto_0

    .line 83
    .restart local v1    # "circuitNameImage":Landroid/widget/ImageView;
    :sswitch_0
    const-string v7, "Blue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "Red"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "Green"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "Yellow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    goto/16 :goto_1

    .line 86
    :pswitch_0
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 91
    :pswitch_1
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    const v6, 0x7f0700a9

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    const v3, 0x7f0700f1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 96
    :pswitch_2
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    const v6, 0x7f07008d

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const v3, 0x7f0700dd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 101
    :pswitch_3
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    const v6, 0x7f07012e

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v3, 0x7f070114

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 116
    :cond_4
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getChangedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 119
    :cond_5
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_7

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    :cond_6
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 122
    :cond_7
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuitNameView:Lcom/elenco/snapcoder/AutoResizeTextView;

    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v4}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_1
        0x1fa47a -> :sswitch_0
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
