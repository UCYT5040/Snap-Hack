.class Lcom/elenco/snapcoder/BotCode/loop_input$3;
.super Ljava/lang/Object;
.source "loop_input.java"

# interfaces
.implements Lcom/elenco/snapcoder/fragments/NumberPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/loop_input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/loop_input;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/loop_input;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/loop_input;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$3;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonPressed(Ljava/lang/String;)V
    .locals 3
    .param p1, "userEnteredString"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$3;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/loop_input;->view:Landroid/view/View;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, "durationButton":Landroid/widget/Button;
    const-string v1, ""

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 87
    const-string p1, "100"

    .line 88
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getNumberPickerFragment()Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->setUserEnteredString(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
