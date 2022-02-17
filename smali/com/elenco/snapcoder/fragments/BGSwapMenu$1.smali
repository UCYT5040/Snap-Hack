.class Lcom/elenco/snapcoder/fragments/BGSwapMenu$1;
.super Ljava/lang/Object;
.source "BGSwapMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BGSwapMenu;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BGSwapMenu;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BGSwapMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu$1;->this$0:Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->openBGSwap()V

    .line 94
    return-void
.end method
