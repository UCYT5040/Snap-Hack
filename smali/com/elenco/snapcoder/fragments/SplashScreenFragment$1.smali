.class Lcom/elenco/snapcoder/fragments/SplashScreenFragment$1;
.super Ljava/util/TimerTask;
.source "SplashScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/SplashScreenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/SplashScreenFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/SplashScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/SplashScreenFragment;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/SplashScreenFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/SplashScreenFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/SplashScreenFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/SplashScreenFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/SplashScreenFragment;->closeBotscreen()V

    .line 31
    return-void
.end method
