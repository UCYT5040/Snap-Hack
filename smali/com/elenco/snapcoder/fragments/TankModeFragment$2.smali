.class Lcom/elenco/snapcoder/fragments/TankModeFragment$2;
.super Ljava/lang/Object;
.source "TankModeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/TankModeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/TankModeFragment;

.field final synthetic val$moveBackwardLeftContainer:Landroid/widget/FrameLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/TankModeFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/TankModeFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->this$0:Lcom/elenco/snapcoder/fragments/TankModeFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$moveBackwardLeftContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 53
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$moveBackwardLeftContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-static {v3, v4, v5}, Lcom/elenco/snapcoder/BotManager;->toggleLeftNegative(ZZLcom/elenco/snapcoder/model/Bot;)V

    .line 65
    :cond_0
    :goto_0
    return v4

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$moveBackwardLeftContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-static {v4, v3, v5}, Lcom/elenco/snapcoder/BotManager;->toggleLeftNegative(ZZLcom/elenco/snapcoder/model/Bot;)V

    .line 63
    invoke-static {v3, v3, v5}, Lcom/elenco/snapcoder/BotManager;->toggleLeftPositive(ZZLcom/elenco/snapcoder/model/Bot;)V

    goto :goto_0
.end method
