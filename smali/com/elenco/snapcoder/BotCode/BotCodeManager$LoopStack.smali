.class Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;
.super Ljava/lang/Object;
.source "BotCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopStack"
.end annotation


# instance fields
.field private loops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/BotCode/BotCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->loops:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/BotCode/BotCodeManager$1;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;-><init>()V

    return-void
.end method


# virtual methods
.method public addLoopToStack(Lcom/elenco/snapcoder/BotCode/BotCommand;)V
    .locals 2
    .param p1, "botCommand"    # Lcom/elenco/snapcoder/BotCode/BotCommand;

    .prologue
    .line 242
    const-string v0, "beginningOfLoop"

    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/BotCode/BotCommand;->setCommand(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->loops:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->loops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLoopFromStack()Lcom/elenco/snapcoder/BotCode/BotCommand;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$LoopStack;->loops:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/BotCode/BotCommand;

    return-object v0
.end method
