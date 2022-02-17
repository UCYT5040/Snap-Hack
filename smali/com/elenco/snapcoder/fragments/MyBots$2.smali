.class Lcom/elenco/snapcoder/fragments/MyBots$2;
.super Ljava/lang/Object;
.source "MyBots.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/MyBots;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/MyBots;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/MyBots;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/MyBots;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/MyBots$2;->this$0:Lcom/elenco/snapcoder/fragments/MyBots;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-result-object v0

    const-string v1, "Drive"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeMenus(Landroid/view/View;)V

    .line 72
    return-void
.end method
