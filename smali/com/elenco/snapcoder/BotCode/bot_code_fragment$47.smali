.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;
.super Landroid/animation/AnimatorListenerAdapter;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->openFlyout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 2699
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsOpen:Z

    .line 2700
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2701
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 2702
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$47;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->botCodeFlyoutMenuIsMoving:Z

    .line 2703
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2704
    return-void
.end method
