.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;
.super Ljava/util/TimerTask;
.source "FlyOutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBlockly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

.field final synthetic val$blocklyFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$ft:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$blocklyFragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method
