.class Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$900(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;-><init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 494
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 495
    return-void
.end method
