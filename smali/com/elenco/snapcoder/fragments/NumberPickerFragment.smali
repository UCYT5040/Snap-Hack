.class public Lcom/elenco/snapcoder/fragments/NumberPickerFragment;
.super Landroid/app/Fragment;
.source "NumberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$deleteonClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num0onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num9onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num8onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num7onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num6onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num5onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num4onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num3onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num2onClickListener;,
        Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num1onClickListener;
    }
.end annotation


# instance fields
.field private numberPickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

.field private userEnteredString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->userEnteredString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1200(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->userEnteredString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->userEnteredString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Lcom/elenco/snapcoder/fragments/NumberPickerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->numberPickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v17, 0x7f0a003a

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 27
    .local v16, "view":Landroid/view/View;
    invoke-static/range {p0 .. p0}, Lcom/elenco/snapcoder/UIManager;->setNumberPickerFragment(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)V

    .line 29
    const v17, 0x7f08019d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 30
    .local v7, "num1":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num1onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num1onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v17, 0x7f08019e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 32
    .local v8, "num2":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num2onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num2onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v17, 0x7f08019f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 34
    .local v9, "num3":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num3onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num3onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v17, 0x7f0801a0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 36
    .local v10, "num4":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num4onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num4onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v17, 0x7f0801a1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 38
    .local v11, "num5":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num5onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num5onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v17, 0x7f0801a2

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 40
    .local v12, "num6":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num6onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num6onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v17, 0x7f0801a3

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 42
    .local v13, "num7":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num7onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num7onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v17, 0x7f0801a4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 44
    .local v14, "num8":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num8onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num8onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v17, 0x7f0801a5

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 46
    .local v15, "num9":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num9onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num9onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v17, 0x7f08019c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 48
    .local v6, "num0":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num0onClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$num0onClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v17, 0x7f080145

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 50
    .local v5, "infinite":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v17, 0x7f0800cc

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 52
    .local v4, "delete":Landroid/widget/ImageButton;
    new-instance v17, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$deleteonClickListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$deleteonClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-object v16
.end method

.method public setNumberPickerCallback(Lcom/elenco/snapcoder/fragments/NumberPickerCallback;)V
    .locals 0
    .param p1, "numberPickerCallback"    # Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->numberPickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    .line 60
    return-void
.end method

.method public setUserEnteredString(Ljava/lang/String;)V
    .locals 0
    .param p1, "newNumber"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->userEnteredString:Ljava/lang/String;

    .line 64
    return-void
.end method
