.class Lcom/elenco/snapcoder/MainScreen$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->openBGSwap()V
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
    .line 569
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$15;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 572
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 573
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$15;->this$0:Lcom/elenco/snapcoder/MainScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    .line 574
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$15;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$15;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 576
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$15;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-boolean v2, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsOpen:Z

    .line 577
    return-void
.end method
