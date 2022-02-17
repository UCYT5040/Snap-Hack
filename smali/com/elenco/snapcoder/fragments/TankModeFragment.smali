.class public Lcom/elenco/snapcoder/fragments/TankModeFragment;
.super Landroid/app/Fragment;
.source "TankModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v5, 0x7f0a003d

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 25
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f080221

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 26
    .local v2, "moveForwardLeftContainer":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/elenco/snapcoder/fragments/TankModeFragment$1;

    invoke-direct {v5, p0, v2, v4}, Lcom/elenco/snapcoder/fragments/TankModeFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/TankModeFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    const v5, 0x7f080223

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .local v0, "moveBackwardLeftContainer":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;

    invoke-direct {v5, p0, v0, v4}, Lcom/elenco/snapcoder/fragments/TankModeFragment$2;-><init>(Lcom/elenco/snapcoder/fragments/TankModeFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    const v5, 0x7f080222

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 70
    .local v3, "moveForwardRightContainer":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/elenco/snapcoder/fragments/TankModeFragment$3;

    invoke-direct {v5, p0, v3, v4}, Lcom/elenco/snapcoder/fragments/TankModeFragment$3;-><init>(Lcom/elenco/snapcoder/fragments/TankModeFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    const v5, 0x7f080224

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 92
    .local v1, "moveBackwardRightContainer":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/elenco/snapcoder/fragments/TankModeFragment$4;

    invoke-direct {v5, p0, v1, v4}, Lcom/elenco/snapcoder/fragments/TankModeFragment$4;-><init>(Lcom/elenco/snapcoder/fragments/TankModeFragment;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-object v4
.end method
