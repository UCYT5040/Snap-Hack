.class public Lcom/elenco/snapcoder/ChapterClass;
.super Ljava/lang/Object;
.source "ChapterClass.java"


# instance fields
.field private captions:[Ljava/lang/String;

.field private captionsUsed:Z

.field private chapNum:I

.field private chapType:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private pageCnt:I

.field private ref:Landroid/content/res/TypedArray;

.field private title:Ljava/lang/String;

.field private titleRef:I


# direct methods
.method public constructor <init>(IILandroid/content/res/TypedArray;ILjava/lang/String;)V
    .locals 4
    .param p1, "chapterNumber"    # I
    .param p2, "pageCount"    # I
    .param p3, "references"    # Landroid/content/res/TypedArray;
    .param p4, "displayRef"    # I
    .param p5, "chapterTitle"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/elenco/snapcoder/ChapterClass;->chapNum:I

    .line 64
    iput p2, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    .line 65
    iput-object p3, p0, Lcom/elenco/snapcoder/ChapterClass;->ref:Landroid/content/res/TypedArray;

    .line 66
    iput p4, p0, Lcom/elenco/snapcoder/ChapterClass;->titleRef:I

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    .line 68
    iget v1, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    .line 69
    const-string v1, "Whoops, look like there\'s an error here! Let me check my logs..."

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captionsUsed:Z

    .line 74
    iput-object p5, p0, Lcom/elenco/snapcoder/ChapterClass;->title:Ljava/lang/String;

    .line 75
    const-string v1, "Tutorial"

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->chapType:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(IILandroid/content/res/TypedArray;Ljava/lang/String;)V
    .locals 4
    .param p1, "chapterNumber"    # I
    .param p2, "pageCount"    # I
    .param p3, "references"    # Landroid/content/res/TypedArray;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/elenco/snapcoder/ChapterClass;->chapNum:I

    .line 38
    iput p2, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    .line 39
    iput-object p3, p0, Lcom/elenco/snapcoder/ChapterClass;->ref:Landroid/content/res/TypedArray;

    .line 40
    iput-object p4, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    .line 41
    iget v1, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    .line 42
    const-string v1, "Whoops, look like there\'s an error here! Let me check my logs..."

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/elenco/snapcoder/ChapterClass;->captionsUsed:Z

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->title:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(IILandroid/content/res/TypedArray;[Ljava/lang/String;)V
    .locals 2
    .param p1, "chapterNumber"    # I
    .param p2, "pageCount"    # I
    .param p3, "references"    # Landroid/content/res/TypedArray;
    .param p4, "captionArray"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/elenco/snapcoder/ChapterClass;->chapNum:I

    .line 53
    iput p2, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    .line 54
    iput-object p3, p0, Lcom/elenco/snapcoder/ChapterClass;->ref:Landroid/content/res/TypedArray;

    .line 55
    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/ChapterClass;->captionsUsed:Z

    .line 58
    iput-object v1, p0, Lcom/elenco/snapcoder/ChapterClass;->title:Ljava/lang/String;

    .line 59
    const-string v0, "Comic"

    iput-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->chapType:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getCap(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 96
    :cond_0
    const-string v0, "CHAPTER_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Attempted to pass value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into Captions array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getCapUsed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/elenco/snapcoder/ChapterClass;->captionsUsed:Z

    return v0
.end method

.method public getChapType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->chapType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->chapType:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChapter()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/elenco/snapcoder/ChapterClass;->chapNum:I

    return v0
.end method

.method public getChapterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/elenco/snapcoder/ChapterClass;->chapNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    return v0
.end method

.method public getRef(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->ref:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->extra:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/ChapterClass;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCaps([Ljava/lang/String;Z)V
    .locals 0
    .param p1, "newCaps"    # [Ljava/lang/String;
    .param p2, "onSwitch"    # Z

    .prologue
    .line 129
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterClass;->captions:[Ljava/lang/String;

    .line 130
    iput-boolean p2, p0, Lcom/elenco/snapcoder/ChapterClass;->captionsUsed:Z

    .line 131
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "newDesc"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterClass;->desc:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPageCnt(I)V
    .locals 0
    .param p1, "newPageCnt"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/elenco/snapcoder/ChapterClass;->pageCnt:I

    .line 121
    return-void
.end method

.method public setRef(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "newRef"    # Landroid/content/res/TypedArray;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/elenco/snapcoder/ChapterClass;->ref:Landroid/content/res/TypedArray;

    .line 124
    return-void
.end method
