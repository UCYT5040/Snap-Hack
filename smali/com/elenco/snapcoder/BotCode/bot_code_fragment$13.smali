.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$reassignLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->val$reassignLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->reassignBots()V

    .line 383
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->val$reassignLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 386
    .local v0, "exTimer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 397
    return-void
.end method
