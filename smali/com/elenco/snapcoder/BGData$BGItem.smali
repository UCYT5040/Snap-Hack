.class public Lcom/elenco/snapcoder/BGData$BGItem;
.super Ljava/lang/Object;
.source "BGData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BGData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BGItem"
.end annotation


# instance fields
.field bgID:I

.field iconID:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "IconID"    # I
    .param p3, "BgID"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/elenco/snapcoder/BGData$BGItem;->title:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/elenco/snapcoder/BGData$BGItem;->iconID:I

    .line 59
    iput p3, p0, Lcom/elenco/snapcoder/BGData$BGItem;->bgID:I

    .line 60
    return-void
.end method
