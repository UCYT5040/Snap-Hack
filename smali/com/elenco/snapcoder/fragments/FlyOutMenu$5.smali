.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$5;
.super Ljava/lang/Object;
.source "FlyOutMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$5;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$5;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    new-instance v1, Landroid/view/View;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBlockly(Landroid/view/View;)V

    .line 82
    return-void
.end method
