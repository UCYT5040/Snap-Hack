.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;
.super Ljava/lang/Object;
.source "FlyOutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreen()V

    .line 147
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    const-string v1, "MyBots"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$8;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenus(Landroid/view/View;)V

    .line 149
    return-void
.end method
