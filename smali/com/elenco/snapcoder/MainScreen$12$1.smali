.class Lcom/elenco/snapcoder/MainScreen$12$1;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/MainScreen$12;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/MainScreen$12;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$12$1;->this$1:Lcom/elenco/snapcoder/MainScreen$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$12$1;->this$1:Lcom/elenco/snapcoder/MainScreen$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen$12;->this$0:Lcom/elenco/snapcoder/MainScreen;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$12$1;->this$1:Lcom/elenco/snapcoder/MainScreen$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen$12;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->setCommandDrive()V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$12$1;->this$1:Lcom/elenco/snapcoder/MainScreen$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen$12;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->checkSize()V

    goto :goto_0
.end method
