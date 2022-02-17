.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;
.super Ljava/util/TimerTask;
.source "FlyOutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBotCODE(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
