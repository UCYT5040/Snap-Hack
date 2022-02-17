.class Lcom/elenco/snapcoder/MainScreen$19;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->resetDashboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/MainScreen;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/MainScreen;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$19;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 783
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/MainScreen;->openDiscoveryFragment(Landroid/view/View;)V

    .line 784
    return-void
.end method
