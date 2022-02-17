.class public Lcom/elenco/snapcoder/fragments/JoystickFragment;
.super Landroid/app/Fragment;
.source "JoystickFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;
    }
.end annotation


# instance fields
.field private joyStickDefaultX:F

.field private joyStickDefaultY:F

.field joystick:Landroid/widget/ImageView;

.field private previousDirection:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 26
    iput v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joyStickDefaultX:F

    .line 27
    iput v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joyStickDefaultY:F

    .line 29
    const-string v0, "Center"

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->previousDirection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/fragments/JoystickFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/JoystickFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->previousDirection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/JoystickFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->previousDirection:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v24, 0x7f0a0037

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080154

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joyStickDefaultX:F

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joyStickDefaultY:F

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0800f9

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 42
    .local v11, "gamePadBase":Landroid/widget/LinearLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 44
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v24

    const v25, 0x7f08023c

    invoke-virtual/range {v24 .. v25}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout;

    .line 45
    .local v23, "topLayout":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 47
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v24

    const v25, 0x7f0800c9

    invoke-virtual/range {v24 .. v25}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 48
    .local v5, "dashboardLayout":Landroid/widget/LinearLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08017c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 51
    .local v12, "hardLeftContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08017e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 54
    .local v13, "hardRightContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080185

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    .line 57
    .local v20, "rightContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080186

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    .line 60
    .local v21, "rightContainer2":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080181

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 63
    .local v14, "leftContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080182

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 66
    .local v15, "leftContainer2":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080178

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 69
    .local v8, "forwardContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080179

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 72
    .local v9, "forwardContainer2":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08017a

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 75
    .local v10, "forwardContainer3":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080173

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 78
    .local v17, "reverseContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080174

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    .line 81
    .local v18, "reverseContainer2":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f080175

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 84
    .local v19, "reverseContainer3":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f08006e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 87
    .local v4, "centerContainer":Landroid/widget/FrameLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 89
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v24

    const v25, 0x7f08024e

    invoke-virtual/range {v24 .. v25}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 90
    .local v16, "otherParts":Landroid/widget/LinearLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 92
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v24

    const v25, 0x7f0800de

    invoke-virtual/range {v24 .. v25}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 93
    .local v7, "drivingBanner":Landroid/widget/LinearLayout;
    new-instance v24, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/JoystickFragment$dragEventListenerForBackgroundss;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;Lcom/elenco/snapcoder/fragments/JoystickFragment$1;)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 95
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/elenco/snapcoder/MainScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 96
    .local v6, "display":Landroid/view/Display;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v22, "size":Landroid/graphics/Point;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;

    invoke-direct/range {v25 .. v26}, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;-><init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    move-object/from16 v24, v0

    return-object v24
.end method
