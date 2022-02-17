.class public Lcom/elenco/snapcoder/BGSwapViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BGSwapViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/BGData$BGItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/BGData$BGItem;",
            ">;",
            "Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/BGData$BGItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mValues:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/BGSwapViewAdapter;)Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/BGSwapViewAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/elenco/snapcoder/BGSwapViewAdapter;->onBindViewHolder(Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BGData$BGItem;

    iput-object v0, p1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mItem:Lcom/elenco/snapcoder/BGData$BGItem;

    .line 41
    iget-object v1, p1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mContentView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BGData$BGItem;

    iget-object v0, v0, Lcom/elenco/snapcoder/BGData$BGItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BGData$BGItem;

    iget v0, v0, Lcom/elenco/snapcoder/BGData$BGItem;->iconID:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v1, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;-><init>(Lcom/elenco/snapcoder/BGSwapViewAdapter;Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/elenco/snapcoder/BGSwapViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a001d

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;-><init>(Lcom/elenco/snapcoder/BGSwapViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
