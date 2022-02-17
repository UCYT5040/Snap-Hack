.class Lcom/elenco/snapcoder/ChapterActivity$3;
.super Ljava/lang/Object;
.source "ChapterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ChapterActivity;->gridSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ChapterActivity;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ChapterActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ChapterActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterActivity$3;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    iput p2, p0, Lcom/elenco/snapcoder/ChapterActivity$3;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterActivity$3;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    const-class v2, Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chapter_pass"

    iget v2, p0, Lcom/elenco/snapcoder/ChapterActivity$3;->val$finalI:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterActivity$3;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/ChapterActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
