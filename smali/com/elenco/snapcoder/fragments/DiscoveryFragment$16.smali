.class Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/fragments/DiscoveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 897
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v2, "botsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v8, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-boolean v8, v8, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->firstTime:Z

    if-nez v8, :cond_9

    .line 900
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 901
    .local v0, "bot":Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBots:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 902
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 933
    .end local v0    # "bot":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 934
    .restart local v0    # "bot":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 935
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 937
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v10

    const v11, 0x7f0800d4

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 938
    .local v4, "discoveredBotTable":Landroid/widget/TableLayout;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 939
    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 941
    const/4 v10, 0x2

    invoke-virtual {v4, v5, v10}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 943
    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 946
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v11, "NO SC CONTROLLER(S) FOUND..."

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v11, "Make sure your SC Controller is turned on and has working batteries."

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 951
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 952
    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 938
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 907
    .end local v0    # "bot":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "discoveredBotTable":Landroid/widget/TableLayout;
    .end local v5    # "i":I
    :cond_3
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v1, "botsNotToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 909
    .local v7, "removingBot":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/elenco/snapcoder/model/Bot;

    .line 910
    .local v3, "connectedCircuits":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v3}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 911
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 916
    .end local v3    # "connectedCircuits":Lcom/elenco/snapcoder/model/Bot;
    .end local v7    # "removingBot":Landroid/bluetooth/BluetoothDevice;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 917
    .local v6, "removeBot":Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 918
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 919
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 917
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 925
    .end local v1    # "botsNotToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5    # "i":I
    .end local v6    # "removeBot":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    iget-object v8, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->firstTime:Z

    .line 927
    :cond_a
    iget-object v8, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v8, v8, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 934
    .restart local v0    # "bot":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 935
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getDiscoveredBots()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 937
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v9

    const v10, 0x7f0800d4

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 938
    .restart local v4    # "discoveredBotTable":Landroid/widget/TableLayout;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_b

    .line 939
    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 941
    const/4 v9, 0x2

    invoke-virtual {v4, v5, v9}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 943
    invoke-virtual {v4}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_c

    .line 946
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->welcomeLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->normalLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v10, "NO SC CONTROLLER(S) FOUND..."

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const-string v10, "Make sure your SC Controller is turned on and has working batteries."

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->statusText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 951
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->hintText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 952
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->scanningText:Lcom/elenco/snapcoder/AutoResizeTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 938
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 961
    .end local v0    # "bot":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "discoveredBotTable":Landroid/widget/TableLayout;
    .end local v5    # "i":I
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v8, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-static {v8}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->access$000(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v9, v9, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mStatusChecker:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 965
    return-void

    .line 961
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v9, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-static {v9}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->access$000(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment$16;->this$0:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->mStatusChecker:Ljava/lang/Runnable;

    const-wide/16 v12, 0x1388

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 964
    throw v8
.end method
