.class Lcom/elenco/snapcoder/BotCode/botEditFragment$2;
.super Ljava/lang/Object;
.source "botEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/botEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 137
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedBotImageForChange()Landroid/widget/ImageButton;

    move-result-object v1

    .line 138
    .local v1, "botImageToChange":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedBotTextForChange()Lcom/elenco/snapcoder/AutoResizeTextView;

    move-result-object v2

    .line 140
    .local v2, "botTextToChange":Lcom/elenco/snapcoder/AutoResizeTextView;
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    :cond_0
    new-instance v3, Lcom/elenco/snapcoder/model/BotV2;

    invoke-direct {v3}, Lcom/elenco/snapcoder/model/BotV2;-><init>()V

    .line 142
    .local v3, "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v3, v8}, Lcom/elenco/snapcoder/model/Bot;->setIsVirtual(Z)V

    .line 143
    const-string v5, "Blue"

    invoke-virtual {v3, v5}, Lcom/elenco/snapcoder/model/Bot;->setBotFrameColor(Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const v5, 0x7f07005e

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 146
    invoke-virtual {v2, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 182
    .end local v3    # "selectedBot":Lcom/elenco/snapcoder/model/Bot;
    :goto_0
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 183
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 184
    .local v0, "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 185
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_2
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-static {v5}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->access$100(Lcom/elenco/snapcoder/BotCode/botEditFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget v10, v10, Lcom/elenco/snapcoder/BotCode/botEditFragment;->affectedBotsIndex:I

    iget-object v11, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v11, v11, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-static {v5}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->access$100(Lcom/elenco/snapcoder/BotCode/botEditFragment;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->listOfAffectedBotsLists:Ljava/util/ArrayList;

    .line 194
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->setBotCodeText()V

    .line 196
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getSelectedSpeedImageForChange()Landroid/widget/ImageView;

    move-result-object v4

    .line 198
    .local v4, "speedImage":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_3
    move v5, v7

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 210
    :goto_2
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->speedSelected:Ljava/lang/String;

    invoke-static {v5}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-static {v5}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->access$000(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V

    .line 213
    return-void

    .line 148
    .end local v4    # "speedImage":Landroid/widget/ImageView;
    :cond_4
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v5}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_5
    move v5, v7

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 163
    :goto_4
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_7

    .line 164
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/model/Bot;

    .line 165
    .restart local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 166
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    .end local v0    # "bot":Lcom/elenco/snapcoder/model/Bot;
    :cond_7
    iget-object v5, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v5, v5, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_8

    .line 173
    invoke-virtual {v2, v6}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 148
    :sswitch_0
    const-string v10, "Red"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_3

    :sswitch_1
    const-string v10, "Blue"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_3

    :sswitch_2
    const-string v10, "Green"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v9

    goto :goto_3

    :sswitch_3
    const-string v10, "Yellow"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto/16 :goto_3

    .line 150
    :pswitch_0
    const v5, 0x7f0700a9

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 153
    :pswitch_1
    const v5, 0x7f07005d

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 156
    :pswitch_2
    const v5, 0x7f07008d

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 159
    :pswitch_3
    const v5, 0x7f07012e

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_4

    .line 177
    :cond_8
    invoke-virtual {v2, v11}, Lcom/elenco/snapcoder/AutoResizeTextView;->setVisibility(I)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/elenco/snapcoder/BotCode/botEditFragment$2;->this$0:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    iget-object v10, v10, Lcom/elenco/snapcoder/BotCode/botEditFragment;->selectedBots:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 198
    .restart local v4    # "speedImage":Landroid/widget/ImageView;
    :sswitch_4
    const-string v8, "Fast"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "Medium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "Slow"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v9

    goto/16 :goto_1

    .line 200
    :pswitch_4
    const v5, 0x7f0700e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 203
    :pswitch_5
    const v5, 0x7f0700e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 206
    :pswitch_6
    const v5, 0x7f0700e3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 198
    nop

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

    .line 148
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
.end method
