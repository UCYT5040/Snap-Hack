.class final Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;
.super Ljava/util/TimerTask;
.source "BotCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager;->clearCommandListHighlights(Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uiCommandList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$4$1;-><init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$4;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method
