.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;
.super Ljava/util/TimerTask;
.source "FlyOutMenuLandscape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeBotCode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

.field final synthetic val$toControlScreen:Z


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    iput-boolean p2, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->val$toControlScreen:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 286
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 287
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODE"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 288
    .local v0, "botCode":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 292
    :cond_0
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODEView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 293
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 294
    .local v3, "ft3":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODEView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 297
    .end local v3    # "ft3":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 298
    .local v2, "ft2":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "tronView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 299
    .local v4, "tronView":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_2

    .line 300
    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 303
    :cond_2
    iget-boolean v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->val$toControlScreen:Z

    if-eqz v5, :cond_3

    .line 304
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    new-instance v6, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13$1;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;)V

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 311
    :cond_3
    return-void
.end method
