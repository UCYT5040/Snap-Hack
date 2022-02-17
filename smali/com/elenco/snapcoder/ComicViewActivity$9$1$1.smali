.class Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity$9$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$900(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;-><init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 497
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$800(Lcom/elenco/snapcoder/ComicViewActivity;)V

    .line 498
    :cond_0
    return-void
.end method
