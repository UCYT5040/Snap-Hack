.class public Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;
.super Ljava/lang/Object;
.source "DummyContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/dummy/DummyContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyItem"
.end annotation


# instance fields
.field public final content:Ljava/lang/String;

.field public final details:Ljava/lang/String;

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "details"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;->id:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;->content:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;->details:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/elenco/snapcoder/dummy/DummyContent$DummyItem;->content:Ljava/lang/String;

    return-object v0
.end method
