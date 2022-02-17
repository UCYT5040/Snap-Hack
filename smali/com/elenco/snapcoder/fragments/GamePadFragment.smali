.class public Lcom/elenco/snapcoder/fragments/GamePadFragment;
.super Landroid/app/Fragment;
.source "GamePadFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v7, 0x7f0a0036

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 26
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f080177

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 27
    .local v1, "moveForwardContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$1;

    invoke-direct {v7, p0, v1, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    const v7, 0x7f080172

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 45
    .local v0, "moveBackwardsContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$2;

    invoke-direct {v7, p0, v0, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$2;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    const v7, 0x7f080180

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 63
    .local v2, "moveLeftContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;

    invoke-direct {v7, p0, v2, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$3;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    const v7, 0x7f080184

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 81
    .local v3, "moveRightContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$4;

    invoke-direct {v7, p0, v3, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$4;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    const v7, 0x7f08017d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 99
    .local v5, "turnHardRightContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$5;

    invoke-direct {v7, p0, v5, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$5;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    const v7, 0x7f08017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 118
    .local v4, "turnHardLeftContainer":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/elenco/snapcoder/fragments/GamePadFragment$6;

    invoke-direct {v7, p0, v4, v6}, Lcom/elenco/snapcoder/fragments/GamePadFragment$6;-><init>(Lcom/elenco/snapcoder/fragments/GamePadFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setGamePadFragment(Lcom/elenco/snapcoder/fragments/GamePadFragment;)V

    .line 137
    return-object v6
.end method
