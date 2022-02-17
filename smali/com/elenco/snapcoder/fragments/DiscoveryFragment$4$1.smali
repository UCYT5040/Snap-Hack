.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-boolean v0, v0, Lcom/elenco/snapcoder/MainScreen;->discoveryScreenOpen:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/elenco/snapcoder/BluetoothManager;->getBluetoothHelper()Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/bluetooth/BluetoothHelper;->stopScan()V

    .line 133
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->isScanning:Z

    .line 134
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "START SCAN TO FIND SC CONTROLLER(S)"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4$1;->this$1:Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->stopTextHandler()V

    .line 139
    :cond_0
    return-void
.end method
