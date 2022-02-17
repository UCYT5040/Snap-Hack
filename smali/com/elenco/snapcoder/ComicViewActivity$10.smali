.class Lcom/elenco/snapcoder/ComicViewActivity$10;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ComicViewActivity;->nextChapter()V
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
    .line 632
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 635
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->finish()V

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/ComicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "chapter_pass"

    invoke-static {}, Lcom/elenco/snapcoder/ComicViewActivity;->access$300()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFY_CHECK"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/ComicViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 638
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "illegal":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity$10;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-static {v1}, Lcom/elenco/snapcoder/ComicViewActivity;->access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
