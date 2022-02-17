.class Lcom/elenco/snapcoder/ConnectedBay$1;
.super Ljava/lang/Object;
.source "ConnectedBay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ConnectedBay;->createBotIcon(Lcom/elenco/snapcoder/model/Bot;)Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ConnectedBay;

.field final synthetic val$bot:Lcom/elenco/snapcoder/model/Bot;

.field final synthetic val$finalBotRowView:Landroid/view/View;

.field final synthetic val$finalColor:Ljava/lang/String;

.field final synthetic val$finalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ConnectedBay;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ConnectedBay;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    iput-object p2, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalBotRowView:Landroid/view/View;

    iput-object p3, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    iput-object p4, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalName:Ljava/lang/String;

    iput-object p5, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 95
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalBotRowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 97
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    invoke-static {v0}, Lcom/elenco/snapcoder/ConnectedBay;->access$000(Lcom/elenco/snapcoder/ConnectedBay;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalBotRowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 98
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$finalBotRowView:Landroid/view/View;

    iget-object v4, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/elenco/snapcoder/ConnectedBay;->moveIcon(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;)V

    .line 103
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 104
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/ConnectedBay;->displayOdometer(Z)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$1;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    invoke-virtual {v0, v5}, Lcom/elenco/snapcoder/ConnectedBay;->displayOdometer(Z)V

    goto :goto_0
.end method
