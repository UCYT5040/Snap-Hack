.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkLocation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

.field final synthetic val$noLocationButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;->val$noLocationButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "LOCATION IS REQUIRED TO CONTROL A SC CONTROLLER"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "Would you like to enable Location?"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;->val$noLocationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    return-void
.end method
