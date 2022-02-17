.class public Lcom/elenco/snapcoder/BotCode/bot_edit_command;
.super Landroid/support/v4/app/Fragment;
.source "bot_edit_command.java"


# instance fields
.field private CIRCUIT_NAME:Ljava/lang/String;

.field private SC_CONTROLLER_NAME:Ljava/lang/String;

.field affectedBotsIndex:I

.field durationButton:Landroid/widget/Button;

.field fastSpeed:Landroid/widget/FrameLayout;

.field highSpeedButton:Landroid/widget/Button;

.field highSpeedImage:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field isCircuit:Z

.field private listOfAffectedBotsLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;>;"
        }
    .end annotation
.end field

.field lowSpeedButton:Landroid/widget/Button;

.field lowSpeedImage:Landroid/widget/ImageView;

.field mediumSpeed:Landroid/widget/FrameLayout;

.field pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

.field selectedBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/elenco/snapcoder/model/Bot;",
            ">;"
        }
    .end annotation
.end field

.field setCommandId:I

.field slowSpeed:Landroid/widget/FrameLayout;

.field speedSelected:Ljava/lang/String;

.field speedShifter:Landroid/widget/ImageView;

.field speedToggle:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 46
    const-string v0, "Fast"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    .line 60
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->SC_CONTROLLER_NAME:Ljava/lang/String;

    .line 61
    const-string v0, "MCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->CIRCUIT_NAME:Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->isCircuit:Z

    .line 551
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$6;

    invoke-direct {v0, p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$6;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->closeMe()V

    return-void
.end method

.method static synthetic access$100(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeMe()V
    .locals 4

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 545
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "botEditCommand"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 546
    .local v0, "botEditCommandFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method BotChosen(Landroid/widget/ImageButton;)V
    .locals 11
    .param p1, "botChosen"    # Landroid/widget/ImageButton;

    .prologue
    .line 188
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    .line 192
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 198
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f0800e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    .line 199
    .local v4, "firstRowBots":Landroid/widget/TableRow;
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f0800e1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TableRow;

    .line 202
    .local v6, "secondRowBots":Landroid/widget/TableRow;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v8, 0x8

    if-ge v5, v8, :cond_7

    .line 204
    new-instance v2, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 205
    .local v2, "botImageButton":Landroid/widget/ImageButton;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, "botHolder":Landroid/widget/LinearLayout;
    packed-switch v5, :pswitch_data_0

    .line 242
    :goto_2
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 243
    new-instance v7, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v7}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 244
    .local v7, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_3
    packed-switch v8, :pswitch_data_1

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 282
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    const/4 v9, 0x4

    if-ge v5, v9, :cond_6

    .line 283
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 284
    move-object v7, v0

    .line 295
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v3    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v7    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    .end local v4    # "firstRowBots":Landroid/widget/TableRow;
    .end local v5    # "i":I
    .end local v6    # "secondRowBots":Landroid/widget/TableRow;
    :cond_5
    const v8, 0x3f333333    # 0.7f

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto/16 :goto_0

    .line 209
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    .restart local v4    # "firstRowBots":Landroid/widget/TableRow;
    .restart local v5    # "i":I
    .restart local v6    # "secondRowBots":Landroid/widget/TableRow;
    :pswitch_0
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f080045

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 210
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 211
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto :goto_2

    .line 213
    :pswitch_1
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f080047

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 214
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 215
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 217
    :pswitch_2
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f080049

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 218
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 219
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 221
    :pswitch_3
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f08004b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 222
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 223
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 225
    :pswitch_4
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f08004d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 226
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 227
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 229
    :pswitch_5
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f08004f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 231
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 233
    :pswitch_6
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f080051

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 234
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .line 235
    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 237
    :pswitch_7
    iget-object v8, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v9, 0x7f080053

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 238
    .restart local v1    # "botHolder":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v2, Landroid/widget/ImageButton;

    .restart local v2    # "botImageButton":Landroid/widget/ImageButton;
    goto/16 :goto_2

    .line 244
    .restart local v7    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :sswitch_0
    const-string v10, "BlueVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v10, "RedVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v10, "PinkVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string v10, "PurpleVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string v10, "GreenVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x4

    goto/16 :goto_3

    :sswitch_5
    const-string v10, "OrangeVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x5

    goto/16 :goto_3

    :sswitch_6
    const-string v10, "YellowVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x6

    goto/16 :goto_3

    :sswitch_7
    const-string v10, "TealVirtual"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x7

    goto/16 :goto_3

    .line 246
    :pswitch_8
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 247
    const-string v8, "Blue"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 250
    :pswitch_9
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 251
    const-string v8, "Red"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 254
    :pswitch_a
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 255
    const-string v8, "Pink"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 258
    :pswitch_b
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 259
    const-string v8, "Purple"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 262
    :pswitch_c
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 263
    const-string v8, "Green"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 266
    :pswitch_d
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 267
    const-string v8, "Orange"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 270
    :pswitch_e
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 271
    const-string v8, "Yellow"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 274
    :pswitch_f
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 275
    const-string v8, "Teal"

    invoke-virtual {v7, v8}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 288
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .restart local v3    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    :cond_6
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v5, -0x4

    invoke-virtual {v6, v10}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 289
    move-object v7, v0

    .line 290
    goto/16 :goto_4

    .line 298
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v1    # "botHolder":Landroid/widget/LinearLayout;
    .end local v2    # "botImageButton":Landroid/widget/ImageButton;
    .end local v3    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v7    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :cond_7
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 244
    :sswitch_data_0
    .sparse-switch
        -0x73ddef23 -> :sswitch_5
        -0x4fef0acf -> :sswitch_0
        -0x440d0311 -> :sswitch_7
        -0x2e82baa6 -> :sswitch_1
        -0x198ba829 -> :sswitch_6
        0x42d2f38f -> :sswitch_3
        0x591e6c95 -> :sswitch_2
        0x71d8e2a8 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public DisplayInformation(IILandroid/widget/ImageView;)V
    .locals 5
    .param p1, "commandID"    # I
    .param p2, "listOfAffectedBotsIndex"    # I
    .param p3, "speedImage"    # Landroid/widget/ImageView;

    .prologue
    .line 485
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 486
    .local v0, "commandDisplay":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 487
    .local v1, "commandInfo":Lcom/elenco/snapcoder/AutoResizeTextView;
    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v4, 0x7f080149

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 489
    .local v2, "inputText":Landroid/widget/TextView;
    iput p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->setCommandId:I

    .line 491
    sparse-switch p1, :sswitch_data_0

    .line 538
    :goto_0
    iput p2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    .line 540
    invoke-virtual {p0, p3}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->LoadInBots(Landroid/widget/ImageView;)V

    .line 541
    return-void

    .line 493
    :sswitch_0
    const v3, 0x7f0700dc

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    const-string v3, "Power both wheels forward"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :sswitch_1
    const v3, 0x7f0700b0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    const-string v3, "Power both wheels in reverse"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 501
    :sswitch_2
    const v3, 0x7f07010d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    const-string v3, "Turns bot left by powering only the right wheel"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 505
    :sswitch_3
    const v3, 0x7f070112

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    const-string v3, "Turns bot right by powering only the left wheel"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :sswitch_4
    const v3, 0x7f0700ff

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    const-string v3, "Turns bot hard left by powering right wheel forward and left wheel in reverse"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 513
    :sswitch_5
    const v3, 0x7f070104

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    const-string v3, "Turns bot hard right by powering left wheel forward and right wheel in reverse"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :sswitch_6
    const v3, 0x7f0700d4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    const-string v3, "Turns on voltage at D1 snap"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    :sswitch_7
    const v3, 0x7f0700d5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    const-string v3, "Turns on voltage at D2 snap"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 525
    :sswitch_8
    const v3, 0x7f0700d6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    const-string v3, "Turns on voltage at D3 snap"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :sswitch_9
    const v3, 0x7f0700d7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    const-string v3, "Turns on voltage at D4 snap"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :sswitch_a
    const v3, 0x7f0700af

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    const-string v3, "Turns on voltage at A snap"

    invoke-virtual {v1, v3}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 491
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08007c -> :sswitch_6
        0x7f08007d -> :sswitch_7
        0x7f08007e -> :sswitch_8
        0x7f08007f -> :sswitch_9
        0x7f080107 -> :sswitch_4
        0x7f080108 -> :sswitch_5
        0x7f080171 -> :sswitch_1
        0x7f080176 -> :sswitch_0
        0x7f08017f -> :sswitch_2
        0x7f080183 -> :sswitch_3
        0x7f0801ea -> :sswitch_a
    .end sparse-switch
.end method

.method LoadInBots(Landroid/widget/ImageView;)V
    .locals 17
    .param p1, "speedImage"    # Landroid/widget/ImageView;

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->setCommandId:I

    sparse-switch v13, :sswitch_data_0

    .line 314
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v6, "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v6

    .line 317
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 318
    const/4 v7, 0x0

    .line 320
    .local v7, "counter":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/model/Bot;

    .line 322
    .local v1, "bot":Lcom/elenco/snapcoder/model/Bot;
    new-instance v3, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 323
    .local v3, "botImageButton":Landroid/widget/ImageButton;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "botHolder":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/elenco/snapcoder/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    .line 326
    .local v5, "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    packed-switch v7, :pswitch_data_0

    .line 352
    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "botImageButton":Landroid/widget/ImageButton;
    check-cast v3, Landroid/widget/ImageButton;

    .line 353
    .restart local v3    # "botImageButton":Landroid/widget/ImageButton;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    check-cast v5, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 355
    .restart local v5    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v15

    const/4 v13, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    :cond_0
    :goto_3
    packed-switch v13, :pswitch_data_1

    .line 369
    :goto_4
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    move-object v4, v3

    .line 372
    .local v4, "botImageClone":Landroid/widget/ImageButton;
    new-instance v13, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x3

    if-le v13, v15, :cond_2

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->SC_CONTROLLER_NAME:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->CIRCUIT_NAME:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 382
    :cond_1
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_5
    const v13, 0x3f333333    # 0.7f

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 389
    add-int/lit8 v7, v7, 0x1

    .line 390
    goto/16 :goto_1

    .line 310
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    .end local v3    # "botImageButton":Landroid/widget/ImageButton;
    .end local v4    # "botImageClone":Landroid/widget/ImageButton;
    .end local v5    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v6    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .end local v7    # "counter":I
    :sswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->isCircuit:Z

    goto/16 :goto_0

    .line 328
    .restart local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    .restart local v3    # "botImageButton":Landroid/widget/ImageButton;
    .restart local v5    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v6    # "connectedBots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;"
    .restart local v7    # "counter":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f080045

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 329
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 331
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f080047

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 332
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 334
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f080049

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 335
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 337
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f08004b

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 338
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 340
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f08004d

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 341
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 343
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f08004f

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 344
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 346
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f080051

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 347
    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 349
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v15, 0x7f080053

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .restart local v2    # "botHolder":Landroid/widget/LinearLayout;
    goto/16 :goto_2

    .line 355
    :sswitch_1
    const-string v16, "Red"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    goto/16 :goto_3

    :sswitch_2
    const-string v16, "Blue"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x1

    goto/16 :goto_3

    :sswitch_3
    const-string v16, "Green"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x2

    goto/16 :goto_3

    :sswitch_4
    const-string v16, "Yellow"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x3

    goto/16 :goto_3

    .line 357
    :pswitch_8
    const v13, 0x7f0700f2

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 360
    :pswitch_9
    const v13, 0x7f0700b4

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 363
    :pswitch_a
    const v13, 0x7f0700de

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 366
    :pswitch_b
    const v13, 0x7f070115

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 384
    .restart local v4    # "botImageClone":Landroid/widget/ImageButton;
    :cond_2
    invoke-virtual {v1}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 393
    .end local v1    # "bot":Lcom/elenco/snapcoder/model/Bot;
    .end local v2    # "botHolder":Landroid/widget/LinearLayout;
    .end local v3    # "botImageButton":Landroid/widget/ImageButton;
    .end local v4    # "botImageClone":Landroid/widget/ImageButton;
    .end local v5    # "botNameText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v7    # "counter":I
    :cond_3
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_a

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v13}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0800e0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableRow;

    .line 396
    .local v8, "firstRowBots":Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0800e1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    .line 397
    .local v12, "secondRowBots":Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v13}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v14

    const/4 v13, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    :cond_4
    :goto_7
    packed-switch v13, :pswitch_data_2

    .line 393
    .end local v8    # "firstRowBots":Landroid/widget/TableRow;
    .end local v12    # "secondRowBots":Landroid/widget/TableRow;
    :cond_5
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 397
    .restart local v8    # "firstRowBots":Landroid/widget/TableRow;
    .restart local v12    # "secondRowBots":Landroid/widget/TableRow;
    :sswitch_5
    const-string v15, "Blue"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x0

    goto :goto_7

    :sswitch_6
    const-string v15, "Green"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    goto :goto_7

    :sswitch_7
    const-string v15, "Orange"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x2

    goto :goto_7

    :sswitch_8
    const-string v15, "Yellow"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x3

    goto :goto_7

    :sswitch_9
    const-string v15, "Red"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x4

    goto :goto_7

    :sswitch_a
    const-string v15, "Purple"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x5

    goto :goto_7

    :sswitch_b
    const-string v15, "Pink"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x6

    goto :goto_7

    :sswitch_c
    const-string v15, "Teal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x7

    goto :goto_7

    .line 399
    :pswitch_c
    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 402
    :pswitch_d
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 405
    :pswitch_e
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 408
    :pswitch_f
    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 411
    :pswitch_10
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 414
    :pswitch_11
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 417
    :pswitch_12
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 420
    :pswitch_13
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 423
    .end local v8    # "firstRowBots":Landroid/widget/TableRow;
    .end local v12    # "secondRowBots":Landroid/widget/TableRow;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v13}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v13

    if-nez v13, :cond_5

    .line 424
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    const/4 v13, 0x4

    if-ge v9, v13, :cond_8

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0800e0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableRow;

    .line 426
    .restart local v8    # "firstRowBots":Landroid/widget/TableRow;
    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v13}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v13

    if-ne v14, v13, :cond_7

    .line 427
    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 424
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 431
    .end local v8    # "firstRowBots":Landroid/widget/TableRow;
    :cond_8
    const/4 v9, 0x0

    :goto_a
    const/4 v13, 0x4

    if-ge v9, v13, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0800e1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableRow;

    .line 433
    .restart local v12    # "secondRowBots":Landroid/widget/TableRow;
    invoke-virtual {v12, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v13}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v13

    if-ne v14, v13, :cond_9

    .line 434
    invoke-virtual {v12, v9}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 431
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 439
    .end local v9    # "i":I
    .end local v12    # "secondRowBots":Landroid/widget/TableRow;
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->BotChosen(Landroid/widget/ImageButton;)V

    .line 441
    move-object/from16 v0, p0

    iget v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->setCommandId:I

    const v14, 0x7f0801ea

    if-eq v13, v14, :cond_b

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f080170

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 443
    .local v11, "motorCircuitSpeedLayout":Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0801fd

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedToggle:Landroid/widget/ImageView;

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0801f4

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->highSpeedButton:Landroid/widget/Button;

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f0801fb

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->lowSpeedButton:Landroid/widget/Button;

    .line 448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f08010a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->highSpeedImage:Landroid/widget/ImageView;

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v14, 0x7f08016a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->lowSpeedImage:Landroid/widget/ImageView;

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->highSpeedButton:Landroid/widget/Button;

    new-instance v14, Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->lowSpeedButton:Landroid/widget/Button;

    new-instance v14, Lcom/elenco/snapcoder/BotCode/bot_edit_command$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$5;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v14

    const v15, 0x7f0700e0

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    if-ne v13, v14, :cond_c

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedToggle:Landroid/widget/ImageView;

    const v14, 0x7f07007a

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    const-string v13, "Fast"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    .line 481
    .end local v11    # "motorCircuitSpeedLayout":Landroid/widget/LinearLayout;
    :cond_b
    :goto_b
    return-void

    .line 477
    .restart local v11    # "motorCircuitSpeedLayout":Landroid/widget/LinearLayout;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedToggle:Landroid/widget/ImageView;

    const v14, 0x7f070078

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    const-string v13, "Slow"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    goto :goto_b

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08007c -> :sswitch_0
        0x7f08007d -> :sswitch_0
        0x7f08007e -> :sswitch_0
        0x7f08007f -> :sswitch_0
        0x7f0801ea -> :sswitch_0
    .end sparse-switch

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 355
    :sswitch_data_1
    .sparse-switch
        -0x625eaf6c -> :sswitch_4
        0x14071 -> :sswitch_1
        0x1fa47a -> :sswitch_2
        0x41ddee3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 397
    :sswitch_data_2
    .sparse-switch
        -0x72bcedb2 -> :sswitch_7
        -0x70d60c24 -> :sswitch_a
        -0x625eaf6c -> :sswitch_8
        0x14071 -> :sswitch_9
        0x1fa47a -> :sswitch_5
        0x25f596 -> :sswitch_b
        0x27b67c -> :sswitch_c
        0x41ddee3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method changeSpeed(Ljava/lang/String;)V
    .locals 2
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    iput-object p1, v0, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 567
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 593
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 595
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 596
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 597
    const-string v0, "Fast"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    .line 601
    :cond_1
    :goto_1
    return-void

    .line 567
    :sswitch_0
    const-string v1, "Fast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Medium"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "Slow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_1

    .line 570
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 571
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 572
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 573
    const-string v0, "Fast"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    goto :goto_1

    .line 577
    :pswitch_1
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->mediumSpeed:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_1

    .line 578
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 579
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->slowSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 580
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->mediumSpeed:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 581
    const-string v0, "Medium"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    goto :goto_1

    .line 585
    :pswitch_2
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->slowSpeed:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_1

    .line 586
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->fastSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 587
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->mediumSpeed:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 588
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->slowSpeed:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedShifter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 589
    const-string v0, "Slow"

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    goto :goto_1

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_1
        0x214c7c -> :sswitch_0
        0x275e21 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setBotEditCommand(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    .line 67
    const v2, 0x7f0a0022

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    .line 68
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->inflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v3, 0x7f08008d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 71
    .local v0, "closeButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_edit_command$1;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$1;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 80
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getNumberPickerFragment()Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->pickerCallback:Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->setNumberPickerCallback(Lcom/elenco/snapcoder/fragments/NumberPickerCallback;)V

    .line 82
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->durationButton:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 84
    .local v1, "confirmButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;

    invoke-direct {v2, p0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;-><init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->view:Landroid/view/View;

    return-object v2
.end method
