.class Lcom/elenco/snapcoder/BotCode/bot_edit_command$6;
.super Ljava/lang/Object;
.source "bot_edit_command.java"

# interfaces
.implements Lcom/elenco/snapcoder/fragments/NumberPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_edit_command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$6;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonPressed(Ljava/lang/String;)V
    .locals 3
    .param p1, "userEnteredString"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$6;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 556
    .local v0, "durationButton":Landroid/widget/Button;
    const-string v1, ""

    if-eq p1, v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 557
    const-string p1, "100"

    .line 558
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getNumberPickerFragment()Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->setUserEnteredString(Ljava/lang/String;)V

    .line 561
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method
