.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;
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

.field final synthetic val$codeConnectionButton:Landroid/widget/ImageButton;

.field final synthetic val$discoveredTable:Landroid/widget/TableLayout;

.field final synthetic val$driveConnectionButton:Landroid/widget/ImageButton;

.field final synthetic val$noLocationLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$noLocationLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$driveConnectionButton:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$codeConnectionButton:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;->val$discoveredTable:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 519
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "myIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/elenco/snapcoder/MainScreen;->startActivity(Landroid/content/Intent;)V

    .line 522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 523
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12$1;-><init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment$12;)V

    .line 541
    .local v2, "resetLocation":Ljava/lang/Runnable;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    return-void
.end method
