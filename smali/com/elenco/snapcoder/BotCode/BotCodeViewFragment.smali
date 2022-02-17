.class public Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "BotCodeViewFragment.java"


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createCode()V
    .locals 23

    .prologue
    .line 34
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    const v21, 0x7f080099

    invoke-virtual/range {v20 .. v21}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 35
    .local v4, "codeBay":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getBotCodeViewFragment()Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;->getView()Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0800a3

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 36
    .local v7, "codeViewBay":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 37
    const/16 v17, 0x0

    .line 38
    .local v17, "loopCount":I
    const/4 v14, 0x2

    .local v14, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v14, v0, :cond_f

    .line 39
    new-instance v12, Landroid/widget/TextView;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v12, "commentLine":Landroid/widget/TextView;
    const/high16 v20, 0x41700000    # 15.0f

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 42
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 44
    .local v5, "codeBlock":Landroid/widget/RelativeLayout;
    const v20, -0x777778

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const/16 v18, 0x0

    .line 48
    .local v18, "skipMe":Z
    const-string v10, ""

    .line 49
    .local v10, "comment":Ljava/lang/String;
    const v20, 0x7f0800b0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 51
    .local v11, "commentCode":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->length()I

    move-result v20

    if-eqz v20, :cond_0

    .line 52
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "//"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    :goto_1
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v6, Landroid/widget/TextView;

    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v6, "codeLine":Landroid/widget/TextView;
    const/high16 v20, 0x41700000    # 15.0f

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 62
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const v20, 0x7f080067

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 66
    .local v13, "durationText":Lcom/elenco/snapcoder/AutoResizeTextView;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v16, "listOfAffectedBotsLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    invoke-static {}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->getListOfAffectedBotsLists()Ljava/util/ArrayList;

    move-result-object v16

    .line 69
    const-string v8, ""

    .line 70
    .local v8, "commandPrefix":Ljava/lang/String;
    const-string v9, ""

    .line 72
    .local v9, "commandSuffix":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    .line 197
    :goto_2
    const-string v19, ""

    .line 198
    .local v19, "tabs":Ljava/lang/String;
    if-lez v17, :cond_1

    .line 199
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    .line 200
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 199
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 54
    .end local v6    # "codeLine":Landroid/widget/TextView;
    .end local v8    # "commandPrefix":Ljava/lang/String;
    .end local v9    # "commandSuffix":Ljava/lang/String;
    .end local v13    # "durationText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v15    # "j":I
    .end local v16    # "listOfAffectedBotsLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    .end local v19    # "tabs":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x1

    goto :goto_1

    .line 76
    .restart local v6    # "codeLine":Landroid/widget/TextView;
    .restart local v8    # "commandPrefix":Ljava/lang/String;
    .restart local v9    # "commandSuffix":Ljava/lang/String;
    .restart local v13    # "durationText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .restart local v16    # "listOfAffectedBotsLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    :sswitch_0
    const-string v8, "moveForward("

    .line 77
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 78
    goto :goto_2

    .line 80
    :sswitch_1
    const-string v8, "moveBackward("

    .line 81
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 82
    goto :goto_2

    .line 84
    :sswitch_2
    const-string v8, "moveLeft("

    .line 85
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 86
    goto :goto_2

    .line 88
    :sswitch_3
    const-string v8, "moveRight("

    .line 89
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 90
    goto/16 :goto_2

    .line 92
    :sswitch_4
    const-string v8, "moveFastLeft("

    .line 93
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 94
    goto/16 :goto_2

    .line 96
    :sswitch_5
    const-string v8, "moveFastRight("

    .line 97
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    goto/16 :goto_2

    .line 100
    :sswitch_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "for(int x = 0; x <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; x++){"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    const-string v20, "Loop"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 104
    :sswitch_7
    const-string v8, "}"

    .line 105
    add-int/lit8 v17, v17, -0x1

    .line 106
    const-string v20, "Loop"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 109
    :sswitch_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "wait("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    goto/16 :goto_2

    .line 112
    :sswitch_9
    const-string v8, "turnLeft90("

    .line 113
    const-string v9, ");"

    .line 114
    goto/16 :goto_2

    .line 116
    :sswitch_a
    const-string v8, "turnLeft180("

    .line 117
    const-string v9, ");"

    .line 118
    goto/16 :goto_2

    .line 120
    :sswitch_b
    const-string v8, "turnLeft270("

    .line 121
    const-string v9, ");"

    .line 122
    goto/16 :goto_2

    .line 124
    :sswitch_c
    const-string v8, "turnLeft360("

    .line 125
    const-string v9, ");"

    .line 126
    goto/16 :goto_2

    .line 128
    :sswitch_d
    const-string v8, "turnRight90("

    .line 129
    const-string v9, ");"

    .line 130
    goto/16 :goto_2

    .line 132
    :sswitch_e
    const-string v8, "turnRight180("

    .line 133
    const-string v9, ");"

    .line 134
    goto/16 :goto_2

    .line 136
    :sswitch_f
    const-string v8, "turnRight270("

    .line 137
    const-string v9, ");"

    .line 138
    goto/16 :goto_2

    .line 140
    :sswitch_10
    const-string v8, "turnRight360("

    .line 141
    const-string v9, ");"

    .line 142
    goto/16 :goto_2

    .line 144
    :sswitch_11
    const-string v8, "spinLeft90("

    .line 145
    const-string v9, ");"

    .line 146
    goto/16 :goto_2

    .line 148
    :sswitch_12
    const-string v8, "spinLeft180("

    .line 149
    const-string v9, ");"

    .line 150
    goto/16 :goto_2

    .line 152
    :sswitch_13
    const-string v8, "spinLeft270("

    .line 153
    const-string v9, ");"

    .line 154
    goto/16 :goto_2

    .line 156
    :sswitch_14
    const-string v8, "spinLeft360("

    .line 157
    const-string v9, ");"

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_15
    const-string v8, "spinRight90("

    .line 161
    const-string v9, ");"

    .line 162
    goto/16 :goto_2

    .line 164
    :sswitch_16
    const-string v8, "spinRight180("

    .line 165
    const-string v9, ");"

    .line 166
    goto/16 :goto_2

    .line 168
    :sswitch_17
    const-string v8, "spinRight270("

    .line 169
    const-string v9, ");"

    .line 170
    goto/16 :goto_2

    .line 172
    :sswitch_18
    const-string v8, "spinRight360("

    .line 173
    const-string v9, ");"

    .line 174
    goto/16 :goto_2

    .line 176
    :sswitch_19
    const-string v8, "circuitD1On("

    .line 177
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 178
    goto/16 :goto_2

    .line 180
    :sswitch_1a
    const-string v8, "circuitD2On("

    .line 181
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    goto/16 :goto_2

    .line 184
    :sswitch_1b
    const-string v8, "circuitD3On("

    .line 185
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 186
    goto/16 :goto_2

    .line 188
    :sswitch_1c
    const-string v8, "circuitD4On("

    .line 189
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    goto/16 :goto_2

    .line 192
    :sswitch_1d
    const-string v8, "singleCircuitOn("

    .line 193
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 204
    .restart local v19    # "tabs":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v20

    const v21, 0x7f080167

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 205
    add-int/lit8 v17, v17, 0x1

    .line 209
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v21, v14, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 211
    const-string v2, ""

    .line 213
    .local v2, "botCommand":Ljava/lang/String;
    const-string v3, "("

    .line 214
    .local v3, "botName":Ljava/lang/String;
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_4
    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    .line 215
    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getIsVirtual()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 216
    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getBotFrameColor()Ljava/lang/String;

    move-result-object v21

    const/16 v20, -0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_1

    :cond_3
    :goto_5
    packed-switch v20, :pswitch_data_0

    .line 214
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 216
    :sswitch_1e
    const-string v22, "Blue"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x0

    goto :goto_5

    :sswitch_1f
    const-string v22, "Green"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x1

    goto :goto_5

    :sswitch_20
    const-string v22, "Orange"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x2

    goto :goto_5

    :sswitch_21
    const-string v22, "Yellow"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x3

    goto :goto_5

    :sswitch_22
    const-string v22, "Red"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x4

    goto :goto_5

    :sswitch_23
    const-string v22, "Teal"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x5

    goto :goto_5

    :sswitch_24
    const-string v22, "Purple"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x6

    goto :goto_5

    :sswitch_25
    const-string v22, "Pink"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v20, 0x7

    goto :goto_5

    .line 218
    :pswitch_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    goto :goto_6

    .line 221
    :pswitch_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    goto/16 :goto_6

    .line 224
    :pswitch_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    goto/16 :goto_6

    .line 227
    :pswitch_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    goto/16 :goto_6

    .line 230
    :pswitch_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    goto/16 :goto_6

    .line 233
    :pswitch_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    goto/16 :goto_6

    .line 236
    :pswitch_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    goto/16 :goto_6

    .line 239
    :pswitch_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VSC, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 243
    :cond_4
    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "MCC"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "SCC"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 244
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 247
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v20, v14, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual/range {v20 .. v20}, Lcom/elenco/snapcoder/model/Bot;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 252
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "),"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    const-string v20, "spin"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "turn"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 255
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    :cond_9
    :goto_7
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 261
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_8
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    if-nez v18, :cond_a

    .line 268
    const-string v20, "Comment"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    :cond_a
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    .end local v2    # "botCommand":Ljava/lang/String;
    .end local v3    # "botName":Ljava/lang/String;
    .end local v15    # "j":I
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 256
    .restart local v2    # "botCommand":Ljava/lang/String;
    .restart local v3    # "botName":Ljava/lang/String;
    .restart local v15    # "j":I
    :cond_c
    const-string v20, "wait"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "{"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v20, "}"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 257
    :cond_d
    const-string v3, ""

    goto :goto_7

    .line 263
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 274
    .end local v2    # "botCommand":Ljava/lang/String;
    .end local v3    # "botName":Ljava/lang/String;
    .end local v5    # "codeBlock":Landroid/widget/RelativeLayout;
    .end local v6    # "codeLine":Landroid/widget/TextView;
    .end local v8    # "commandPrefix":Ljava/lang/String;
    .end local v9    # "commandSuffix":Ljava/lang/String;
    .end local v10    # "comment":Ljava/lang/String;
    .end local v11    # "commentCode":Landroid/widget/EditText;
    .end local v12    # "commentLine":Landroid/widget/TextView;
    .end local v13    # "durationText":Lcom/elenco/snapcoder/AutoResizeTextView;
    .end local v15    # "j":I
    .end local v16    # "listOfAffectedBotsLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/elenco/snapcoder/model/Bot;>;>;"
    .end local v18    # "skipMe":Z
    .end local v19    # "tabs":Ljava/lang/String;
    :cond_f
    return-void

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x7f080057 -> :sswitch_7
        0x7f08007c -> :sswitch_19
        0x7f08007d -> :sswitch_1a
        0x7f08007e -> :sswitch_1b
        0x7f08007f -> :sswitch_1c
        0x7f080107 -> :sswitch_4
        0x7f080108 -> :sswitch_5
        0x7f080167 -> :sswitch_6
        0x7f080171 -> :sswitch_1
        0x7f080176 -> :sswitch_0
        0x7f08017f -> :sswitch_2
        0x7f080183 -> :sswitch_3
        0x7f0801ea -> :sswitch_1d
        0x7f0801ff -> :sswitch_12
        0x7f080200 -> :sswitch_13
        0x7f080201 -> :sswitch_14
        0x7f080202 -> :sswitch_11
        0x7f080203 -> :sswitch_16
        0x7f080204 -> :sswitch_17
        0x7f080205 -> :sswitch_18
        0x7f080206 -> :sswitch_15
        0x7f080207 -> :sswitch_a
        0x7f080208 -> :sswitch_b
        0x7f080209 -> :sswitch_c
        0x7f08020a -> :sswitch_9
        0x7f08020b -> :sswitch_e
        0x7f08020c -> :sswitch_f
        0x7f08020d -> :sswitch_10
        0x7f08020e -> :sswitch_d
        0x7f08024c -> :sswitch_8
    .end sparse-switch

    .line 216
    :sswitch_data_1
    .sparse-switch
        -0x72bcedb2 -> :sswitch_20
        -0x70d60c24 -> :sswitch_24
        -0x625eaf6c -> :sswitch_21
        0x14071 -> :sswitch_22
        0x1fa47a -> :sswitch_1e
        0x25f596 -> :sswitch_25
        0x27b67c -> :sswitch_23
        0x41ddee3 -> :sswitch_1f
    .end sparse-switch

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
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v0, 0x7f0a002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;->view:Landroid/view/View;

    .line 29
    invoke-static {p0}, Lcom/elenco/snapcoder/UIManager;->setBotCodeViewFragment(Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;)V

    .line 30
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;->view:Landroid/view/View;

    return-object v0
.end method
