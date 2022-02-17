.class public Lcom/elenco/snapcoder/BatteryChecker;
.super Ljava/lang/Object;
.source "BatteryChecker.java"


# instance fields
.field public battList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dropped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/BatteryChecker;->dropped:Z

    return-void
.end method


# virtual methods
.method public checkDrops(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "dropCount":I
    iget-object v2, p0, Lcom/elenco/snapcoder/BatteryChecker;->battList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "batt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "batt":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public createList()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BatteryChecker;->battList:Ljava/util/List;

    .line 19
    return-void
.end method

.method public insertBatteryDrop(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 22
    move-object v1, p1

    .line 23
    .local v1, "newDrop":Ljava/lang/String;
    iget-object v2, p0, Lcom/elenco/snapcoder/BatteryChecker;->battList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 26
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/elenco/snapcoder/BatteryChecker$1;

    invoke-direct {v2, p0, v1}, Lcom/elenco/snapcoder/BatteryChecker$1;-><init>(Lcom/elenco/snapcoder/BatteryChecker;Ljava/lang/String;)V

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method
