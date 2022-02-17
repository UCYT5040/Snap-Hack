.class public Lcom/elenco/snapcoder/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;
    }
.end annotation


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private mAvailableSpaceRect:Landroid/graphics/RectF;

.field private mEnableSizeCache:Z

.field private mInitiallized:Z

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mPaint:Landroid/text/TextPaint;

.field private final mSizeTester:Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextCachedSizes:Landroid/util/SparseIntArray;

.field private mTextRect:Landroid/graphics/RectF;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 45
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingMult:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingAdd:F

    .line 49
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMinTextSize:F

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mEnableSizeCache:Z

    .line 190
    new-instance v0, Lcom/elenco/snapcoder/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/AutoResizeTextView$1;-><init>(Lcom/elenco/snapcoder/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSizeTester:Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;

    .line 61
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->initialize()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 45
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingMult:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingAdd:F

    .line 49
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMinTextSize:F

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mEnableSizeCache:Z

    .line 190
    new-instance v0, Lcom/elenco/snapcoder/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/AutoResizeTextView$1;-><init>(Lcom/elenco/snapcoder/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSizeTester:Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;

    .line 66
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->initialize()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 45
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingMult:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingAdd:F

    .line 49
    iput v1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMinTextSize:F

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mEnableSizeCache:Z

    .line 190
    new-instance v0, Lcom/elenco/snapcoder/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/AutoResizeTextView$1;-><init>(Lcom/elenco/snapcoder/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSizeTester:Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;

    .line 71
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->initialize()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/elenco/snapcoder/AutoResizeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mWidthLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/elenco/snapcoder/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingMult:F

    return v0
.end method

.method static synthetic access$400(Lcom/elenco/snapcoder/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 20
    iget v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingAdd:F

    return v0
.end method

.method private adjustTextSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-boolean v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mInitiallized:Z

    if-nez v2, :cond_0

    .line 188
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMinTextSize:F

    float-to-int v1, v2

    .line 178
    .local v1, "startSize":I
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 179
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 180
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 181
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mWidthLimit:I

    .line 182
    iget-object v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mWidthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 183
    iget-object v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 184
    const/4 v2, 0x0

    iget v3, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxTextSize:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSizeTester:Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;

    iget-object v5, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 186
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->efficientTextSizeSearch(IILcom/elenco/snapcoder/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v3

    int-to-float v3, v3

    .line 184
    invoke-super {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static binarySearch(IILcom/elenco/snapcoder/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "sizeTester"    # Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;
    .param p3, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 263
    move v1, p0

    .line 264
    .local v1, "lastBest":I
    move v2, p0

    .line 265
    .local v2, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 266
    .local v0, "hi":I
    const/4 v3, 0x0

    .line 267
    .local v3, "mid":I
    :goto_0
    if-gt v2, v0, :cond_2

    .line 268
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 269
    invoke-interface {p2, v3, p3}, Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 270
    .local v4, "midValCmp":I
    if-gez v4, :cond_0

    .line 271
    move v1, v2

    .line 272
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    if-lez v4, :cond_1

    .line 274
    add-int/lit8 v0, v3, -0x1

    .line 275
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 282
    .end local v1    # "lastBest":I
    .end local v4    # "midValCmp":I
    :cond_2
    return v1
.end method

.method private efficientTextSizeSearch(IILcom/elenco/snapcoder/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/elenco/snapcoder/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 247
    iget-boolean v3, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mEnableSizeCache:Z

    if-nez v3, :cond_1

    .line 248
    invoke-static {p1, p2, p3, p4}, Lcom/elenco/snapcoder/AutoResizeTextView;->binarySearch(IILcom/elenco/snapcoder/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 252
    .local v0, "key":I
    :goto_1
    iget-object v3, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 253
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 256
    invoke-static {p1, p2, p3, p4}, Lcom/elenco/snapcoder/AutoResizeTextView;->binarySearch(IILcom/elenco/snapcoder/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 257
    iget-object v3, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 251
    .end local v0    # "key":I
    .end local v1    # "size":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    .line 76
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxTextSize:F

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    .line 79
    iget v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mInitiallized:Z

    .line 84
    return-void
.end method

.method private reAdjust()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method public enableSizeCache(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mEnableSizeCache:Z

    .line 241
    iget-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 298
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 301
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 290
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 291
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 155
    iput p2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingMult:F

    .line 156
    iput p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mSpacingAdd:F

    .line 157
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 133
    iput p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    .line 134
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 135
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxlines"    # I

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 104
    iput p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    .line 105
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 106
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 165
    iput p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMinTextSize:F

    .line 166
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 167
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    .line 116
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 117
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->reAdjust()V

    .line 128
    return-void

    .line 125
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxLines:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxTextSize:F

    .line 97
    iget-object v0, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 98
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 146
    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mMaxTextSize:F

    .line 148
    iget-object v2, p0, Lcom/elenco/snapcoder/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 149
    invoke-virtual {p0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/elenco/snapcoder/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 150
    return-void

    .line 145
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method
