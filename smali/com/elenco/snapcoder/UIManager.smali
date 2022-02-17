.class public Lcom/elenco/snapcoder/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# static fields
.field private static BotCustomizationFragment:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

.field private static BotEditCommand:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

.field private static BotEditSelection:Lcom/elenco/snapcoder/BotCode/botEditFragment;

.field private static FlyOutMenu:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

.field private static MainScreen:Lcom/elenco/snapcoder/MainScreen;

.field private static MyBots:Lcom/elenco/snapcoder/fragments/MyBots;

.field private static NumberPickerFragment:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

.field private static RSSI:I

.field private static _gamePadFragment:Lcom/elenco/snapcoder/fragments/GamePadFragment;

.field private static addressesofBotsToBeConnected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static botCodeViewFragment:Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

.field private static bot_code_fragment:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field private static circuit1:Lcom/elenco/snapcoder/model/Bot;

.field private static circuit2:Lcom/elenco/snapcoder/model/Bot;

.field private static circuit3:Lcom/elenco/snapcoder/model/Bot;

.field private static circuit4:Lcom/elenco/snapcoder/model/Bot;

.field private static connectedBay:Lcom/elenco/snapcoder/ConnectedBay;

.field private static discoveredBotBay:Lcom/elenco/snapcoder/DiscoveredBotBay;

.field private static discoveryFragment:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

.field private static isSelectedBotCommandALoop:Z

.field private static loopInput:Lcom/elenco/snapcoder/BotCode/loop_input;

.field private static selectedBotImageForChange:Landroid/widget/ImageButton;

.field private static selectedBotTextForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

.field private static selectedSpeedImageForChange:Landroid/widget/ImageView;

.field private static selectedTextViewForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

.field public static useCircuit1:Z

.field public static useCircuit2:Z

.field public static useCircuit3:Z

.field public static useCircuit4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {v0}, Lcom/elenco/snapcoder/MainScreen;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->MainScreen:Lcom/elenco/snapcoder/MainScreen;

    .line 28
    new-instance v0, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->discoveryFragment:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .line 29
    new-instance v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->FlyOutMenu:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .line 30
    new-instance v0, Lcom/elenco/snapcoder/fragments/MyBots;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/MyBots;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->MyBots:Lcom/elenco/snapcoder/fragments/MyBots;

    .line 31
    new-instance v0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->BotCustomizationFragment:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .line 32
    new-instance v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->BotEditCommand:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .line 33
    new-instance v0, Lcom/elenco/snapcoder/BotCode/botEditFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/botEditFragment;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->BotEditSelection:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .line 34
    new-instance v0, Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/loop_input;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->loopInput:Lcom/elenco/snapcoder/BotCode/loop_input;

    .line 35
    new-instance v0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->NumberPickerFragment:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    .line 40
    sput-boolean v1, Lcom/elenco/snapcoder/UIManager;->isSelectedBotCommandALoop:Z

    .line 41
    sput v1, Lcom/elenco/snapcoder/UIManager;->RSSI:I

    .line 42
    sput-object v2, Lcom/elenco/snapcoder/UIManager;->discoveredBotBay:Lcom/elenco/snapcoder/DiscoveredBotBay;

    .line 43
    sput-object v2, Lcom/elenco/snapcoder/UIManager;->connectedBay:Lcom/elenco/snapcoder/ConnectedBay;

    .line 44
    new-instance v0, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    invoke-direct {v0}, Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->botCodeViewFragment:Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/elenco/snapcoder/UIManager;->addressesofBotsToBeConnected:Ljava/util/ArrayList;

    .line 215
    sput-boolean v1, Lcom/elenco/snapcoder/UIManager;->useCircuit1:Z

    .line 216
    sput-boolean v1, Lcom/elenco/snapcoder/UIManager;->useCircuit2:Z

    .line 217
    sput-boolean v1, Lcom/elenco/snapcoder/UIManager;->useCircuit3:Z

    .line 218
    sput-boolean v1, Lcom/elenco/snapcoder/UIManager;->useCircuit4:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressesofBotsToBeConnected()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->addressesofBotsToBeConnected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getBotCodeViewFragment()Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->botCodeViewFragment:Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    return-object v0
.end method

.method public static getBotCustomizationFragment()Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->BotCustomizationFragment:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    return-object v0
.end method

.method public static getBotEditCommand()Lcom/elenco/snapcoder/BotCode/bot_edit_command;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->BotEditCommand:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    return-object v0
.end method

.method public static getBotEditSelection()Lcom/elenco/snapcoder/BotCode/botEditFragment;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->BotEditSelection:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    return-object v0
.end method

.method public static getCircuit1()Lcom/elenco/snapcoder/model/Bot;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->circuit1:Lcom/elenco/snapcoder/model/Bot;

    return-object v0
.end method

.method public static getCircuit2()Lcom/elenco/snapcoder/model/Bot;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->circuit2:Lcom/elenco/snapcoder/model/Bot;

    return-object v0
.end method

.method public static getCircuit3()Lcom/elenco/snapcoder/model/Bot;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->circuit3:Lcom/elenco/snapcoder/model/Bot;

    return-object v0
.end method

.method public static getCircuit4()Lcom/elenco/snapcoder/model/Bot;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->circuit4:Lcom/elenco/snapcoder/model/Bot;

    return-object v0
.end method

.method public static getConnectedBay()Lcom/elenco/snapcoder/ConnectedBay;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->connectedBay:Lcom/elenco/snapcoder/ConnectedBay;

    return-object v0
.end method

.method public static getDiscoveredBotBay()Lcom/elenco/snapcoder/DiscoveredBotBay;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->discoveredBotBay:Lcom/elenco/snapcoder/DiscoveredBotBay;

    return-object v0
.end method

.method public static getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->discoveryFragment:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    return-object v0
.end method

.method public static getFlyOutMenu()Lcom/elenco/snapcoder/fragments/FlyOutMenu;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->FlyOutMenu:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    return-object v0
.end method

.method public static getGamePadFragment()Lcom/elenco/snapcoder/fragments/GamePadFragment;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->_gamePadFragment:Lcom/elenco/snapcoder/fragments/GamePadFragment;

    return-object v0
.end method

.method public static getLoopEdit()Lcom/elenco/snapcoder/BotCode/loop_input;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->loopInput:Lcom/elenco/snapcoder/BotCode/loop_input;

    return-object v0
.end method

.method public static getMainScreen()Lcom/elenco/snapcoder/MainScreen;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->MainScreen:Lcom/elenco/snapcoder/MainScreen;

    return-object v0
.end method

.method public static getMyBots()Lcom/elenco/snapcoder/fragments/MyBots;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->MyBots:Lcom/elenco/snapcoder/fragments/MyBots;

    return-object v0
.end method

.method public static getNumberPickerFragment()Lcom/elenco/snapcoder/fragments/NumberPickerFragment;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->NumberPickerFragment:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    return-object v0
.end method

.method public static getRSSI()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/elenco/snapcoder/UIManager;->RSSI:I

    return v0
.end method

.method public static getSelectedBotImageForChange()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->selectedBotImageForChange:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static getSelectedBotTextForChange()Lcom/elenco/snapcoder/AutoResizeTextView;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->selectedBotTextForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

    return-object v0
.end method

.method public static getSelectedSpeedImageForChange()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->selectedSpeedImageForChange:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static getSelectedTextViewForChange()Lcom/elenco/snapcoder/AutoResizeTextView;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->selectedTextViewForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

    return-object v0
.end method

.method public static getbot_code_fragment()Lcom/elenco/snapcoder/BotCode/bot_code_fragment;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/elenco/snapcoder/UIManager;->bot_code_fragment:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    return-object v0
.end method

.method public static isSelectedBotCommandALoop()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/elenco/snapcoder/UIManager;->isSelectedBotCommandALoop:Z

    return v0
.end method

.method public static setBotCodeViewFragment(Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;)V
    .locals 0
    .param p0, "botCodeViewFragment"    # Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    .prologue
    .line 53
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->botCodeViewFragment:Lcom/elenco/snapcoder/BotCode/BotCodeViewFragment;

    .line 54
    return-void
.end method

.method public static setBotCustomizationFragment(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V
    .locals 0
    .param p0, "botCustomizationFragment"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 68
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->BotCustomizationFragment:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .line 69
    return-void
.end method

.method public static setBotEditCommand(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V
    .locals 0
    .param p0, "botEditCommand"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 121
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->BotEditCommand:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .line 122
    return-void
.end method

.method public static setBotEditSelection(Lcom/elenco/snapcoder/BotCode/botEditFragment;)V
    .locals 0
    .param p0, "botEditSelection"    # Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .prologue
    .line 127
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->BotEditSelection:Lcom/elenco/snapcoder/BotCode/botEditFragment;

    .line 128
    return-void
.end method

.method public static setCircuit1(Lcom/elenco/snapcoder/model/Bot;)V
    .locals 0
    .param p0, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 221
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->circuit1:Lcom/elenco/snapcoder/model/Bot;

    .line 222
    return-void
.end method

.method public static setCircuit2(Lcom/elenco/snapcoder/model/Bot;)V
    .locals 0
    .param p0, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 229
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->circuit2:Lcom/elenco/snapcoder/model/Bot;

    .line 230
    return-void
.end method

.method public static setCircuit3(Lcom/elenco/snapcoder/model/Bot;)V
    .locals 0
    .param p0, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 237
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->circuit3:Lcom/elenco/snapcoder/model/Bot;

    .line 238
    return-void
.end method

.method public static setCircuit4(Lcom/elenco/snapcoder/model/Bot;)V
    .locals 0
    .param p0, "bot"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 245
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->circuit4:Lcom/elenco/snapcoder/model/Bot;

    .line 246
    return-void
.end method

.method public static setConnectedBay(Lcom/elenco/snapcoder/ConnectedBay;)V
    .locals 0
    .param p0, "connectedBay"    # Lcom/elenco/snapcoder/ConnectedBay;

    .prologue
    .line 193
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->connectedBay:Lcom/elenco/snapcoder/ConnectedBay;

    .line 194
    return-void
.end method

.method public static setDiscoveredBotBay(Lcom/elenco/snapcoder/DiscoveredBotBay;)V
    .locals 0
    .param p0, "discoveredBotBay"    # Lcom/elenco/snapcoder/DiscoveredBotBay;

    .prologue
    .line 96
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->discoveredBotBay:Lcom/elenco/snapcoder/DiscoveredBotBay;

    .line 97
    return-void
.end method

.method public static setDiscoveryFragment(Lcom/elenco/snapcoder/fragments/DiscoveryFragment;)V
    .locals 0
    .param p0, "discoveryFragment"    # Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .prologue
    .line 110
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->discoveryFragment:Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    .line 111
    return-void
.end method

.method public static setFlyOutMenu(Lcom/elenco/snapcoder/fragments/FlyOutMenu;)V
    .locals 0
    .param p0, "flyOutMenu"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .prologue
    .line 83
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->FlyOutMenu:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .line 84
    return-void
.end method

.method public static setGamePadFragment(Lcom/elenco/snapcoder/fragments/GamePadFragment;)V
    .locals 0
    .param p0, "gamePadFragment"    # Lcom/elenco/snapcoder/fragments/GamePadFragment;

    .prologue
    .line 198
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->_gamePadFragment:Lcom/elenco/snapcoder/fragments/GamePadFragment;

    .line 199
    return-void
.end method

.method public static setIsSelectedBotCommandALoop(Z)V
    .locals 0
    .param p0, "isSelectedBotCommandALoop"    # Z

    .prologue
    .line 175
    sput-boolean p0, Lcom/elenco/snapcoder/UIManager;->isSelectedBotCommandALoop:Z

    .line 176
    return-void
.end method

.method public static setLoopEdit(Lcom/elenco/snapcoder/BotCode/loop_input;)V
    .locals 0
    .param p0, "loopEdit"    # Lcom/elenco/snapcoder/BotCode/loop_input;

    .prologue
    .line 133
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->loopInput:Lcom/elenco/snapcoder/BotCode/loop_input;

    .line 134
    return-void
.end method

.method public static setMainScreen(Lcom/elenco/snapcoder/MainScreen;)V
    .locals 0
    .param p0, "mainScreen"    # Lcom/elenco/snapcoder/MainScreen;

    .prologue
    .line 101
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->MainScreen:Lcom/elenco/snapcoder/MainScreen;

    .line 102
    return-void
.end method

.method public static setMyBots(Lcom/elenco/snapcoder/fragments/MyBots;)V
    .locals 0
    .param p0, "myBots"    # Lcom/elenco/snapcoder/fragments/MyBots;

    .prologue
    .line 73
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->MyBots:Lcom/elenco/snapcoder/fragments/MyBots;

    .line 74
    return-void
.end method

.method public static setNumberPickerFragment(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)V
    .locals 0
    .param p0, "numberPickerFragment"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    .prologue
    .line 139
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->NumberPickerFragment:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    .line 140
    return-void
.end method

.method public static setRSSI(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 180
    sput p0, Lcom/elenco/snapcoder/UIManager;->RSSI:I

    .line 181
    return-void
.end method

.method public static setSelectedBotImageForChange(Landroid/widget/ImageButton;)V
    .locals 0
    .param p0, "selectedBotImageForChange"    # Landroid/widget/ImageButton;

    .prologue
    .line 161
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->selectedBotImageForChange:Landroid/widget/ImageButton;

    .line 162
    return-void
.end method

.method public static setSelectedBotTextForChange(Lcom/elenco/snapcoder/AutoResizeTextView;)V
    .locals 0
    .param p0, "selectedBotTextForChange"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 167
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->selectedBotTextForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 168
    return-void
.end method

.method public static setSelectedSpeedImageForChange(Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "selectedSpeedImageForChange"    # Landroid/widget/ImageView;

    .prologue
    .line 155
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->selectedSpeedImageForChange:Landroid/widget/ImageView;

    .line 156
    return-void
.end method

.method public static setSelectedTextViewForChange(Lcom/elenco/snapcoder/AutoResizeTextView;)V
    .locals 0
    .param p0, "selectedTextViewForChange"    # Lcom/elenco/snapcoder/AutoResizeTextView;

    .prologue
    .line 147
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->selectedTextViewForChange:Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 148
    return-void
.end method

.method public static setbot_code_fragment(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;)V
    .locals 0
    .param p0, "bot_code_fragment"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 206
    sput-object p0, Lcom/elenco/snapcoder/UIManager;->bot_code_fragment:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .line 207
    return-void
.end method
