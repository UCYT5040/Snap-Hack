.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;
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

.field final synthetic val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field final synthetic val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Landroid/widget/HorizontalScrollView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

    .line 297
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    .line 299
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 307
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v3, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    .line 310
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 311
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->scrollViewMoved:Z

    .line 312
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v2, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isScrolling:Z

    .line 315
    :cond_2
    return v2

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 303
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    .line 304
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$10;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method
