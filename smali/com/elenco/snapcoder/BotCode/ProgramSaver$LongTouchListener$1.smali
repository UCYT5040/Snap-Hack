.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;
.super Ljava/lang/Object;
.source "ProgramSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-boolean v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->isLongPress:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-boolean v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->scrollViewMoved:Z

    if-nez v2, :cond_1

    .line 163
    const/4 v2, 0x1

    sput-boolean v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->dontModify:Z

    .line 165
    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 167
    .local v0, "data":Landroid/content/ClipData;
    new-instance v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 169
    .local v1, "shadowBuilder":Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    iget-object v3, v3, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-object v3, v3, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->view:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 170
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getbot_code_fragment()Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    sput-object v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    .line 174
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "shadowBuilder":Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget-boolean v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->isLongPress:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0801cc

    if-ne v2, v3, :cond_0

    .line 172
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getbot_code_fragment()Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->openEditRoutine(Landroid/view/View;)V

    goto :goto_0
.end method
