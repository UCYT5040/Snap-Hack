.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;
.super Ljava/util/TimerTask;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->OpenBotSelection(IILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$commandId:I

.field final synthetic val$position:I

.field final synthetic val$speedImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;IILandroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$commandId:I

    iput p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$position:I

    iput-object p4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$speedImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2019
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2025
    return-void
.end method
