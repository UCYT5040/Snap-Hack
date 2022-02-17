.class public Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;
.super Ljava/lang/Object;
.source "BlocklyName.java"


# static fields
.field public static final KEY_BlocklyId:Ljava/lang/String; = "BlocklyId"

.field public static final KEY_BlocklyName:Ljava/lang/String; = "BlocklyName"

.field public static final TABLE:Ljava/lang/String; = "BlocklyName"


# instance fields
.field private blocklyId:I

.field private blocklyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlocklyId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->blocklyId:I

    return v0
.end method

.method public getBlocklyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->blocklyName:Ljava/lang/String;

    return-object v0
.end method

.method public setBlocklyId(I)V
    .locals 0
    .param p1, "blocklyId"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->blocklyId:I

    .line 25
    return-void
.end method

.method public setBlocklyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "blocklyName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/BlocklyName;->blocklyName:Ljava/lang/String;

    .line 35
    return-void
.end method
