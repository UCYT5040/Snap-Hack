.class Lcom/elenco/snapcoder/ComicViewActivity$SlidePageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/ComicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidePageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ComicViewActivity;


# direct methods
.method public constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$SlidePageAdapter;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    .line 689
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 690
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 699
    invoke-static {}, Lcom/elenco/snapcoder/ComicViewActivity;->access$1000()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 694
    invoke-static {}, Lcom/elenco/snapcoder/ComicViewActivity;->access$300()I

    move-result v0

    invoke-static {v0, p1}, Lcom/elenco/snapcoder/fragments/ComicPageFragment;->newInstance(II)Lcom/elenco/snapcoder/fragments/ComicPageFragment;

    move-result-object v0

    return-object v0
.end method
