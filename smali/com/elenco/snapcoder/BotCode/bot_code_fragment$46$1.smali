.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2149
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2150
    .local v0, "editRoutineContainer":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2152
    .local v1, "nameInput":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;->val$routineName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$46;->val$routineName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/elenco/snapcoder/BotCode/EditRoutineFragment;->routineName:Ljava/lang/String;

    .line 2154
    return-void
.end method
