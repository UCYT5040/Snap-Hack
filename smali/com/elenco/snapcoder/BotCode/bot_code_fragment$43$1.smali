.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f080149

    .line 2045
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;

    iget-boolean v1, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->val$needDot:Z

    if-nez v1, :cond_0

    .line 2049
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2050
    .local v0, "inputText":Landroid/widget/TextView;
    const-string v1, "Iterations"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    :goto_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getLoopEdit()Lcom/elenco/snapcoder/BotCode/loop_input;

    move-result-object v1

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->val$duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    return-void

    .line 2055
    .end local v0    # "inputText":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2056
    .restart local v0    # "inputText":Landroid/widget/TextView;
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
