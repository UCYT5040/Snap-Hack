.class Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;
.super Ljava/lang/Object;
.source "BotCodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;

.field final synthetic val$botsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;->this$0:Lcom/elenco/snapcoder/BotCode/BotCodeManager$5;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;->val$botsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 740
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$5$1;->val$botsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getTimeDriven()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x4002666666666666L    # 2.3

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/MainScreen;->displayOdometer(Ljava/lang/String;)V

    .line 741
    return-void
.end method
