.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 420
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->val$noBluetoothLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->val$driveConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->val$codeConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->val$discoveredTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$10;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBluetooth()Z

    .line 429
    return-void
.end method
