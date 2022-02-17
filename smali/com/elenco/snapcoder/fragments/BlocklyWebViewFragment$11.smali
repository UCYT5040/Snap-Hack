.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$11;
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
    .line 218
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$11;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$11;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->searchDatabase()V

    .line 222
    return-void
.end method
