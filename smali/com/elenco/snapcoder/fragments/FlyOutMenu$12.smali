.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;
.super Ljava/util/TimerTask;
.source "FlyOutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeBotCode()V
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
    .line 291
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 294
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 295
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODE"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 296
    .local v0, "botCode":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 300
    :cond_0
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODEView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 302
    .local v3, "ft3":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "botCODEView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 305
    .end local v3    # "ft3":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 306
    .local v2, "ft2":Landroid/support/v4/app/FragmentTransaction;
    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "tronView"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 307
    .local v4, "tronView":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_2

    .line 308
    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 310
    :cond_2
    return-void
.end method
