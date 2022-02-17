.class Lcom/elenco/snapcoder/model/BotV2$3;
.super Ljava/lang/Object;
.source "BotV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/model/BotV2;->allForward()V
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
    .line 242
    iput-object p1, p0, Lcom/elenco/snapcoder/model/BotV2$3;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-object v1, v0, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_1
    return-void

    .line 244
    :sswitch_0
    const-string v2, "Slow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Fast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$3;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/BotV2;->slowSpeed()V

    goto :goto_1

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$3;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/BotV2;->mediumSpeed()V

    goto :goto_1

    .line 252
    :pswitch_2
    iget-object v0, p0, Lcom/elenco/snapcoder/model/BotV2$3;->this$0:Lcom/elenco/snapcoder/model/BotV2;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/BotV2;->fastSpeed()V

    goto :goto_1

    .line 244
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
