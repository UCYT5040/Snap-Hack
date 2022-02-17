.class Lcom/elenco/snapcoder/ComicViewActivity$4;
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
    .line 254
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$4;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$4;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/elenco/snapcoder/ComicViewActivity$4;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    const-class v3, Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 258
    return-void
.end method
