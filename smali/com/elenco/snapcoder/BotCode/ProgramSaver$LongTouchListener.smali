.class public Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;
.super Ljava/lang/Object;
.source "ProgramSaver.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LongTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iput-boolean v4, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->isLongPress:Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 159
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener$1;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;Landroid/view/View;)V

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iget v2, v2, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->longClickDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return v4

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 177
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$LongTouchListener;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->isLongPress:Z

    goto :goto_0
.end method
