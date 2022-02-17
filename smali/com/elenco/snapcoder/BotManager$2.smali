.class final Lcom/elenco/snapcoder/BotManager$2;
.super Ljava/lang/Object;
.source "BotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 572
    :try_start_0
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->access$100()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 578
    return-void

    .line 576
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->access$200()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/elenco/snapcoder/BotManager;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    throw v0
.end method
