.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBluetooth()Z
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
    .line 282
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->view:Landroid/view/View;

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 289
    .local v0, "discoveredTable":Landroid/widget/TableLayout;
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v2, "NO SC CONTROLLER(S) FOUND..."

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v2, "Make sure your SC Controller is turned on and has working batteries."

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method
