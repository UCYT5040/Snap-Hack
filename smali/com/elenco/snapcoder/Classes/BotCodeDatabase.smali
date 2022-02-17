.class public Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
.super Ljava/lang/Object;
.source "BotCodeDatabase.java"


# annotations
.annotation runtime Lcom/google/firebase/database/IgnoreExtraProperties;
.end annotation


# instance fields
.field private botCodeString:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "botCodeString"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->id:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->botCodeString:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->code:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->date:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getBotCodeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->botCodeString:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->id:Ljava/lang/String;

    return-object v0
.end method
