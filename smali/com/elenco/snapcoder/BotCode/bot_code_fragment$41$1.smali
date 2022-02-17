.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1994
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getBotEditCommand()Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    move-result-object v1

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->val$duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getBotEditCommand()Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    iget v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->val$commandId:I

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    iget v3, v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->val$position:I

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->val$speedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->DisplayInformation(IILandroid/widget/ImageView;)V

    .line 1997
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;

    iget-boolean v1, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$41;->val$needInfinite:Z

    if-eqz v1, :cond_0

    .line 1998
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f080145

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1999
    .local v0, "infinite":Landroid/widget/ImageButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2001
    .end local v0    # "infinite":Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method
