.class public Lcom/elenco/snapcoder/ChapterActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChapterActivity.java"


# static fields
.field public static CHAPTER_COUNT:I = 0x0

.field public static final CHAPTER_ERROR_KEY:Ljava/lang/String; = "CHAPTER_ERROR"

.field public static final CHAPTER_PASS:Ljava/lang/String; = "chapter_pass"

.field public static final CHAP_LOG_KEY:Ljava/lang/String; = "chapter_log"

.field public static final DEFAULT_INDEX:I = -0x1

.field private static final INFO:Ljava/lang/String; = "loadInfo"

.field public static final TITLECARD_INDEX:I

.field public static chapters:[Lcom/elenco/snapcoder/ChapterClass;

.field public static loadType:Ljava/lang/String;


# instance fields
.field buttonParams:Landroid/view/ViewGroup$LayoutParams;

.field captionParams:Landroid/view/ViewGroup$LayoutParams;

.field chapButtons:[Landroid/widget/ImageButton;

.field chapCaps:[Landroid/widget/TextView;

.field public chapterChecks:[Z

.field flyOut:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

.field private flyOutFrame:Landroid/widget/RelativeLayout;

.field flyOutMenuOpen:Z

.field flyOutMoving:Z

.field gridView:Landroid/widget/GridLayout;

.field hamButton:Landroid/widget/ImageView;

.field public infoChapterFive:Lcom/elenco/snapcoder/ChapterClass;

.field public infoChapterFour:Lcom/elenco/snapcoder/ChapterClass;

.field public infoChapterOne:Lcom/elenco/snapcoder/ChapterClass;

.field public infoChapterSix:Lcom/elenco/snapcoder/ChapterClass;

.field public infoChapterThree:Lcom/elenco/snapcoder/ChapterClass;

.field public infoChapterTwo:Lcom/elenco/snapcoder/ChapterClass;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMenuOpen:Z

    .line 80
    iput-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/ChapterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/ChapterActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/elenco/snapcoder/ChapterActivity;->openFlyOutActivityMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/ChapterActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/ChapterActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private gridSetup()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 194
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 195
    .local v3, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v4, Lcom/elenco/snapcoder/ChapterActivity;->CHAPTER_COUNT:I

    if-ge v2, v4, :cond_6

    .line 198
    sget-object v4, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    .line 199
    move v1, v2

    .line 201
    .local v1, "finalI":I
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    new-instance v8, Landroid/widget/ImageButton;

    invoke-direct {v8, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    aput-object v8, v4, v2

    .line 202
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    iget-object v8, p0, Lcom/elenco/snapcoder/ChapterActivity;->buttonParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    const/16 v8, 0x190

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 205
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setMaxWidth(I)V

    .line 206
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    const/16 v8, 0x15e

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 207
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    const/16 v8, 0x1db

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setMaxHeight(I)V

    .line 208
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 210
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 211
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    sget-object v8, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6, v7}, Lcom/elenco/snapcoder/ChapterClass;->getRef(II)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 214
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    aget-object v4, v4, v2

    new-instance v8, Lcom/elenco/snapcoder/ChapterActivity$3;

    invoke-direct {v8, p0, v1}, Lcom/elenco/snapcoder/ChapterActivity$3;-><init>(Lcom/elenco/snapcoder/ChapterActivity;I)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget-object v4, Lcom/elenco/snapcoder/ChapterActivity;->loadType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    move v4, v7

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Chapter "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "capText":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v8, v4, v2

    .line 233
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    iget-object v8, p0, Lcom/elenco/snapcoder/ChapterActivity;->captionParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    const/16 v8, 0x19

    invoke-virtual {v4, v13, v13, v13, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 238
    iget-object v8, p0, Lcom/elenco/snapcoder/ChapterActivity;->gridView:Landroid/widget/GridLayout;

    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    add-int/lit8 v9, v2, -0x1

    aget-object v9, v4, v9

    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    :goto_3
    sget-object v11, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2

    move v4, v5

    :goto_4
    sget-object v12, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v12}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    invoke-direct {v10, v11, v4}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v8, p0, Lcom/elenco/snapcoder/ChapterActivity;->gridView:Landroid/widget/GridLayout;

    iget-object v4, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    add-int/lit8 v9, v2, -0x1

    aget-object v9, v4, v9

    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3

    move v4, v2

    :goto_5
    sget-object v11, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_4

    move v4, v5

    :goto_6
    sget-object v12, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v12}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    invoke-direct {v10, v11, v4}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "capText":Ljava/lang/String;
    :pswitch_0
    const-string v8, "loadInfo"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto/16 :goto_1

    .line 226
    :pswitch_1
    sget-object v4, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/elenco/snapcoder/ChapterClass;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "capText":Ljava/lang/String;
    goto/16 :goto_2

    :cond_1
    move v4, v2

    .line 238
    goto :goto_3

    :cond_2
    move v4, v6

    goto :goto_4

    .line 239
    :cond_3
    add-int/lit8 v4, v2, 0x1

    goto :goto_5

    :cond_4
    move v4, v6

    goto :goto_6

    .line 242
    .end local v0    # "capText":Ljava/lang/String;
    .end local v1    # "finalI":I
    :cond_5
    const-string v4, "chapter_log"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: chapters["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is null!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_6
    return-void

    .line 224
    :pswitch_data_0
    .packed-switch 0x6dfcbab4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private openFlyOutActivityMenu()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5dc

    const/4 v2, 0x1

    .line 249
    iget-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    if-nez v0, :cond_0

    .line 250
    iget-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMenuOpen:Z

    if-nez v0, :cond_1

    .line 251
    const-string v0, "chapter_log"

    const-string v1, "flyOutMenu Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-boolean v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    .line 253
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ChapterActivity$4;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ChapterActivity$4;-><init>(Lcom/elenco/snapcoder/ChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v0, "chapter_log"

    const-string v1, "flyOutMenu Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-boolean v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    .line 267
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->getFlyMenuBlank()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ChapterActivity$5;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ChapterActivity$5;-><init>(Lcom/elenco/snapcoder/ChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public closeMenus(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMoving:Z

    .line 284
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->getFlyMenuBlank()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/ChapterActivity$6;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ChapterActivity$6;-><init>(Lcom/elenco/snapcoder/ChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 295
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->titleView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 92
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/elenco/snapcoder/MainScreen;->BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/ChapterActivity;->loadType:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v1, Lcom/elenco/snapcoder/ChapterActivity;->loadType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 110
    :goto_1
    sget v0, Lcom/elenco/snapcoder/ChapterActivity;->CHAPTER_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapterChecks:[Z

    .line 113
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 114
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    aget-object v0, v0, v8

    if-nez v0, :cond_2

    .line 115
    const-string v0, "CHAPTER_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: chapters["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapterChecks:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v8

    .line 113
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 96
    .end local v8    # "i":I
    :pswitch_0
    const-string v2, "loadInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Lcom/elenco/snapcoder/ChapterClass;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f070125

    const-string v5, "How to Use the App - Summary"

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/ChapterClass;-><init>(IILandroid/content/res/TypedArray;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->infoChapterOne:Lcom/elenco/snapcoder/ChapterClass;

    .line 99
    new-instance v0, Lcom/elenco/snapcoder/ChapterClass;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f07012b

    const-string v5, "Code Sharing"

    invoke-direct/range {v0 .. v5}, Lcom/elenco/snapcoder/ChapterClass;-><init>(IILandroid/content/res/TypedArray;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->infoChapterTwo:Lcom/elenco/snapcoder/ChapterClass;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/elenco/snapcoder/ChapterClass;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->infoChapterOne:Lcom/elenco/snapcoder/ChapterClass;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->infoChapterTwo:Lcom/elenco/snapcoder/ChapterClass;

    aput-object v2, v0, v1

    sput-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    .line 106
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v0, v0

    sput v0, Lcom/elenco/snapcoder/ChapterActivity;->CHAPTER_COUNT:I

    .line 107
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 119
    .restart local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapterChecks:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v8

    goto :goto_3

    .line 122
    :cond_3
    const-string v0, "chapter_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChapterChecks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapterChecks:[Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->gridView:Landroid/widget/GridLayout;

    .line 126
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapButtons:[Landroid/widget/ImageButton;

    .line 127
    sget-object v0, Lcom/elenco/snapcoder/ChapterActivity;->chapters:[Lcom/elenco/snapcoder/ChapterClass;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->chapCaps:[Landroid/widget/TextView;

    .line 128
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->buttonParams:Landroid/view/ViewGroup$LayoutParams;

    .line 129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->captionParams:Landroid/view/ViewGroup$LayoutParams;

    .line 130
    invoke-direct {p0}, Lcom/elenco/snapcoder/ChapterActivity;->gridSetup()V

    .line 132
    const-string v0, "chapter_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of Rows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutMenuOpen:Z

    .line 136
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 137
    .local v7, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    .line 138
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800f3

    iget-object v2, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    const-string v3, "flyout_activity_menu"

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 142
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    .line 143
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->flyOutFrame:Landroid/widget/RelativeLayout;

    const v1, -0x3b448000    # -1500.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 148
    :cond_4
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->hamButton:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterActivity;->hamButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/elenco/snapcoder/ChapterActivity$1;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/ChapterActivity$1;-><init>(Lcom/elenco/snapcoder/ChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/ChapterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 158
    .local v6, "bannerLayout":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/elenco/snapcoder/ChapterActivity$2;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/ChapterActivity$2;-><init>(Lcom/elenco/snapcoder/ChapterActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    return-void

    .line 96
    :pswitch_data_0
    .packed-switch 0x6dfcbab4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 168
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-virtual {p0}, Lcom/elenco/snapcoder/ChapterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 173
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 177
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 184
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
