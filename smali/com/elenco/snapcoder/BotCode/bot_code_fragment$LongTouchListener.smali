.class public Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LongTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v6, 0x7f0800b0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1340
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 1341
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v1, v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    .line 1342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1343
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;

    invoke-direct {v3, p0, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;Landroid/view/View;)V

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->longClickDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1379
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 1382
    :goto_1
    return v1

    .line 1371
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1372
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-boolean v2, v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    .line 1373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1382
    goto :goto_1
.end method
