.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;
.super Ljava/util/TimerTask;
.source "FlyOutMenuLandscape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMyBots()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

.field final synthetic val$ft:Landroid/support/v4/app/FragmentTransaction;

.field final synthetic val$myBots:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$myBots:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
