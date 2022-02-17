.class public Lcom/elenco/snapcoder/fragments/ComicPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ComicPageFragment.java"


# static fields
.field public static final CHAP_KEY:Ljava/lang/String; = "chap_key"

.field public static INDEX_DEFAULT:I = 0x0

.field public static final PAGE_KEY:Ljava/lang/String; = "page_key"


# instance fields
.field private chapNum:I

.field private chapter:Lcom/elenco/snapcoder/ChapterClass;

.field descView:Landroid/widget/TextView;

.field private pageNum:I

.field panelView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->INDEX_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    iput v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapNum:I

    .line 35
    iput v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    .line 44
    return-void
.end method

.method public static newInstance(II)Lcom/elenco/snapcoder/fragments/ComicPageFragment;
    .locals 3
    .param p0, "chapterNumber"    # I
    .param p1, "pageNumber"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/elenco/snapcoder/fragments/ComicPageFragment;

    invoke-direct {v1}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;-><init>()V

    .line 48
    .local v1, "fragment":Lcom/elenco/snapcoder/fragments/ComicPageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "chap_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v2, "page_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f08023f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/ChapterClass;->getChapType()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 95
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->panelView:Landroid/widget/ImageView;

    .line 100
    const-string v0, "MYTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->INDEX_DEFAULT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->panelView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    iget v2, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    sget v3, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->INDEX_DEFAULT:I

    invoke-virtual {v1, v2, v3}, Lcom/elenco/snapcoder/ChapterClass;->getRef(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    return-void

    .line 75
    :sswitch_0
    const-string v4, "Comic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "Tutorial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 77
    :pswitch_0
    iget v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    invoke-virtual {v3}, Lcom/elenco/snapcoder/ChapterClass;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v0, v3, :cond_4

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/ChapterClass;->getDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/ChapterClass;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    iget v2, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/ChapterClass;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 85
    :cond_4
    iget v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/ChapterClass;->getCapUsed()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    iget v2, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/ChapterClass;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 85
    goto :goto_2

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->descView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e4423b -> :sswitch_0
        0xf5f8f7e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chap_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapNum:I

    .line 60
    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->pageNum:I

    .line 61
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    iget v1, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapNum:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->chapter:Lcom/elenco/snapcoder/ChapterClass;

    .line 63
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v1, 0x7f0a0031

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, "root":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->panelView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method
