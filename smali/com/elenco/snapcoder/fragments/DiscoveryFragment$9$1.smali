.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBotCODE(Landroid/view/View;)V

    .line 370
    return-void
.end method
