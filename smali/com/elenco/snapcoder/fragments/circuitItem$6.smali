.class Lcom/elenco/snapcoder/fragments/circuitItem$6;
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
    .line 232
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/circuitItem$6;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$6;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->leftSpeedToggle:Landroid/widget/ImageView;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/circuitItem$6;->this$0:Lcom/elenco/snapcoder/fragments/circuitItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/circuitItem;->circuit:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->leftHighSpeed()V

    .line 238
    return-void
.end method
