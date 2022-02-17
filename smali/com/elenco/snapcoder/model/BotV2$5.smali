.class Lcom/elenco/snapcoder/model/BotV2$5;
.super Ljava/lang/Object;
.source "BotV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/model/BotV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/model/BotV2;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/model/BotV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/model/BotV2;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 326
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$000(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$100(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/model/BotV2;->stopPulse:Z

    if-nez v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    iget-object v0, v0, Lcom/elenco/snapcoder/model/BotV2;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    iget-object v1, v1, Lcom/elenco/snapcoder/model/BotV2;->turnOff:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :goto_1
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$100(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$5;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/model/BotV2;->doOnce:Z

    goto :goto_1
.end method
