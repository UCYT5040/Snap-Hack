.class Lcom/elenco/snapcoder/fragments/GamePadFragment$3;
.super Ljava/lang/Object;
.source "GamePadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/GamePadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/GamePadFragment;

.field final synthetic val$moveLeftContainer:Landroid/widget/FrameLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/GamePadFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->this$0:Lcom/elenco/snapcoder/fragments/GamePadFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$moveLeftContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 68
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$moveLeftContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 76
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$moveLeftContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->moveBotsLeft()V

    goto :goto_0
.end method
