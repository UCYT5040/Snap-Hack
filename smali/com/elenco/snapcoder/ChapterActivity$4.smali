.class Lcom/elenco/snapcoder/ChapterActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChapterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/ChapterActivity;->openFlyOutActivityMenu()V
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
    .line 253
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    iput-boolean v1, v0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMenuOpen:Z

    .line 257
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ChapterActivity;->access$100(Lcom/elenco/snapcoder/ChapterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-static {v0}, Lcom/elenco/snapcoder/ChapterActivity;->access$100(Lcom/elenco/snapcoder/ChapterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 259
    const-string v0, "chapter_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flyOutMenu finished Opening. flyOutMenuOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    iget-boolean v2, v2, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMenuOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity$4;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    .line 261
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 262
    return-void
.end method
