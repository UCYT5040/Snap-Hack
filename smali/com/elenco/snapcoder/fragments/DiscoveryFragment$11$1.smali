.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$11;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBotCODE(Landroid/view/View;)V

    .line 447
    return-void
.end method
