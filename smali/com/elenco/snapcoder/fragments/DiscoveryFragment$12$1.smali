.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 527
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$noLocationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$driveConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$codeConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$discoveredTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBluetooth()Z

    .line 538
    return-void
.end method
