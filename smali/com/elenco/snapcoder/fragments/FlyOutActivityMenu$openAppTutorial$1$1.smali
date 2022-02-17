.class Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1$1;
.super Ljava/lang/Object;
.source "FlyOutActivityMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1$1;->this$2:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1$1;->this$2:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->closeMenus(Landroid/view/View;)V

    .line 116
    return-void
.end method
