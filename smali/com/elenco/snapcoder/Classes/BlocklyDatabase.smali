.class public Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
.super Ljava/lang/Object;
.source "BlocklyDatabase.java"


# annotations
.annotation runtime Lcom/google/firebase/database/IgnoreExtraProperties;
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->xml:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->code:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->date:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->xml:Ljava/lang/String;

    return-object v0
.end method
