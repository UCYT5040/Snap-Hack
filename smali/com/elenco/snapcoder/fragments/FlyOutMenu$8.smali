.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;
.super Ljava/util/TimerTask;
.source "FlyOutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu;->OpenMyBotsMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
