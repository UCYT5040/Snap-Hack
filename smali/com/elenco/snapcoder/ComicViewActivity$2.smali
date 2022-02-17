.class Lcom/elenco/snapcoder/ComicViewActivity$2;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$2;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    const-string v0, "comic_info"

    const-string v1, "Prev Button Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$2;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$400(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Next Chapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$2;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$2;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$2;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/CustomComicPager;->setCurrentItem(I)V

    .line 203
    :cond_0
    return-void
.end method
