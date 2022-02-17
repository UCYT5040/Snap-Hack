.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private observer:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field final synthetic val$verticalScrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/ScrollView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$verticalScrollView:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$verticalScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    .line 326
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    .line 337
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 338
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->scrollViewMoved:Z

    .line 339
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    .line 342
    :cond_2
    return v2

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 330
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$verticalScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    .line 331
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$11;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method
