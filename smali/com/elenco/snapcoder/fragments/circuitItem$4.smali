.class Lcom/elenco/snapcoder/fragments/circuitItem$4;
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
    .line 190
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Active:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Button:Landroid/widget/ImageButton;

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Active:Z

    .line 198
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->rightOn()V

    .line 199
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOn()V

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Button:Landroid/widget/ImageButton;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->d4Active:Z

    .line 204
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$4;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->rightNegativeOff()V

    goto :goto_0
.end method
