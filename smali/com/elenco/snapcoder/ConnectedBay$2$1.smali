.class Lcom/elenco/snapcoder/ConnectedBay$2$1;
.super Ljava/lang/Object;
.source "ConnectedBay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ConnectedBay$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/ConnectedBay$2;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ConnectedBay$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/ConnectedBay$2;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    invoke-static {v0}, Lcom/elenco/snapcoder/ConnectedBay;->access$000(Lcom/elenco/snapcoder/ConnectedBay;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v1, v1, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 207
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v1, v1, Lcom/elenco/snapcoder/ConnectedBay$2;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 210
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/ConnectedBay;->displayOdometer(Z)V

    .line 214
    :cond_0
    :goto_0
    const-string v0, "MYTAG"

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v1, v1, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalColor:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    iget-object v1, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v1, v1, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalName:Ljava/lang/String;

    iget-object v2, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v2, v2, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v3, v3, Lcom/elenco/snapcoder/ConnectedBay$2;->val$finalBotRowView:Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v4, v4, Lcom/elenco/snapcoder/ConnectedBay$2;->val$bot:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/elenco/snapcoder/ConnectedBay;->moveIcon(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;)V

    .line 219
    :cond_1
    return-void

    .line 211
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getEnabledBots()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/elenco/snapcoder/ConnectedBay$2$1;->this$1:Lcom/elenco/snapcoder/ConnectedBay$2;

    iget-object v0, v0, Lcom/elenco/snapcoder/ConnectedBay$2;->this$0:Lcom/elenco/snapcoder/ConnectedBay;

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/ConnectedBay;->displayOdometer(Z)V

    goto :goto_0
.end method
