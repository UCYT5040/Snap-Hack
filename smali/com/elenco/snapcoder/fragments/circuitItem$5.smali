.class Lcom/elenco/snapcoder/fragments/circuitItem$5;
.super Ljava/lang/Object;
.source "circuitItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$singleCircuitImage:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/circuitItem;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/circuitItem;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->val$singleCircuitImage:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->singleCircuitActive:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->val$singleCircuitImage:Landroid/widget/ImageButton;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->singleCircuitActive:Z

    .line 217
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->singleCircuitOn()V

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->val$singleCircuitImage:Landroid/widget/ImageButton;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 221
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->singleCircuitActive:Z

    .line 222
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$5;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->singleCircuitOff()V

    goto :goto_0
.end method
