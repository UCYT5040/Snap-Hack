.class Lcom/elenco/snapcoder/ComicViewActivity$viewPagerTouch;
.super Ljava/lang/Object;
.source "ComicViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/ComicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "viewPagerTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/ComicViewActivity;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/ComicViewActivity;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/elenco/snapcoder/ComicViewActivity$viewPagerTouch;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity$viewPagerTouch;->this$0:Lcom/elenco/snapcoder/ComicViewActivity;

    iget-boolean v0, v0, Lcom/elenco/snapcoder/ComicViewActivity;->onLastPage:Z

    return v0
.end method
