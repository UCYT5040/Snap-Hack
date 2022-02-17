.class Lcom/elenco/snapcoder/fragments/circuitItem$2;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/circuitItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/circuitItem;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Active:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Button:Landroid/widget/ImageButton;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Active:Z

    .line 157
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->leftOn()V

    .line 158
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOn()V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Button:Landroid/widget/ImageButton;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d2Active:Z

    .line 163
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$2;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->leftNegativeOff()V

    goto :goto_0
.end method
