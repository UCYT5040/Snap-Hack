.class Lcom/elenco/snapcoder/BotCode/loop_input$2;
.super Ljava/lang/Object;
.source "loop_input.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/loop_input;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

.field final synthetic val$durationButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/loop_input;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/loop_input;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->val$durationButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->val$durationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->val$durationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->val$durationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedTextViewForChange()Lcom/elenco/snapcoder/AutoResizeTextView;

    move-result-object v0

    .line 47
    .local v0, "textViewToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->val$durationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Iterations"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    .end local v0    # "textViewToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_0
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$2;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-static {v1}, Lcom/elenco/snapcoder/BotCode/loop_input;->access$000(Lcom/elenco/snapcoder/BotCode/loop_input;)V

    .line 57
    return-void
.end method
