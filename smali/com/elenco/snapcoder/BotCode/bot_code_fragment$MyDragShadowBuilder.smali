.class public Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "bot_code_fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDragShadowBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1394
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1430
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1408
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$MyDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1412
    .local v0, "height":I
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/elenco/snapcoder/MainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1414
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41c80000    # 25.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1416
    .local v2, "modifier":I
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Point;->set(II)V

    .line 1418
    sget-boolean v4, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->dontModify:Z

    if-nez v4, :cond_0

    .line 1419
    add-int v4, v0, v2

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Point;->set(II)V

    .line 1423
    :goto_0
    return-void

    .line 1421
    :cond_0
    div-int/lit8 v4, v3, 0x2

    add-int v5, v0, v2

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
