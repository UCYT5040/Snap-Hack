.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$12;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$12;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:cloudSaveCode()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 230
    return-void
.end method
