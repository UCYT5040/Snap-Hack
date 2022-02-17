.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

.field final synthetic val$codeConnectionButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;->val$codeConnectionButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;->val$codeConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$2;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBotCODE(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method
