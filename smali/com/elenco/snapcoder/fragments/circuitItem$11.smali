.class Lcom/elenco/snapcoder/fragments/circuitItem$11;
.super Ljava/lang/Object;
.source "circuitItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/circuitItem;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/circuitItem;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/circuitItem;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 283
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/circuitItem;->view:Landroid/view/View;

    const v3, 0x7f08023a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 287
    .local v1, "toggleLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 288
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/circuitItem;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void

    .line 290
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/circuitItem$11;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v3, v3, Lcom/elenco/snapcoder/fragments/circuitItem;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method
