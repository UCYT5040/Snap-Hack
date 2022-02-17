.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;
.super Ljava/util/TimerTask;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method
