.class Lcom/elenco/snapcoder/model/BotV2$4;
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
    .line 302
    iput-object p1, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$000(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$100(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideOn(Z)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    iget-object v0, v0, Lcom/elenco/snapcoder/model/BotV2;->handler2:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    iget-object v1, v1, Lcom/elenco/snapcoder/model/BotV2;->turnOn:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v2}, Lcom/elenco/snapcoder/model/BotV2;->access$200(Lcom/elenco/snapcoder/model/BotV2;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideOn(Z)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-static {v0}, Lcom/elenco/snapcoder/model/BotV2;->access$100(Lcom/elenco/snapcoder/model/BotV2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->leftSideReverse(Z)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$4;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/model/BotV2;->rightSideReverse(Z)V

    goto :goto_0
.end method
