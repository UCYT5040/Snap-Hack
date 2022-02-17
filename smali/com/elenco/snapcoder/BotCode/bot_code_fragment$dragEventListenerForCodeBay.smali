.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragEventListenerForCodeBay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p2, "x1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x1

    .line 505
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 507
    sget-boolean v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    if-eqz v1, :cond_0

    .line 508
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 511
    :cond_0
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801cc

    if-ne v1, v2, :cond_2

    .line 512
    sget-object v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    const v2, 0x7f0801cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 513
    .local v0, "programNameText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->LoadProgram(Ljava/lang/String;)V

    .line 519
    .end local v0    # "programNameText":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return v3

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForCodeBay;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-static {v1, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->access$400(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/view/View;)V

    goto :goto_0
.end method
