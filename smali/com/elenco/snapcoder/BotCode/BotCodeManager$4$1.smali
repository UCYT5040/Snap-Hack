.class Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;
.super Ljava/lang/Object;
.source "BotCodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;->this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 384
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;->this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;->val$uiCommandList:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 385
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;->this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 386
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;->this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080097

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f08021a

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 392
    .local v3, "stopProgramButton":Landroid/widget/ImageButton;
    if-eqz v3, :cond_1

    .line 393
    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 396
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 397
    .local v1, "codeViewBay":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    sput v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->commentCount:I

    .line 399
    sput v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->uniqueCount:I

    .line 400
    sget-object v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->alreadyUsedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 401
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-static {v1, v4, v7}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->turnVisible(Landroid/widget/LinearLayout;IZ)V

    .line 404
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 405
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    const-string v5, "clear"

    invoke-virtual {v0, v5, v7, v7}, Lcom/elenco/snapcoder/model/Bot;->stopMotorCircuit(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 408
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_3
    sget-boolean v4, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->keepLooping:Z

    if-eqz v4, :cond_4

    .line 409
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->RunProgram()V

    .line 413
    :goto_2
    return-void

    .line 411
    :cond_4
    sput-boolean v6, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    goto :goto_2
.end method
