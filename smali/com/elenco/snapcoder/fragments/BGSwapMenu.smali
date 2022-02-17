.class public Lcom/elenco/snapcoder/fragments/BGSwapMenu;
.super Landroid/support/v4/app/Fragment;
.source "BGSwapMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_COLUMN_COUNT:Ljava/lang/String; = "column-count"


# instance fields
.field bgItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/BGData$BGItem;",
            ">;"
        }
    .end annotation
.end field

.field private bgListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

.field private columnCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->columnCount:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgItemList:Ljava/util/List;

    .line 53
    return-void
.end method

.method private initBGList()V
    .locals 6

    .prologue
    const v5, 0x7f0700bf

    .line 121
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgItemList:Ljava/util/List;

    new-instance v1, Lcom/elenco/snapcoder/BGData$BGItem;

    const-string v2, "Default Theme"

    const v3, 0x7f0700d9

    const v4, 0x7f0700d0

    invoke-direct {v1, v2, v3, v4}, Lcom/elenco/snapcoder/BGData$BGItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgItemList:Ljava/util/List;

    new-instance v1, Lcom/elenco/snapcoder/BGData$BGItem;

    const-string v2, "Meeper Circuit"

    invoke-direct {v1, v2, v5, v5}, Lcom/elenco/snapcoder/BGData$BGItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgItemList:Ljava/util/List;

    invoke-static {v0}, Lcom/elenco/snapcoder/BGData;->replaceAllItems(Ljava/util/List;)V

    .line 126
    return-void
.end method

.method public static newInstance(I)Lcom/elenco/snapcoder/fragments/BGSwapMenu;
    .locals 3
    .param p0, "columnCount"    # I

    .prologue
    .line 56
    new-instance v1, Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;-><init>()V

    .line 57
    .local v1, "fragment":Lcom/elenco/snapcoder/fragments/BGSwapMenu;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "column-count"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 106
    instance-of v0, p1, Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    .line 112
    return-void

    .line 109
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnBGListInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "column-count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->columnCount:I

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->initBGList()V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f08015e

    .line 77
    const v5, 0x7f0a001e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 80
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v5

    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 81
    .local v3, "toolbarLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 83
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget v5, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->columnCount:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 84
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    :goto_0
    new-instance v5, Lcom/elenco/snapcoder/BGSwapViewAdapter;

    sget-object v6, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    invoke-direct {v5, v6, v7}, Lcom/elenco/snapcoder/BGSwapViewAdapter;-><init>(Ljava/util/List;Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v3    # "toolbarLayout":Landroid/widget/LinearLayout;
    :cond_0
    const v5, 0x7f08021e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 90
    .local v2, "swapBackground":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/elenco/snapcoder/fragments/BGSwapMenu$1;

    invoke-direct {v5, p0}, Lcom/elenco/snapcoder/fragments/BGSwapMenu$1;-><init>(Lcom/elenco/snapcoder/fragments/BGSwapMenu;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object v4

    .line 85
    .end local v2    # "swapBackground":Landroid/widget/RelativeLayout;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .restart local v3    # "toolbarLayout":Landroid/widget/LinearLayout;
    :cond_1
    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    iget v6, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->columnCount:I

    invoke-direct {v5, v0, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/BGSwapMenu;->bgListener:Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;

    .line 118
    return-void
.end method
