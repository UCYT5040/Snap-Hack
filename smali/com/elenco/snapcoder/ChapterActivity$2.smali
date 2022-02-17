.class Lcom/elenco/snapcoder/ChapterActivity$2;
.super Ljava/lang/Object;
.source "ChapterActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 158
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterActivity$2;->this$0:Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method
