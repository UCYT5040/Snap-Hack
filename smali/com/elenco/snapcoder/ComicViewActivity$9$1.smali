.class Lcom/elenco/snapcoder/ComicViewActivity$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/ComicViewActivity$9;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$9$1;->this$1:Lcom/elenco/snapcoder/ComicViewActivity$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity$9;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iget-object v0, v0, Lcom/elenco/snapcoder/ComicViewActivity;->myTimer:Landroid/os/Handler;

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$9$1$1;-><init>(Lcom/elenco/snapcoder/ComicViewActivity$9$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 501
    return-void
.end method
