.class Lcom/elenco/snapcoder/fragments/MyBots$1;
.super Ljava/lang/Object;
.source "MyBots.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/MyBots;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/MyBots;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/MyBots;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/MyBots;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/MyBots$1;->this$0:Lcom/elenco/snapcoder/fragments/MyBots;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/MyBots$1;->this$0:Lcom/elenco/snapcoder/fragments/MyBots;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/MyBots;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->openFlyOutMenu(Landroid/view/View;)V

    .line 62
    return-void
.end method
