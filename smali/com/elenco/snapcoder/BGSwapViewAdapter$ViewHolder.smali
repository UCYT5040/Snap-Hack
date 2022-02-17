.class Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BGSwapViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BGSwapViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final mContentView:Landroid/widget/TextView;

.field final mIconView:Landroid/widget/ImageView;

.field mItem:Lcom/elenco/snapcoder/BGData$BGItem;

.field final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BGSwapViewAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BGSwapViewAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p2, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 68
    const v0, 0x7f080237

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mContentView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f08010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
