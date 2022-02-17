.class Lcom/elenco/snapcoder/MainScreen$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->closeMenuBotCode()V
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
    .line 614
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$18;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$18;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    .line 618
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$18;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$18;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 620
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$18;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    .line 621
    return-void
.end method
