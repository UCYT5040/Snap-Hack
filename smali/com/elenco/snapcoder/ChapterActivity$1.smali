.class Lcom/elenco/snapcoder/ChapterActivity$1;
.super Ljava/lang/Object;
.source "ChapterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ChapterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ChapterActivity;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/ChapterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/ChapterActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterActivity$1;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    const-string v0, "chapter_log"

    const-string v1, "Clicked Hamburgler!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity$1;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ChapterActivity;->access$000(Lcom/elenco/snapcoder/ChapterActivity;)V

    .line 154
    return-void
.end method
