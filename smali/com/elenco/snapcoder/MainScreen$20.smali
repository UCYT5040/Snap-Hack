.class Lcom/elenco/snapcoder/MainScreen$20;
.super Ljava/util/TimerTask;
.source "MainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->checkIfLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/MainScreen;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/MainScreen;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$20;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 812
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/MainScreen$20$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$20$1;-><init>(Lcom/elenco/snapcoder/MainScreen$20;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method
