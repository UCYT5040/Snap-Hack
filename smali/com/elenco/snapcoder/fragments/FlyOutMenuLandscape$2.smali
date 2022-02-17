.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    .line 51
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$2;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    new-instance v1, Landroid/view/View;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->OpenMyBotsMenu(Landroid/view/View;)V

    .line 52
    return-void
.end method
