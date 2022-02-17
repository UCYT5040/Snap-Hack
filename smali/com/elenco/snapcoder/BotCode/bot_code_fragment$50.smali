.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->searchDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$botCodeList:Ljava/util/ArrayList;

.field final synthetic val$codeInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Ljava/util/ArrayList;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 2753
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$botCodeList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$codeInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .prologue
    .line 2789
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 10
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .prologue
    .line 2757
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/DataSnapshot;

    .line 2758
    .local v5, "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v7, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    invoke-virtual {v5, v7}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    .line 2760
    .local v1, "botCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    iget-object v7, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$botCodeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2763
    .end local v1    # "botCodeDB":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    .end local v5    # "postSnapshot":Lcom/google/firebase/database/DataSnapshot;
    :cond_0
    const/4 v4, 0x0

    .line 2765
    .local v4, "foundCode":Z
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$botCodeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;

    .line 2766
    .local v0, "bdb":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    const-string v7, "MYTAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BotCodeDB, id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", codeInput: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$codeInput:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", date: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", BotCodeString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getBotCodeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$codeInput:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2770
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$codeInput:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2771
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v7, 0x7f080093

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2772
    .local v2, "cloudDownloadHolder":Landroid/widget/RelativeLayout;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2773
    const/4 v4, 0x1

    .line 2774
    const-string v6, "MYTAG"

    const-string v7, "FOUND IT!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getBotCodeString()Ljava/lang/String;

    move-result-object v3

    .line 2776
    .local v3, "codeString":Ljava/lang/String;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/Classes/BotCodeDatabase;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->loadCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    .end local v0    # "bdb":Lcom/elenco/snapcoder/Classes/BotCodeDatabase;
    .end local v2    # "cloudDownloadHolder":Landroid/widget/RelativeLayout;
    .end local v3    # "codeString":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    .line 2782
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/elenco/snapcoder/MainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No BotCode code was found with code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$50;->val$codeInput:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2784
    :cond_3
    return-void
.end method
