.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;->val$finalI:I

    iput-object p3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/ConnectedBay;

    .line 293
    .local v0, "connectedBotsBay":Lcom/elenco/snapcoder/ConnectedBay;
    iget v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;->val$finalI:I

    iget-object v2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$3;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/ConnectedBay;->removeBot(ILjava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/MainScreen;->setCircuits()V

    .line 297
    :cond_0
    return-void
.end method
