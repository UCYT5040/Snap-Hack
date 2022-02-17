.class public Lcom/elenco/snapcoder/ComicViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ComicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/ComicViewActivity$SlidePageAdapter;,
        Lcom/elenco/snapcoder/ComicViewActivity$viewPagerTouch;
    }
.end annotation


# static fields
.field private static CHAPTER_INDEX:I = 0x0

.field public static final COMIC_ERROR_KEY:Ljava/lang/String; = "comic_error"

.field public static final COMIC_INFO_KEY:Ljava/lang/String; = "comic_info"

.field private static PAGE_COUNT:I

.field public static tutorialSeen:Z


# instance fields
.field private cAdapter:Landroid/support/v4/view/PagerAdapter;

.field cDesc:Landroid/widget/TextView;

.field private cPages:Landroid/widget/TextView;

.field private cTitle:Landroid/widget/TextView;

.field private cView:Lcom/elenco/snapcoder/CustomComicPager;

.field private finishButton:Landroid/widget/Button;

.field private hideShowButton:Landroid/widget/Button;

.field private myBar:Landroid/support/v7/widget/Toolbar;

.field myTimer:Landroid/os/Handler;

.field private nextButton:Landroid/widget/Button;

.field private nextZone:Landroid/widget/FrameLayout;

.field public onFirstPage:Z

.field public onLastPage:Z

.field private prevButton:Landroid/widget/Button;

.field private prevZone:Landroid/widget/FrameLayout;

.field screenSize:Landroid/graphics/Point;

.field private test:Landroid/widget/RelativeLayout;

.field private testFade:Z

.field private tutFrame:Landroid/widget/RelativeLayout;

.field private tutPromptSimple:Landroid/widget/TextView;

.field public ui:[Landroid/view/View;

.field public uiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    .line 39
    sput v1, Lcom/elenco/snapcoder/ComicViewActivity;->PAGE_COUNT:I

    .line 40
    sput-boolean v1, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->uiVisible:Z

    .line 44
    iput-boolean v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->onLastPage:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->onFirstPage:Z

    .line 66
    iput-boolean v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->testFade:Z

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/elenco/snapcoder/ComicViewActivity;->PAGE_COUNT:I

    return v0
.end method

.method static synthetic access$200(Lcom/elenco/snapcoder/ComicViewActivity;)Lcom/elenco/snapcoder/CustomComicPager;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    return v0
.end method

.method static synthetic access$400(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/elenco/snapcoder/ComicViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitchAll()V

    return-void
.end method

.method static synthetic access$900(Lcom/elenco/snapcoder/ComicViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ComicViewActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutPromptSimple:Landroid/widget/TextView;

    return-object v0
.end method

.method private uiSwitch(Landroid/view/View;)V
    .locals 6
    .param p1, "uiItem"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 407
    const-string v0, "comic_info"

    const-string v1, "uiSwitch()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/ComicViewActivity$6;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->invalidateOptionsMenu()V

    .line 431
    return-void

    .line 417
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 418
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/elenco/snapcoder/ComicViewActivity$7;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private uiSwitchAll()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 433
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->ui:[Landroid/view/View;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 434
    .local v0, "aUi":Landroid/view/View;
    move-object v1, v0

    .line 435
    .local v1, "uiItem":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    .line 436
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_1
    iget-boolean v2, p0, Lcom/elenco/snapcoder/ComicViewActivity;->uiVisible:Z

    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 440
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v8, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    .line 442
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 440
    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v7, Lcom/elenco/snapcoder/ComicViewActivity$8;

    invoke-direct {v7, p0, v1}, Lcom/elenco/snapcoder/ComicViewActivity$8;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 433
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 452
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 455
    .end local v0    # "aUi":Landroid/view/View;
    .end local v1    # "uiItem":Landroid/view/View;
    :cond_4
    iget-boolean v2, p0, Lcom/elenco/snapcoder/ComicViewActivity;->uiVisible:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/elenco/snapcoder/ComicViewActivity;->uiVisible:Z

    .line 456
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->invalidateOptionsMenu()V

    .line 457
    const-string v2, "comic_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/elenco/snapcoder/ComicViewActivity;->uiVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    :cond_5
    move v2, v3

    .line 455
    goto :goto_3
.end method


# virtual methods
.method public hideShowUI(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitchAll()V

    .line 461
    return-void
.end method

.method public nextChapter()V
    .locals 4

    .prologue
    .line 628
    sget v1, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 629
    const-string v1, "comic_info"

    const-string v2, "In nextChapter, switching..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/CustomComicPager;->setPagingEnabled(Z)V

    .line 631
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 632
    .local v0, "pageDelay":Landroid/os/Handler;
    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$10;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$10;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    const-wide/16 v2, 0x4e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    .end local v0    # "pageDelay":Landroid/os/Handler;
    :goto_0
    return-void

    .line 674
    :cond_0
    const-string v2, "comic_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishButton Alpha: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | finishButton Visibliity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VISIBLE"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitch(Landroid/view/View;)V

    goto :goto_0

    .line 674
    :cond_1
    const-string v1, "GONE/INVISIBLE"

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    sput-boolean v0, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    .line 402
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 403
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v5, 0x7f0a001c

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->setContentView(I)V

    .line 78
    const v5, 0x7f080077

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->myBar:Landroid/support/v7/widget/Toolbar;

    .line 79
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->myBar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 80
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    const v5, 0x7f07005a

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 85
    .local v4, "upButton":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .end local v4    # "upButton":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->myBar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "chapter_pass"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    .line 95
    sget-object v5, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    sget v6, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/elenco/snapcoder/ChapterClass;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/elenco/snapcoder/ComicViewActivity;->PAGE_COUNT:I

    .line 98
    :cond_0
    sget v5, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 99
    const-string v5, "comic_error"

    const-string v6, "ERROR: CHAPTER_INDEX was not set."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, "comic_error"

    const-string v6, "intent.getExtras() is null, or there is no int associated with the CHAPTER_PASS key."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    sget v5, Lcom/elenco/snapcoder/ComicViewActivity;->PAGE_COUNT:I

    if-nez v5, :cond_2

    .line 103
    const-string v5, "comic_error"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: PageCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/elenco/snapcoder/ComicViewActivity;->PAGE_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". No Pages Displayed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v5, "comic_error"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check the object found @ChapterActivity.chapters["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const v5, 0x7f08024b

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/CustomComicPager;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    .line 109
    new-instance v5, Lcom/elenco/snapcoder/ComicViewActivity$SlidePageAdapter;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/elenco/snapcoder/ComicViewActivity$SlidePageAdapter;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 110
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/CustomComicPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 111
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    new-instance v6, Lcom/elenco/snapcoder/ComicViewActivity$1;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/ComicViewActivity$1;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v5, v6}, Lcom/elenco/snapcoder/CustomComicPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 161
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    invoke-virtual {v5, v8}, Lcom/elenco/snapcoder/CustomComicPager;->setEnabled(Z)V

    .line 162
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 166
    const-string v2, "APP INFO"

    .line 167
    .local v2, "newTitle":Ljava/lang/String;
    const v5, 0x7f080241

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cTitle:Landroid/widget/TextView;

    .line 168
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "pageCount":Ljava/lang/String;
    sget v5, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    if-nez v5, :cond_7

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    :goto_1
    const v5, 0x7f080240

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    .line 181
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 182
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :cond_4
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    .line 189
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 191
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    .line 192
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 193
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    new-instance v6, Lcom/elenco/snapcoder/ComicViewActivity$2;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/ComicViewActivity$2;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v5, 0x7f08002b

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    .line 206
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 207
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    new-instance v6, Lcom/elenco/snapcoder/ComicViewActivity$3;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/ComicViewActivity$3;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cTitle:Landroid/widget/TextView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->myBar:Landroid/support/v7/widget/Toolbar;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cPages:Landroid/widget/TextView;

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->ui:[Landroid/view/View;

    .line 248
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    .line 249
    sget v5, Lcom/elenco/snapcoder/ComicViewActivity;->CHAPTER_INDEX:I

    sget v6, Lcom/elenco/snapcoder/ChapterActivity;->CHAPTER_COUNT:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_8

    .line 250
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    const v6, 0x7f0d0037

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 254
    :goto_2
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    new-instance v6, Lcom/elenco/snapcoder/ComicViewActivity$4;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/ComicViewActivity$4;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setAlpha(F)V

    .line 261
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    const v5, 0x7f08002e

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->hideShowButton:Landroid/widget/Button;

    .line 265
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->hideShowButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->myTimer:Landroid/os/Handler;

    .line 279
    const v5, 0x7f0801cb

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    .line 280
    const v5, 0x7f080242

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutPromptSimple:Landroid/widget/TextView;

    .line 281
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutPromptSimple:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 284
    const v5, 0x7f0800f2

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevZone:Landroid/widget/FrameLayout;

    .line 285
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevZone:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 286
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevZone:Landroid/widget/FrameLayout;

    const-string v6, "#35b9c1ce"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 287
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevZone:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 288
    const v5, 0x7f0800f1

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextZone:Landroid/widget/FrameLayout;

    .line 289
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextZone:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->screenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 290
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextZone:Landroid/widget/FrameLayout;

    const-string v6, "#35b9c1ce"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 291
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextZone:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 314
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_5

    .line 315
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 316
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/elenco/snapcoder/ComicViewActivity$5;

    invoke-direct {v6, p0}, Lcom/elenco/snapcoder/ComicViewActivity$5;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_5
    sget-boolean v5, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    if-nez v5, :cond_9

    .line 339
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->uiTutorialSimple()V

    .line 344
    :goto_3
    const v5, 0x7f080246

    invoke-virtual {p0, v5}, Lcom/elenco/snapcoder/ComicViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->test:Landroid/widget/RelativeLayout;

    .line 345
    return-void

    .line 87
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "newTitle":Ljava/lang/String;
    .end local v3    # "pageCount":Ljava/lang/String;
    :cond_6
    const-string v5, "comic_error"

    const-string v6, "ERROR: Action Bar is Null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "newTitle":Ljava/lang/String;
    .restart local v3    # "pageCount":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cView:Lcom/elenco/snapcoder/CustomComicPager;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/CustomComicPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/elenco/snapcoder/ComicViewActivity;->cAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 252
    :cond_8
    iget-object v5, p0, Lcom/elenco/snapcoder/ComicViewActivity;->finishButton:Landroid/widget/Button;

    const v6, 0x7f0d0028

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 342
    :cond_9
    invoke-direct {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->uiSwitchAll()V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ComicViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 394
    const-string v0, "comic_error"

    const-string v1, "DEFAULTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 381
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    .line 382
    const-string v0, "comic_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tutorialSeen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; in R.id.home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public uiTutorialSimple()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 469
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutPromptSimple:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 471
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutPromptSimple:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/elenco/snapcoder/ComicViewActivity;->tutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ComicViewActivity$9;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ComicViewActivity$9;-><init>(Lcom/elenco/snapcoder/ComicViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 506
    const/4 v0, 0x1

    sput-boolean v0, Lcom/elenco/snapcoder/ComicViewActivity;->tutorialSeen:Z

    .line 507
    return-void
.end method
