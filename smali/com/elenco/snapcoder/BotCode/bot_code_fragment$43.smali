.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;
.super Ljava/util/TimerTask;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenLoopEdit(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$duration:Ljava/lang/String;

.field final synthetic val$needDot:Z


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->val$needDot:Z

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;->val$duration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2041
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$43;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2062
    return-void
.end method
