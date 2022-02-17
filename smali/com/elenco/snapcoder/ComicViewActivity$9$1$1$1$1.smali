.class Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;->this$4:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 488
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;->this$4:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$500(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;->this$4:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$600(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1$1;->this$4:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1$1;->this$3:Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;->this$2:Lcom/elenco/snapcoder/ComicViewActivity$9$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 492
    return-void
.end method
