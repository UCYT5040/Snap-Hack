.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const-string v1, "tutorial"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeAll(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$11;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->closeMenus(Landroid/view/View;)V

    .line 204
    return-void
.end method
