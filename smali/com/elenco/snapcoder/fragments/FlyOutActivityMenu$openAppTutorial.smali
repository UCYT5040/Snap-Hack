.class Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;
.super Ljava/lang/Object;
.source "FlyOutActivityMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "openAppTutorial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->startInfoActivity()V

    .line 108
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->exTimer:Ljava/util/Timer;

    .line 109
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->exTimer:Ljava/util/Timer;

    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 122
    return-void
.end method
