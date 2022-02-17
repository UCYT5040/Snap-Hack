.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$codeConnectionButton:Landroid/widget/ImageButton;

.field final synthetic val$discoveredTable:Landroid/widget/TableLayout;

.field final synthetic val$driveConnectionButton:Landroid/widget/ImageButton;

.field final synthetic val$noBluetoothLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$noBluetoothLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$driveConnectionButton:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$codeConnectionButton:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;->val$discoveredTable:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/MainScreen;->checkBluetoothPermissions()V

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 339
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$8;)V

    .line 355
    .local v1, "resetBluetooth":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method
