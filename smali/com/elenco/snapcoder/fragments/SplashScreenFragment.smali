.class public Lcom/elenco/snapcoder/fragments/SplashScreenFragment;
.super Landroid/app/Fragment;
.source "SplashScreenFragment.java"


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public closeBotscreen()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/SplashScreenFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x453b8000    # 3000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f0a003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/elenco/snapcoder/fragments/SplashScreenFragment;->view:Landroid/view/View;

    .line 26
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 27
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/fragments/SplashScreenFragment$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/SplashScreenFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/SplashScreenFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 33
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/SplashScreenFragment;->view:Landroid/view/View;

    return-object v1
.end method
