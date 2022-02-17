.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$6;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$6;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->resetDashboard()V

    .line 368
    return-void
.end method
