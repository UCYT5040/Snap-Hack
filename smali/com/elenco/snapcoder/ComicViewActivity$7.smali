.class Lcom/elenco/snapcoder/ComicViewActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitch(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ComicViewActivity;

.field final synthetic val$uiItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$7;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iput-object p2, p0, Lcom/elenco/snapcoder/ComicViewActivity$7;->val$uiItem:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$7;->val$uiItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$7;->val$uiItem:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 425
    const-string v0, "comic_info"

    const-string v1, "uiSwitch(): I AM DONE FADING IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 427
    return-void
.end method
