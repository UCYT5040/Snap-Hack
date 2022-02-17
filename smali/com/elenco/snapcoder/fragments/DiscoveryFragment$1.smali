.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->cancelBotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->closeConnectScreen()V

    .line 91
    :cond_0
    return-void
.end method
