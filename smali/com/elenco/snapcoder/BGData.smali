.class public Lcom/elenco/snapcoder/BGData;
.super Ljava/lang/Object;
.source "BGData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/BGData$BGTheme;,
        Lcom/elenco/snapcoder/BGData$BGItem;
    }
.end annotation


# static fields
.field private static DEFAULT_BG_ID:I

.field private static DEFAULT_ICON_ID:I

.field public static bgItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/BGData$BGItem;",
            ">;"
        }
    .end annotation
.end field

.field private static dummyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    .line 16
    const/4 v1, 0x3

    sput v1, Lcom/elenco/snapcoder/BGData;->dummyCount:I

    .line 17
    const v1, 0x7f0700d8

    sput v1, Lcom/elenco/snapcoder/BGData;->DEFAULT_ICON_ID:I

    .line 18
    const v1, 0x7f0700d0

    sput v1, Lcom/elenco/snapcoder/BGData;->DEFAULT_BG_ID:I

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/elenco/snapcoder/BGData;->dummyCount:I

    if-ge v0, v1, :cond_0

    .line 22
    invoke-static {v0}, Lcom/elenco/snapcoder/BGData;->createDummyItem(I)Lcom/elenco/snapcoder/BGData$BGItem;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BGData;->addItem(Lcom/elenco/snapcoder/BGData$BGItem;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem(Lcom/elenco/snapcoder/BGData$BGItem;)V
    .locals 1
    .param p0, "item"    # Lcom/elenco/snapcoder/BGData$BGItem;

    .prologue
    .line 27
    sget-object v0, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method private static createDummyItem(I)Lcom/elenco/snapcoder/BGData$BGItem;
    .locals 4
    .param p0, "position"    # I

    .prologue
    .line 35
    new-instance v0, Lcom/elenco/snapcoder/BGData$BGItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/elenco/snapcoder/BGData;->DEFAULT_ICON_ID:I

    sget v3, Lcom/elenco/snapcoder/BGData;->DEFAULT_BG_ID:I

    invoke-direct {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BGData$BGItem;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static removeItem(I)V
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 31
    sget-object v0, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public static replaceAllItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/BGData$BGItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/BGData$BGItem;>;"
    sget-object v1, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BGData$BGItem;

    .line 46
    .local v0, "item":Lcom/elenco/snapcoder/BGData$BGItem;
    sget-object v2, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "item":Lcom/elenco/snapcoder/BGData$BGItem;
    :cond_0
    return-void
.end method

.method public static replaceItem(ILcom/elenco/snapcoder/BGData$BGItem;)V
    .locals 1
    .param p0, "position"    # I
    .param p1, "newItem"    # Lcom/elenco/snapcoder/BGData$BGItem;

    .prologue
    .line 39
    sget-object v0, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/elenco/snapcoder/BGData;->bgItems:Ljava/util/List;

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41
    return-void
.end method
