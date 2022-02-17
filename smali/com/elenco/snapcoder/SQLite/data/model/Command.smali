.class public Lcom/elenco/snapcoder/SQLite/data/model/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field public static final KEY_Command:Ljava/lang/String; = "Command"

.field public static final KEY_CommandId:Ljava/lang/String; = "CommandId"

.field public static final KEY_CommandOrder:Ljava/lang/String; = "CommandOrder"

.field public static final KEY_CommandType:Ljava/lang/String; = "CommandType"

.field public static final KEY_Comment:Ljava/lang/String; = "Comment"

.field public static final KEY_Duration:Ljava/lang/String; = "Duration"

.field public static final KEY_Iteration:Ljava/lang/String; = "Iteration"

.field public static final KEY_Speed:Ljava/lang/String; = "Speed"

.field public static final KEY_SubroutineId:Ljava/lang/String; = "SubroutineId"

.field public static final TABLE:Ljava/lang/String; = "Command"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private command:Ljava/lang/String;

.field private commandId:I

.field private commandOrder:I

.field private commandType:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private duration:F

.field private iteration:I

.field private speed:Ljava/lang/String;

.field private subroutineId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommandId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandId:I

    return v0
.end method

.method public getCommandOrder()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandOrder:I

    return v0
.end method

.method public getCommandSQL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandType:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->duration:F

    return v0
.end method

.method public getIteration()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->iteration:I

    return v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getSubroutineId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->subroutineId:I

    return v0
.end method

.method public setCommandId(I)V
    .locals 0
    .param p1, "commandId"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandId:I

    .line 44
    return-void
.end method

.method public setCommandOrder(I)V
    .locals 0
    .param p1, "commandOrder"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandOrder:I

    .line 74
    return-void
.end method

.method public setCommandSQL(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->command:Ljava/lang/String;

    return-void
.end method

.method public setCommandType(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandType"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->commandType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->comment:Ljava/lang/String;

    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->duration:F

    .line 64
    return-void
.end method

.method public setIteration(I)V
    .locals 0
    .param p1, "iteration"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->iteration:I

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->speed:Ljava/lang/String;

    return-void
.end method

.method public setSubroutineId(I)V
    .locals 0
    .param p1, "subroutineId"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Command;->subroutineId:I

    return-void
.end method
