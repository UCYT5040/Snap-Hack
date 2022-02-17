.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragEventListenerForBackground"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .param p2, "x1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$1;

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;-><init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1230
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 1232
    sget-boolean v8, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->programIsExecuting:Z

    if-eqz v8, :cond_0

    .line 1233
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/BotCodeManager;->stopExecutionTimer()V

    .line 1236
    :cond_0
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v8, v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v9, 0x7f080099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1240
    .local v0, "codeBay2":Landroid/widget/LinearLayout;
    :try_start_0
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1241
    .local v5, "index":I
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    .end local v5    # "index":I
    :goto_0
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, v0, :cond_9

    .line 1249
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_2

    .line 1250
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1251
    .restart local v5    # "index":I
    move v6, v5

    .local v6, "n":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_2

    .line 1252
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1253
    .local v1, "command":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_b

    .line 1254
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v6, -0x3

    if-le v8, v9, :cond_1

    .line 1255
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1257
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1264
    .end local v1    # "command":Landroid/widget/LinearLayout;
    .end local v5    # "index":I
    .end local v6    # "n":I
    :cond_2
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-ne v8, v9, :cond_4

    .line 1265
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1266
    .restart local v5    # "index":I
    move v6, v5

    .restart local v6    # "n":I
    :goto_2
    const/4 v8, 0x2

    if-lt v6, v8, :cond_4

    .line 1267
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1268
    .restart local v1    # "command":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-ne v8, v9, :cond_c

    .line 1269
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v6, -0x2

    if-le v8, v9, :cond_3

    .line 1270
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1272
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1279
    .end local v1    # "command":Landroid/widget/LinearLayout;
    .end local v5    # "index":I
    .end local v6    # "n":I
    :cond_4
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_6

    .line 1280
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1281
    .restart local v5    # "index":I
    move v6, v5

    .restart local v6    # "n":I
    :goto_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_6

    .line 1282
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1283
    .restart local v1    # "command":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_d

    .line 1284
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v6, -0x3

    if-le v8, v9, :cond_5

    .line 1285
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1287
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1294
    .end local v1    # "command":Landroid/widget/LinearLayout;
    .end local v5    # "index":I
    .end local v6    # "n":I
    :cond_6
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-ne v8, v9, :cond_8

    .line 1295
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1296
    .restart local v5    # "index":I
    move v6, v5

    .restart local v6    # "n":I
    :goto_4
    const/4 v8, 0x2

    if-lt v6, v8, :cond_8

    .line 1297
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1298
    .restart local v1    # "command":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_e

    .line 1299
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v6, -0x2

    if-le v8, v9, :cond_7

    .line 1300
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1302
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1309
    .end local v1    # "command":Landroid/widget/LinearLayout;
    .end local v5    # "index":I
    .end local v6    # "n":I
    :cond_8
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1311
    :cond_9
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    sget-object v9, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setListOfAffectedBotsLists(Ljava/util/ArrayList;)V

    .line 1314
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_f

    .line 1315
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v8, v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v9, 0x7f0801b4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1316
    .local v2, "dropActionsHereText":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1317
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v8, v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v9, 0x7f0800e8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1318
    .local v4, "endHeaderImage":Landroid/widget/ImageView;
    const v8, 0x7f0700db

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1319
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v8, v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v9, 0x7f0801d2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 1320
    .local v7, "openSaveButton":Landroid/widget/ImageButton;
    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1327
    .end local v0    # "codeBay2":Landroid/widget/LinearLayout;
    .end local v2    # "dropActionsHereText":Landroid/widget/LinearLayout;
    .end local v4    # "endHeaderImage":Landroid/widget/ImageView;
    .end local v7    # "openSaveButton":Landroid/widget/ImageButton;
    :cond_a
    :goto_5
    const/4 v8, 0x1

    return v8

    .line 1242
    .restart local v0    # "codeBay2":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v3

    .line 1243
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    goto/16 :goto_0

    .line 1251
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "command":Landroid/widget/LinearLayout;
    .restart local v5    # "index":I
    .restart local v6    # "n":I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1266
    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 1281
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1296
    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    .line 1322
    .end local v1    # "command":Landroid/widget/LinearLayout;
    .end local v5    # "index":I
    .end local v6    # "n":I
    :cond_f
    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080167

    if-eq v8, v9, :cond_10

    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080057

    if-eq v8, v9, :cond_10

    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0800e9

    if-eq v8, v9, :cond_10

    sget-object v8, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->draggedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f080110

    if-ne v8, v9, :cond_a

    .line 1323
    :cond_10
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$dragEventListenerForBackground;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    invoke-virtual {v8, v0}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->indentCode(Landroid/widget/LinearLayout;)V

    goto :goto_5
.end method
