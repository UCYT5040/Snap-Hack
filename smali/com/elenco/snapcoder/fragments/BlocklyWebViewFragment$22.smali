.class Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;
.super Ljava/lang/Object;
.source "BlocklyWebViewFragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->generateRandomString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

.field final synthetic val$blocklyList:Ljava/util/ArrayList;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->val$blocklyList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .prologue
    .line 1176
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .prologue
    .line 1159
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

    .line 1160
    .local v2, "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v4, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;

    .line 1162
    .local v1, "blocklyDB":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    iget-object v4, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->val$blocklyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1165
    .end local v1    # "blocklyDB":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    .end local v2    # "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    :cond_0
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->val$blocklyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;

    .line 1166
    .local v0, "bdb":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BlocklyDatabase;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1167
    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment$22;->this$0:Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->foundCode:Z

    .line 1171
    .end local v0    # "bdb":Lcom/elenco/snapcoder/Classes/BlocklyDatabase;
    :cond_2
    return-void
.end method
