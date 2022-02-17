.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;
.super Ljava/util/TimerTask;
.source "ProgramSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver;->closeMe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

.field final synthetic val$ft:Landroid/support/v4/app/FragmentTransaction;

.field final synthetic val$programSaver:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$programSaver:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;-><init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method
