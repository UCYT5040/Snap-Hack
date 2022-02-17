.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$discoveredBotTable:Landroid/widget/TableLayout;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;ILandroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$finalI:I

    iput-object p3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$discoveredBotTable:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 313
    const-string v5, "MYTAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CRASHING!  finalI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$finalI:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v5, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$finalI:I

    if-lt v5, v9, :cond_0

    .line 315
    iget-object v5, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$discoveredBotTable:Landroid/widget/TableLayout;

    iget v6, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$finalI:I

    invoke-virtual {v5, v6, v9}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 317
    iget-object v5, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$4;->val$discoveredBotTable:Landroid/widget/TableLayout;

    invoke-virtual {v5}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 319
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f08024d

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 320
    .local v4, "welcomeLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f080198

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .local v2, "normalLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f080192

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 322
    .local v1, "noBotsHolder":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f080218

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 323
    .local v3, "statusText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f08010b

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 325
    .local v0, "hintText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 328
    const-string v5, "NO SC CONTROLLER(S) FOUND..."

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const-string v5, "Make sure your SC Controller(s) is turned on and has working batteries."

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v3, v8}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 333
    .end local v0    # "hintText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v1    # "noBotsHolder":Landroid/widget/FrameLayout;
    .end local v2    # "normalLayout":Landroid/widget/LinearLayout;
    .end local v3    # "statusText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v4    # "welcomeLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method
