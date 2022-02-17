.class Lcom/elenco/snapcoder/ComicViewActivity$5;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ComicViewActivity;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    const-string v0, "comic_info"

    const-string v1, "Clicked on tutFrame!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$5;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$5$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$5$1;-><init>(Lcom/elenco/snapcoder/ComicViewActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 335
    return-void
.end method
