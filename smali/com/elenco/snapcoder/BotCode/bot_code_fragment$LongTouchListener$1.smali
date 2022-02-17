.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0800b0

    const/4 v6, 0x1

    .line 1346
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->scrollViewMoved:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 1347
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1348
    .local v2, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    const v5, 0x7f080099

    if-ne v4, v5, :cond_1

    .line 1349
    sput-boolean v6, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->dontModify:Z

    .line 1353
    :goto_0
    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1355
    .local v0, "data":Landroid/content/ClipData;
    new-instance v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1357
    .local v3, "shadowBuilder":Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    invoke-virtual {v4, v0, v3, v5, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1358
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    sput-object v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    .line 1369
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v2    # "parent":Landroid/widget/LinearLayout;
    .end local v3    # "shadowBuilder":Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;
    :cond_0
    :goto_1
    return-void

    .line 1351
    .restart local v2    # "parent":Landroid/widget/LinearLayout;
    :cond_1
    sput-boolean v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->dontModify:Z

    goto :goto_0

    .line 1359
    .end local v2    # "parent":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0801cc

    if-ne v4, v5, :cond_3

    .line 1360
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->openEditRoutine(Landroid/view/View;)V

    goto :goto_1

    .line 1361
    :cond_3
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1362
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1363
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 1364
    :cond_4
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;

    iget-object v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-boolean v4, v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->isLongPress:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1365
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1366
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/elenco/snapcoder/MainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1367
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_1
.end method
