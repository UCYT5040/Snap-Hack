.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget v1, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    .line 178
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->dotCount:I

    .line 180
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v1, "SCANNING FOR SC CONTROLLER(S)"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->textRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$5;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
