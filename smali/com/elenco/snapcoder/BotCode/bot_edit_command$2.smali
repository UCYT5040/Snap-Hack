.class Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;
.super Ljava/lang/Object;
.source "bot_edit_command.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_edit_command;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const v13, 0x7f0700e0

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 88
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->durationButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->durationButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->durationButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v11, "."

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 89
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedTextViewForChange()Lcom/elenco/snapcoder/AutoResizeTextView;

    move-result-object v5

    .line 90
    .local v5, "textViewToChange":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->durationButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedBotImageForChange()Landroid/widget/ImageButton;

    move-result-object v1

    .line 93
    .local v1, "botImageToChange":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedBotTextForChange()Lcom/elenco/snapcoder/AutoResizeTextView;

    move-result-object v2

    .line 95
    .local v2, "botTextToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 96
    :cond_0
    new-instance v3, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v3}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 97
    .local v3, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v3, v9}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 98
    const-string v6, "Blue"

    invoke-virtual {v3, v6}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const v6, 0x7f07005e

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 137
    .end local v3    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :goto_0
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 138
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 139
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 140
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_2
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-static {v6}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->access$100(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget v11, v11, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->affectedBotsIndex:I

    iget-object v12, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v12, v12, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-static {v6}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->access$100(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 149
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedSpeedImageForChange()Landroid/widget/ImageView;

    move-result-object v4

    .line 151
    .local v4, "speedImage":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-boolean v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->isCircuit:Z

    if-nez v6, :cond_b

    .line 152
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 173
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    invoke-static {v6}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    .line 178
    .end local v1    # "botImageToChange":Landroid/widget/ImageButton;
    .end local v2    # "botTextToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v4    # "speedImage":Landroid/widget/ImageView;
    .end local v5    # "textViewToChange":Landroid/widget/TextView;
    :cond_5
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-static {v6}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->access$000(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    .line 179
    return-void

    .line 103
    .restart local v1    # "botImageToChange":Landroid/widget/ImageButton;
    .restart local v2    # "botTextToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v5    # "textViewToChange":Landroid/widget/TextView;
    :cond_6
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v6}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :cond_7
    move v6, v8

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 118
    :goto_4
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_9

    .line 119
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 120
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 121
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_9
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_a

    .line 128
    invoke-virtual {v2, v7}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v11, v11, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 103
    :sswitch_0
    const-string v11, "Red"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_3

    :sswitch_1
    const-string v11, "Blue"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v9

    goto :goto_3

    :sswitch_2
    const-string v11, "Green"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v10

    goto :goto_3

    :sswitch_3
    const-string v11, "Yellow"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x3

    goto/16 :goto_3

    .line 105
    :pswitch_0
    const v6, 0x7f0700f2

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 108
    :pswitch_1
    const v6, 0x7f0700b4

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 111
    :pswitch_2
    const v6, 0x7f0700de

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 114
    :pswitch_3
    const v6, 0x7f070115

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 132
    :cond_a
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v11, v11, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 152
    .restart local v4    # "speedImage":Landroid/widget/ImageView;
    :sswitch_4
    const-string v9, "Fast"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v8, v7

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "Medium"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v8, v9

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "Slow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v8, v10

    goto/16 :goto_1

    .line 154
    :pswitch_4
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 157
    :pswitch_5
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 160
    :pswitch_6
    const v6, 0x7f0700e3

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 163
    :cond_b
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-boolean v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->isCircuit:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->setCommandId:I

    const v10, 0x7f0801ea

    if-eq v6, v10, :cond_4

    .line 164
    iget-object v6, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$2;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v6, v6, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_c
    move v6, v8

    :goto_5
    packed-switch v6, :pswitch_data_2

    goto/16 :goto_2

    .line 166
    :pswitch_7
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 164
    :sswitch_7
    const-string v9, "Fast"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    goto :goto_5

    :sswitch_8
    const-string v7, "Slow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v9

    goto :goto_5

    .line 169
    :pswitch_8
    const v6, 0x7f0700e3

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 152
    :sswitch_data_0
    .sparse-switch
        -0x76dc846b -> :sswitch_5
        0x214c7c -> :sswitch_4
        0x275e21 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 103
    :sswitch_data_1
    .sparse-switch
        -0x625eaf6c -> :sswitch_3
        0x14071 -> :sswitch_0
        0x1fa47a -> :sswitch_1
        0x41ddee3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 164
    :sswitch_data_2
    .sparse-switch
        0x214c7c -> :sswitch_7
        0x275e21 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
