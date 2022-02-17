.class Lcom/elenco/snapcoder/MainScreen$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->closeMenus(Landroid/view/View;)V
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
    .line 600
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    .line 604
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 606
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    .line 607
    invoke-static {}, Lcom/elenco/snapcoder/MainScreen;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flyOutMenu finished Closing. flyOutMenuOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen$17;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-boolean v2, v2, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method
