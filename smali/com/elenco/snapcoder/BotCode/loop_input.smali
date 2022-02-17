.class public Lcom/elenco/snapcoder/BotCode/loop_input;
.super Landroid/support/v4/app/Fragment;
.source "loop_input.java"


# instance fields
.field pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/elenco/snapcoder/BotCode/loop_input$3;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/BotCode/loop_input$3;-><init>(Lcom/elenco/snapcoder/BotCode/loop_input;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/BotCode/loop_input;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/loop_input;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/loop_input;->closeMe()V

    return-void
.end method

.method private closeMe()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/loop_input;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/loop_input;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "loopEditCommand"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 68
    .local v1, "loopEditFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setLoopEdit(Lcom/elenco/snapcoder/BotCode/loop_input;)V

    .line 29
    const v3, 0x7f0a0038

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    .line 31
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    const v4, 0x7f08008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 32
    .local v0, "closeButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/loop_input$1;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/BotCode/loop_input$1;-><init>(Lcom/elenco/snapcoder/BotCode/loop_input;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    const v4, 0x7f080066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 40
    .local v2, "durationButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 41
    .local v1, "confirmButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/loop_input$2;

    invoke-direct {v3, p0, v2}, Lcom/elenco/snapcoder/BotCode/loop_input$2;-><init>(Lcom/elenco/snapcoder/BotCode/loop_input;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getNumberPickerFragment()Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    invoke-virtual {v3, v4}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->setNumberPickerCallback(Lcom/elenco/snapcoder/fragments/NumberPickerCallback;)V

    .line 62
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    return-object v3
.end method
