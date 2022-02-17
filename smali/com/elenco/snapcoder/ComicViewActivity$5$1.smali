.class Lcom/elenco/snapcoder/ComicViewActivity$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/ComicViewActivity$5;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$5$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$5$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$500(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$5$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$600(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$5$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    sput-boolean v2, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    .line 331
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$5$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$800(Lcom/elenco/snapcoder/ComicViewActivity;)V

    .line 332
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 333
    return-void
.end method
