.class public Lcom/elenco/snapcoder/SQLite/data/model/Blockly;
.super Ljava/lang/Object;
.source "Blockly.java"


# static fields
.field public static final KEY_BlocklyId:Ljava/lang/String; = "BlocklyId"

.field public static final KEY_BlocklyName:Ljava/lang/String; = "BlocklyName"

.field public static final KEY_BlocklyXML:Ljava/lang/String; = "BlocklyXML"

.field public static final TABLE:Ljava/lang/String; = "Blockly"


# instance fields
.field private blocklyId:I

.field private blocklyName:Ljava/lang/String;

.field private blocklyXML:Ljava/lang/String;


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
    .line 22
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyId:I

    return v0
.end method

.method public getBlocklyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlocklyXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyXML:Ljava/lang/String;

    return-object v0
.end method

.method public setBlocklyId(I)V
    .locals 0
    .param p1, "blocklyId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyId:I

    .line 28
    return-void
.end method

.method public setBlocklyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "blocklyName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setBlocklyXML(Ljava/lang/String;)V
    .locals 0
    .param p1, "blocklyXML"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Blockly;->blocklyXML:Ljava/lang/String;

    return-void
.end method
