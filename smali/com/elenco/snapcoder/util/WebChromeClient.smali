.class public Lcom/elenco/snapcoder/util/WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v2, 0x1

    .line 17
    new-instance v0, Lcom/elenco/snapcoder/util/JsDialogHelper;

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/util/JsDialogHelper;-><init>(Landroid/webkit/JsResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/util/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 19
    return v2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 24
    new-instance v0, Lcom/elenco/snapcoder/util/JsDialogHelper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/util/JsDialogHelper;-><init>(Landroid/webkit/JsResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/util/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 32
    new-instance v0, Lcom/elenco/snapcoder/util/JsDialogHelper;

    const/4 v2, 0x3

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/util/JsDialogHelper;-><init>(Landroid/webkit/JsResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/util/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method
