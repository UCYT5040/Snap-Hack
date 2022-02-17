.class Lcom/elenco/snapcoder/BGSwapViewAdapter$1;
.super Ljava/lang/Object;
.source "BGSwapViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BGSwapViewAdapter;->onBindViewHolder(Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;

.field final synthetic val$holder:Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BGSwapViewAdapter;Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BGSwapViewAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;->this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;

    iput-object p2, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;->val$holder:Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;->this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;

    invoke-static {v0}, Lcom/elenco/snapcoder/BGSwapViewAdapter;->access$000(Lcom/elenco/snapcoder/BGSwapViewAdapter;)Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;->this$0:Lcom/elenco/snapcoder/BGSwapViewAdapter;

    invoke-static {v0}, Lcom/elenco/snapcoder/BGSwapViewAdapter;->access$000(Lcom/elenco/snapcoder/BGSwapViewAdapter;)Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BGSwapViewAdapter$1;->val$holder:Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/elenco/snapcoder/BGSwapViewAdapter$ViewHolder;->mItem:Lcom/elenco/snapcoder/BGData$BGItem;

    invoke-interface {v0, v1}, Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;->onBGListInteraction(Lcom/elenco/snapcoder/BGData$BGItem;)V

    .line 50
    :cond_0
    return-void
.end method
