.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;
.super Ljava/lang/Object;
.source "ProgramSaver.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver;->generateRandomString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

.field final synthetic val$botCodeList:Ljava/util/ArrayList;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->val$botCodeList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .prologue
    .line 854
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .prologue
    .line 837
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/DataSnapshot;

    .line 838
    .local v2, "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v4, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    .line 840
    .local v0, "BotCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    iget-object v4, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->val$botCodeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 843
    .end local v0    # "BotCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    .end local v2    # "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    :cond_0
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->val$botCodeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    .line 844
    .local v1, "bdb":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$6;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->foundCode:Z

    .line 849
    .end local v1    # "bdb":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    :cond_2
    return-void
.end method
