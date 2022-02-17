.class Lcom/elenco/snapcoder/ComicViewActivity$1;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ComicViewActivity;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->nextChapter()V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$100(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$100(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$100(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    if-gtz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/elenco/snapcoder/ComicViewActivity;->onFirstPage:Z

    .line 131
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iget-object v4, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v4}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_3

    :goto_1
    iput-boolean v2, v1, Lcom/elenco/snapcoder/ComicViewActivity;->onLastPage:Z

    .line 136
    const-string v0, ""

    .line 137
    .local v0, "newPage":Ljava/lang/String;
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 138
    invoke-static {}, Lcom/elenco/snapcoder/ComicViewActivity;->access$300()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_4

    .line 140
    const-string v0, "Loading Next Chapter"

    .line 152
    :goto_2
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$400(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->invalidateOptionsMenu()V

    .line 155
    return-void

    .end local v0    # "newPage":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 130
    goto :goto_0

    :cond_3
    move v2, v3

    .line 131
    goto :goto_1

    .line 142
    .restart local v0    # "newPage":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 145
    :cond_5
    invoke-static {}, Lcom/elenco/snapcoder/ComicViewActivity;->access$300()I

    move-result v1

    if-nez v1, :cond_6

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 148
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$1;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
