.class final Lcom/elenco/snapcoder/BotManager$1;
.super Ljava/lang/Object;
.source "BotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 199
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->stop()V

    .line 200
    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->saveOdometer(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    iget-object v2, v1, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_2
    return-void

    .line 203
    :sswitch_0
    const-string v3, "Slow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "Medium"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "Fast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 205
    :pswitch_0
    const-string v1, "Slow"

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :pswitch_1
    const-string v1, "Fast"

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :pswitch_2
    const-string v1, "Fast"

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_1
        0x214c7c -> :sswitch_2
        0x275e21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
