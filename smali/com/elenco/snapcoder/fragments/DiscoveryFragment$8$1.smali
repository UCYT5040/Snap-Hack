.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 343
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$noBluetoothLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->noBotsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$driveConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$codeConnectionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$discoveredTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBluetooth()Z

    .line 352
    return-void
.end method
