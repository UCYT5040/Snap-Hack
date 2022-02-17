.class public Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;
.super Ljava/lang/Object;
.source "CommandBots.java"


# static fields
.field public static final KEY_BotId:Ljava/lang/String; = "BotId"

.field public static final KEY_CommandBotCommandId:Ljava/lang/String; = "CommandBotCommandId"

.field public static final KEY_CommandBotId:Ljava/lang/String; = "CommandBotId"

.field public static final TABLE:Ljava/lang/String; = "CommandBots"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private botId:I

.field private commandBotCommandId:I

.field private commandBotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->TAG:Ljava/lang/String;

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
.method public getBotId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->botId:I

    return v0
.end method

.method public getCommandBotCommandId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->commandBotCommandId:I

    return v0
.end method

.method public getCommandBotId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->commandBotId:I

    return v0
.end method

.method public setBotId(I)V
    .locals 0
    .param p1, "botId"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->botId:I

    .line 38
    return-void
.end method

.method public setCommandBotCommandId(I)V
    .locals 0
    .param p1, "commandBotCommandId"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->commandBotCommandId:I

    .line 48
    return-void
.end method

.method public setCommandBotId(I)V
    .locals 0
    .param p1, "commandBotId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/CommandBots;->commandBotId:I

    .line 28
    return-void
.end method
