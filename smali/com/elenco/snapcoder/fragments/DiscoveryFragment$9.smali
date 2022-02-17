.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;
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

.field final synthetic val$bluetoothNoButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->val$bluetoothNoButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "LOCATION SERVICES NEED TO BE ACCEPTED TO CONTROL A SC CONTROLLER."

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "Would you like to accept the Location Services?"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;->val$bluetoothNoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-void
.end method
