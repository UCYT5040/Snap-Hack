.class Lcom/elenco/snapcoder/ComicViewActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitchAll()V
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
    .line 444
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$8;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iput-object p2, p0, Lcom/elenco/snapcoder/ComicViewActivity$8;->val$uiItem:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$8;->val$uiItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    return-void
.end method
