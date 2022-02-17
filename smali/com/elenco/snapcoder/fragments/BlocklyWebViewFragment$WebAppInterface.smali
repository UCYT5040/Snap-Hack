.class public Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->mContext:Landroid/content/Context;

    .line 381
    return-void
.end method


# virtual methods
.method public getAutosaveData()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$4;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$4;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public sendAutosaveData(Ljava/lang/String;)V
    .locals 2
    .param p1, "savedText"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    .line 412
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$3;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$3;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public sendCloudSaveData(Ljava/lang/String;)V
    .locals 2
    .param p1, "savedText"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 432
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    .line 433
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$5;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$5;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data2"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 387
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$1;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public sendLoadSaveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedText"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 443
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    .line 445
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;

    invoke-direct {v1, p0, p2}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$6;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public sendPopUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "didWork"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->showPopUp(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public sendSaveData(Ljava/lang/String;)V
    .locals 2
    .param p1, "savedText"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 399
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->data:Ljava/lang/String;

    .line 401
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface$2;-><init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$WebAppInterface;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method
