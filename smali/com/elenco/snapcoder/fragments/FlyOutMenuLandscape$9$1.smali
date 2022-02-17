.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreen()V

    .line 153
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const-string v1, "MyBots"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeAll(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$9;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    .line 155
    return-void
.end method
