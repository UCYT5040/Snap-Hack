.class public Lcom/elenco/snapcoder/dummy/DummyContent;
.super Ljava/lang/Object;
.source "DummyContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;
    }
.end annotation


# static fields
.field private static final COUNT:I = 0x5

.field public static final ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/dummy/DummyContent;->ITEMS:Ljava/util/List;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/elenco/snapcoder/dummy/DummyContent;->ITEM_MAP:Ljava/util/Map;

    .line 30
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 31
    invoke-static {v0}, Lcom/elenco/snapcoder/dummy/DummyContent;->createDummyItem(I)Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/dummy/DummyContent;->addItem(Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem(Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;)V
    .locals 2
    .param p0, "item"    # Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;

    .prologue
    .line 36
    sget-object v0, Lcom/elenco/snapcoder/dummy/DummyContent;->ITEMS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/elenco/snapcoder/dummy/DummyContent;->ITEM_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private static createDummyItem(I)Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;
    .locals 4
    .param p0, "position"    # I

    .prologue
    .line 41
    new-instance v0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/elenco/snapcoder/dummy/DummyContent;->makeDetails(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static makeDetails(I)Ljava/lang/String;
    .locals 3
    .param p0, "position"    # I

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Details about Item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 48
    const-string v2, "\nMore details information here."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
