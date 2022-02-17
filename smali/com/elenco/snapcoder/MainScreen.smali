.class public Lcom/elenco/snapcoder/MainScreen;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainScreen.java"

# interfaces
.implements Lcom/elenco/snapcoder/fragments/BGSwapMenu$OnBGListInteractionListener;


# static fields
.field public static final BLOCKLY_KEY:Ljava/lang/String; = "blockly_key"

.field public static final BOTCODE_KEY:Ljava/lang/String; = "botCode_key"

.field public static BUNDLE_KEY:Ljava/lang/String; = null

.field public static final CONNECT_KEY:Ljava/lang/String; = "connect_key"

.field public static final DRIVE_KEY:Ljava/lang/String; = "drive_key"

.field private static DRIVING_LOG_KEY:Ljava/lang/String; = null

.field public static final INFO_KEY:Ljava/lang/String; = "info_key"

.field public static final MYBOTS_KEY:Ljava/lang/String; = "myBots_key"

.field private static STARTUP_LOG_KEY:Ljava/lang/String;


# instance fields
.field public BotColor:Ljava/lang/String;

.field private SCC_NAME:Ljava/lang/String;

.field public addressOfBotToBeCustomized:Ljava/lang/String;

.field public batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

.field bgSwap:Lcom/elenco/snapcoder/fragments/BGSwapMenu;

.field bgSwapFrame:Landroid/widget/RelativeLayout;

.field bgSwapIsMoving:Z

.field bgSwapIsOpen:Z

.field public colorOfBotToBeCustomized:Ljava/lang/String;

.field public commandDriveIsOpen:Z

.field public discoveryScreenOpen:Z

.field private driveModeSelected:I

.field flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

.field flyOutFrame:Landroid/widget/RelativeLayout;

.field flyoutMenuIsMoving:Z

.field flyoutMenuIsOpen:Z

.field hamButton:Landroid/widget/LinearLayout;

.field public mainTimeDriven:Ljava/lang/String;

.field public nameOfBotToBeCustomized:Ljava/lang/String;

.field public selectedSpeed:Ljava/lang/String;

.field public tankDriveIsOpen:Z

.field toolbarLayout:Landroid/widget/LinearLayout;

.field public touchDriveIsOpen:Z

.field private versionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "bundle_key"

    sput-object v0, Lcom/elenco/snapcoder/MainScreen;->BUNDLE_KEY:Ljava/lang/String;

    .line 83
    const-string v0, "DrivingScreen_Startup"

    sput-object v0, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    .line 90
    const-string v0, "DrivingScreen_Log"

    sput-object v0, Lcom/elenco/snapcoder/MainScreen;->DRIVING_LOG_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/elenco/snapcoder/MainScreen;->commandDriveIsOpen:Z

    .line 60
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->touchDriveIsOpen:Z

    .line 61
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->tankDriveIsOpen:Z

    .line 62
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    .line 63
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    .line 64
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsOpen:Z

    .line 65
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    .line 66
    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->discoveryScreenOpen:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->addressOfBotToBeCustomized:Ljava/lang/String;

    .line 70
    const-string v0, "Orange"

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->BotColor:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->nameOfBotToBeCustomized:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->colorOfBotToBeCustomized:Ljava/lang/String;

    .line 73
    const-string v0, "Fast"

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    .line 102
    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->versionNum:I

    .line 103
    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->mainTimeDriven:Ljava/lang/String;

    .line 109
    const-string v0, "SCC"

    iput-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->SCC_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/elenco/snapcoder/MainScreen;->DRIVING_LOG_KEY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bots"    # Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p1, p2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotAddress(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1, p3}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotIcon(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1, p4}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setBotsName(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnSoft360(F)V

    .line 725
    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnSoft360(F)V

    .line 726
    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setRightTurnHard360(F)V

    .line 727
    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setLeftTurnHard360(F)V

    .line 728
    const-string v0, "Right"

    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setTurningDirection(Ljava/lang/String;)V

    .line 729
    const-string v0, "Right"

    invoke-virtual {p1, v0}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseTurningDirection(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1, v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setStraightConfiguration(I)V

    .line 731
    invoke-virtual {p1, v2}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setReverseConfiguration(I)V

    .line 732
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedStraight(I)V

    .line 733
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedReverse(I)V

    .line 734
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinLeft(I)V

    .line 735
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedSpinRight(I)V

    .line 736
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnLeft(I)V

    .line 737
    invoke-virtual {p1, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->setCalibratedTurnRight(I)V

    .line 738
    return-void
.end method

.method public checkBluetoothPermissions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 403
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/elenco/snapcoder/MainScreen;->requestPermissions([Ljava/lang/String;I)V

    .line 407
    :cond_0
    return-void
.end method

.method checkIfCloser()Z
    .locals 6

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 827
    .local v1, "isCloserToHeight":Z
    const/4 v2, 0x0

    .line 828
    .local v2, "sumOfHeight":I
    const/4 v3, 0x0

    .line 830
    .local v3, "sumOfWidth":I
    const v4, 0x7f080080

    invoke-virtual {p0, v4}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 832
    .local v0, "circuitHolder":Landroid/widget/LinearLayout;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 833
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 835
    if-gez v3, :cond_1

    .line 836
    const/4 v1, 0x1

    .line 843
    :cond_0
    :goto_0
    return v1

    .line 837
    :cond_1
    if-lez v3, :cond_2

    if-ge v2, v3, :cond_2

    .line 838
    const/4 v1, 0x1

    goto :goto_0

    .line 839
    :cond_2
    if-ge v3, v2, :cond_0

    .line 840
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkIfLandscape()V
    .locals 4

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->checkIfCloser()Z

    .line 806
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->checkIfCloser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 809
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/MainScreen$20;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$20;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 823
    .end local v0    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->setCircuits()V

    goto :goto_0
.end method

.method checkSize()V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 358
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/elenco/snapcoder/MainScreen$12;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$12;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 373
    return-void
.end method

.method public closeMenuBotCode()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, -0x3ac48000    # -3000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/MainScreen$18;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$18;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 623
    return-void
.end method

.method public closeMenus(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    .line 600
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, -0x3ac48000    # -3000.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/MainScreen$17;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$17;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 611
    :cond_0
    return-void
.end method

.method public displayOdometer(Ljava/lang/String;)V
    .locals 13
    .param p1, "odometerString"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x6

    .line 688
    const v10, 0x7f0801a9

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 689
    .local v5, "singleOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v10, 0x7f0801ab

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 690
    .local v7, "tenOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v10, 0x7f0801a8

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 691
    .local v0, "hundredOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v10, 0x7f0801ac

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 692
    .local v9, "thousandOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v10, 0x7f0801aa

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 693
    .local v8, "tenThousandOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    const v10, 0x7f0801a7

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 695
    .local v1, "hundredThousandOdometer":Lcom/elenco/snapcoder/AutoResizeTextView;
    move-object v6, p1

    .line 697
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v12, :cond_0

    .line 698
    const-string v6, "999999"

    .line 701
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_1

    .line 702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 706
    .local v3, "len":I
    new-array v4, v3, [Ljava/lang/Character;

    .line 707
    .local v4, "odometerArray":[Ljava/lang/Character;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 708
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v4, v2

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    :cond_2
    const/4 v10, 0x5

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    const/4 v10, 0x4

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const/4 v10, 0x3

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    return-void
.end method

.method public onBGListInteraction(Lcom/elenco/snapcoder/BGData$BGItem;)V
    .locals 5
    .param p1, "item"    # Lcom/elenco/snapcoder/BGData$BGItem;

    .prologue
    const/4 v4, 0x1

    .line 639
    sget-object v1, Lcom/elenco/snapcoder/MainScreen;->DRIVING_LOG_KEY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGSwap Interaction. Background to Swap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/elenco/snapcoder/BGData$BGItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object v0, p1

    .line 642
    .local v0, "fItem":Lcom/elenco/snapcoder/BGData$BGItem;
    iget-object v1, v0, Lcom/elenco/snapcoder/BGData$BGItem;->title:Ljava/lang/String;

    const-string v2, "Default Theme"

    if-ne v1, v2, :cond_1

    .line 644
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 645
    const v1, 0x7f08024e

    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->openBGSwap()V

    .line 652
    return-void

    .line 647
    :cond_1
    iget-object v1, v0, Lcom/elenco/snapcoder/BGData$BGItem;->title:Ljava/lang/String;

    const-string v2, "Meeper Circuit"

    if-ne v1, v2, :cond_0

    .line 648
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 649
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->setCircuits()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const v26, 0x7f0e0160

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->setTheme(I)V

    .line 114
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/elenco/snapcoder/UIManager;->setMainScreen(Lcom/elenco/snapcoder/MainScreen;)V

    .line 116
    const v26, 0x7f0a0042

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->setContentView(I)V

    .line 118
    const v26, 0x7f0800c5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 119
    .local v9, "dashboardCalibrate":Landroid/widget/ImageButton;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/elenco/snapcoder/MainScreen$1;-><init>(Lcom/elenco/snapcoder/MainScreen;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v26, 0x7f0801ec

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 129
    .local v21, "slowSelection":Landroid/widget/RelativeLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$2;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v26, 0x7f0801fa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 137
    .local v18, "leftSpeedSelection":Landroid/widget/Button;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$3;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v26, 0x7f0801fc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 145
    .local v19, "rightSpeedSelection":Landroid/widget/Button;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$4;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v26, 0x7f0800ed

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 153
    .local v15, "fastSelection":Landroid/widget/RelativeLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$5;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/MainScreen;->checkBluetoothPermissions()V

    .line 161
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_0

    .line 162
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->openDiscoveryFragment(Landroid/view/View;)V

    .line 166
    :cond_0
    new-instance v7, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;

    invoke-direct {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;-><init>()V

    .line 167
    .local v7, "botsRepo":Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;
    new-instance v5, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    invoke-direct {v5}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;-><init>()V

    .line 169
    .local v5, "bots":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v7}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->GetBots()Ljava/util/List;

    move-result-object v6

    .line 171
    .local v6, "botsList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Bots;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_1

    .line 173
    const-string v26, "BlueVirtual"

    const-string v27, "Blue"

    const-string v28, "Blue Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 176
    const-string v26, "GreenVirtual"

    const-string v27, "Green"

    const-string v28, "Green Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 179
    const-string v26, "OrangeVirtual"

    const-string v27, "Orange"

    const-string v28, "Orange Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 182
    const-string v26, "YellowVirtual"

    const-string v27, "Yellow"

    const-string v28, "Yellow Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 185
    const-string v26, "RedVirtual"

    const-string v27, "Red"

    const-string v28, "Red Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 188
    const-string v26, "PinkVirtual"

    const-string v27, "Pink"

    const-string v28, "Pink Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 191
    const-string v26, "PurpleVirtual"

    const-string v27, "Purple"

    const-string v28, "Purple Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 194
    const-string v26, "TealVirtual"

    const-string v27, "Teal"

    const-string v28, "Teal Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 198
    :cond_1
    const/16 v17, 0x0

    .line 199
    .local v17, "foundPinkBot":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/SQLite/data/model/Bots;

    .line 200
    .local v8, "botts":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    invoke-virtual {v8}, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->getBotAddress()Ljava/lang/String;

    move-result-object v27

    const-string v28, "PinkVirtual"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 201
    const/16 v17, 0x1

    .line 206
    .end local v8    # "botts":Lcom/elenco/snapcoder/SQLite/data/model/Bots;
    :cond_3
    if-nez v17, :cond_4

    .line 207
    const-string v26, "RedVirtual"

    const-string v27, "Red"

    const-string v28, "Red Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 210
    const-string v26, "PinkVirtual"

    const-string v27, "Pink"

    const-string v28, "Pink Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 213
    const-string v26, "PurpleVirtual"

    const-string v27, "Purple"

    const-string v28, "Purple Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 216
    const-string v26, "TealVirtual"

    const-string v27, "Teal"

    const-string v28, "Teal Virtual Bot"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/elenco/snapcoder/MainScreen;->CreateVirtual(Lcom/elenco/snapcoder/SQLite/data/model/Bots;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v7, v5}, Lcom/elenco/snapcoder/SQLite/data/repo/BotsRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Bots;)J

    .line 221
    :cond_4
    new-instance v25, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;

    invoke-direct/range {v25 .. v25}, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;-><init>()V

    .line 222
    .local v25, "versionRepo":Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;
    new-instance v23, Lcom/elenco/snapcoder/SQLite/data/model/Version;

    invoke-direct/range {v23 .. v23}, Lcom/elenco/snapcoder/SQLite/data/model/Version;-><init>()V

    .line 224
    .local v23, "version":Lcom/elenco/snapcoder/SQLite/data/model/Version;
    invoke-virtual/range {v25 .. v25}, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;->GetVersion()Ljava/util/List;

    move-result-object v24

    .line 226
    .local v24, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/elenco/snapcoder/SQLite/data/model/Version;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/elenco/snapcoder/SQLite/data/model/Version;

    invoke-virtual/range {v26 .. v26}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->getVersionId()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/elenco/snapcoder/MainScreen;->versionNum:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/elenco/snapcoder/MainScreen;->versionNum:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/model/Version;->setVersionId(I)V

    .line 230
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/SQLite/data/repo/VersionRepo;->insert(Lcom/elenco/snapcoder/SQLite/data/model/Version;)J

    .line 233
    :cond_6
    const v26, 0x7f0800c6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 234
    .local v10, "driveModeLeft":Landroid/widget/LinearLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$6;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v26, 0x7f0800c7

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 241
    .local v11, "driveModeRight":Landroid/widget/LinearLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$7;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const-string v26, "000000"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->displayOdometer(Ljava/lang/String;)V

    .line 250
    new-instance v26, Lcom/elenco/snapcoder/BatteryChecker;

    invoke-direct/range {v26 .. v26}, Lcom/elenco/snapcoder/BatteryChecker;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->batteryChecker:Lcom/elenco/snapcoder/BatteryChecker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/elenco/snapcoder/BatteryChecker;->createList()V

    .line 253
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/MainScreen;->setRequestedOrientation(I)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/MainScreen;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v16

    .line 256
    .local v16, "fm":Landroid/support/v4/app/FragmentManager;
    new-instance v26, Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-direct/range {v26 .. v26}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    .line 257
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    const v27, 0x7f0800df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v28, v0

    const-string v29, "flyout_fragment_menu"

    .line 258
    invoke-virtual/range {v26 .. v29}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    .line 259
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    .line 260
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 261
    const v26, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const v27, -0x3ac48000    # -3000.0f

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 267
    :cond_7
    const v26, 0x7f08016b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->hamButton:Landroid/widget/LinearLayout;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->hamButton:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    new-instance v27, Lcom/elenco/snapcoder/MainScreen$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$8;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/MainScreen;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/MainScreen;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    sget-object v27, Lcom/elenco/snapcoder/MainScreen;->BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 279
    .local v22, "startupAction":Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 280
    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    :cond_8
    :goto_0
    packed-switch v26, :pswitch_data_0

    .line 302
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    const-string v27, "Passed (Nothing/Incompatible Key). Loading Drive Screen."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    const-string v27, "Drive"

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    .line 309
    .end local v22    # "startupAction":Ljava/lang/String;
    :cond_9
    :goto_1
    const v26, 0x7f0800de

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->toolbarLayout:Landroid/widget/LinearLayout;

    .line 310
    new-instance v26, Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    invoke-direct/range {v26 .. v26}, Lcom/elenco/snapcoder/fragments/BGSwapMenu;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->bgSwap:Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    .line 311
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    const v27, 0x7f0801ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwap:Lcom/elenco/snapcoder/fragments/BGSwapMenu;

    move-object/from16 v28, v0

    .line 312
    invoke-virtual/range {v26 .. v28}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    .line 313
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v26

    .line 314
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 316
    const v26, 0x7f080031

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 317
    .local v4, "bgSwapButton":Landroid/widget/LinearLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/elenco/snapcoder/MainScreen$9;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 326
    .local v20, "screenHeight":I
    const v26, 0x7f0801ca

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    mul-int/lit8 v27, v20, -0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    div-int/lit8 v27, v20, 0x3

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 334
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/elenco/snapcoder/MainScreen;->checkSize()V

    .line 336
    const v26, 0x7f0800dd

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 338
    .local v14, "drivingAStud":Landroid/widget/ImageView;
    const v26, 0x7f0800da

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 339
    .local v13, "drivingAButtonTop":Landroid/widget/FrameLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$10;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/elenco/snapcoder/MainScreen$10;-><init>(Lcom/elenco/snapcoder/MainScreen;Landroid/widget/ImageView;)V

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v26, 0x7f0800d9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 347
    .local v12, "drivingAButtonBottom":Landroid/widget/FrameLayout;
    new-instance v26, Lcom/elenco/snapcoder/MainScreen$11;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/elenco/snapcoder/MainScreen$11;-><init>(Lcom/elenco/snapcoder/MainScreen;Landroid/widget/ImageView;)V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-void

    .line 280
    .end local v4    # "bgSwapButton":Landroid/widget/LinearLayout;
    .end local v12    # "drivingAButtonBottom":Landroid/widget/FrameLayout;
    .end local v13    # "drivingAButtonTop":Landroid/widget/FrameLayout;
    .end local v14    # "drivingAStud":Landroid/widget/ImageView;
    .end local v20    # "screenHeight":I
    .restart local v22    # "startupAction":Ljava/lang/String;
    :sswitch_0
    const-string v27, "drive_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v26, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v27, "connect_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v26, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v27, "botCode_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v26, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v27, "myBots_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v26, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v27, "blockly_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v26, 0x4

    goto/16 :goto_0

    .line 282
    :pswitch_0
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Passed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Loading Drive Screen."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    const-string v27, "Drive"

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :pswitch_1
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Passed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Loading Connect Screen."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    const-string v27, "Connect"

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 290
    :pswitch_2
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Passed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Loading BotCode Screen."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBotCODE(Landroid/view/View;)V

    goto/16 :goto_1

    .line 294
    :pswitch_3
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Passed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Loading MyBots Screen."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->OpenMyBotsMenu(Landroid/view/View;)V

    goto/16 :goto_1

    .line 298
    :pswitch_4
    sget-object v26, Lcom/elenco/snapcoder/MainScreen;->STARTUP_LOG_KEY:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Passed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Loading Blockly Screen."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->openBlockly(Landroid/view/View;)V

    goto/16 :goto_1

    .line 280
    :sswitch_data_0
    .sparse-switch
        -0x640d9708 -> :sswitch_3
        -0x51786dd6 -> :sswitch_0
        -0x1576180c -> :sswitch_2
        0x5fa4b37a -> :sswitch_4
        0x66c6c18a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 412
    sparse-switch p1, :sswitch_data_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 414
    :sswitch_0
    array-length v2, p3

    if-lez v2, :cond_2

    aget v2, p3, v4

    if-nez v2, :cond_2

    .line 415
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->locationIsOn:Ljava/lang/Boolean;

    .line 419
    :cond_1
    :goto_1
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->openDiscoveryFragment(Landroid/view/View;)V

    goto :goto_0

    .line 416
    :cond_2
    array-length v2, p3

    if-lez v2, :cond_1

    aget v2, p3, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 417
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->locationIsOn:Ljava/lang/Boolean;

    goto :goto_1

    .line 422
    :sswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 425
    array-length v2, p3

    if-lez v2, :cond_3

    aget v2, p3, v0

    if-nez v2, :cond_3

    .line 426
    add-int/lit8 v1, v1, 0x1

    .line 424
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x315 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 383
    return-void
.end method

.method public openBGSwap()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 558
    iget-boolean v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsOpen:Z

    if-nez v2, :cond_1

    .line 560
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v2

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 561
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen;->toolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTranslationY(F)V

    .line 563
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 564
    .local v1, "screenHeight":I
    iput-boolean v5, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    .line 565
    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 566
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 567
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 568
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/elenco/snapcoder/MainScreen$15;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/MainScreen$15;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    .line 569
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 595
    .end local v0    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    .end local v1    # "screenHeight":I
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-boolean v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    if-nez v2, :cond_0

    .line 581
    iput-boolean v5, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapIsMoving:Z

    .line 582
    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 583
    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 584
    iget-object v2, p0, Lcom/elenco/snapcoder/MainScreen;->bgSwapFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, -0x3ac48000    # -3000.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/elenco/snapcoder/MainScreen$16;

    invoke-direct {v3, p0}, Lcom/elenco/snapcoder/MainScreen$16;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 593
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public openDiscoveryFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 388
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 389
    .local v0, "connectingScreen":Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/elenco/snapcoder/BluetoothManager;->setNumberOfBotsToBeConnected(I)V

    .line 390
    invoke-static {v2}, Lcom/elenco/snapcoder/BluetoothManager;->setNumberOfConnectedBots(I)V

    .line 392
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/elenco/snapcoder/MainScreen;->discoveryScreenOpen:Z

    .line 395
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getDiscoveryFragment()Lcom/elenco/snapcoder/fragments/DiscoveryFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/fragments/DiscoveryFragment;->checkBluetooth()Z

    .line 396
    return-void
.end method

.method public openFlyOutMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x5dc

    .line 527
    iget-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsMoving:Z

    .line 529
    sget-object v0, Lcom/elenco/snapcoder/MainScreen;->DRIVING_LOG_KEY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In openFlyOutMenuNew! flyoutMenuIsOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyoutMenuIsOpen:Z

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/MainScreen$13;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$13;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen;->flyOutFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/MainScreen;->flyOut:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->getFlyOutMenuBlank()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/elenco/snapcoder/MainScreen$14;

    invoke-direct {v1, p0}, Lcom/elenco/snapcoder/MainScreen$14;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public resetDashboard()V
    .locals 17

    .prologue
    .line 742
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0800c4

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 743
    .local v1, "botName":Landroid/widget/TextView;
    const-string v15, ""

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0800c3

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 746
    .local v2, "dashboardBotFrame":Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 748
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0800c5

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 749
    .local v3, "dashboardCalibrate":Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 751
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801a7

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 752
    .local v5, "hundredThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v5, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801aa

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 754
    .local v12, "tenThousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v12, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801ac

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 756
    .local v14, "thousandsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v14, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801a8

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 758
    .local v6, "hundredsText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v6, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801ab

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 760
    .local v13, "tensText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v13, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801a9

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 762
    .local v11, "singlesText":Lcom/elenco/snapcoder/AutoResizeTextView;
    const-string v15, "0"

    invoke-virtual {v11, v15}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0801e9

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 765
    .local v10, "singleBotDash":Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 767
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f080187

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 768
    .local v7, "multiBotDash":Landroid/widget/LinearLayout;
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 770
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f0800d2

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    .line 771
    .local v4, "disabledLayout":Landroid/widget/HorizontalScrollView;
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 773
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 774
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f080193

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 775
    .local v9, "noBotsLayout":Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    .end local v9    # "noBotsLayout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v15

    const v16, 0x7f080191

    invoke-virtual/range {v15 .. v16}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 780
    .local v8, "noBotsConnectButton":Landroid/widget/ImageButton;
    new-instance v15, Lcom/elenco/snapcoder/MainScreen$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/elenco/snapcoder/MainScreen$19;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    return-void
.end method

.method public setCircuits()V
    .locals 14

    .prologue
    const v13, 0x7f080081

    const/4 v12, 0x2

    const/16 v9, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 848
    const v8, 0x7f08024e

    invoke-virtual {p0, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 849
    const v8, 0x7f080080

    invoke-virtual {p0, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 850
    invoke-virtual {p0, v13}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 851
    .local v1, "circuitHolder1":Landroid/widget/FrameLayout;
    const v8, 0x7f080082

    invoke-virtual {p0, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 852
    .local v2, "circuitHolder2":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 853
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 854
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 855
    const v8, 0x7f080085

    invoke-virtual {p0, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 856
    .local v3, "circuitNoneFoundLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 863
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v12, :cond_0

    .line 864
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 865
    new-instance v7, Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {v7}, Lcom/elenco/snapcoder/fragments/circuitItem;-><init>()V

    .line 867
    .local v7, "newFragment2":Landroid/app/Fragment;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/model/Bot;

    invoke-static {v8}, Lcom/elenco/snapcoder/UIManager;->setCircuit2(Lcom/elenco/snapcoder/model/Bot;)V

    .line 868
    sput-boolean v11, Lcom/elenco/snapcoder/UIManager;->useCircuit2:Z

    .line 870
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 871
    .local v5, "ft2":Landroid/app/FragmentTransaction;
    const v8, 0x7f080082

    const-string v9, "circuit"

    invoke-virtual {v5, v8, v7, v9}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 874
    .end local v5    # "ft2":Landroid/app/FragmentTransaction;
    .end local v7    # "newFragment2":Landroid/app/Fragment;
    :cond_0
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v12, :cond_1

    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 875
    :cond_1
    new-instance v6, Lcom/elenco/snapcoder/fragments/circuitItem;

    invoke-direct {v6}, Lcom/elenco/snapcoder/fragments/circuitItem;-><init>()V

    .line 877
    .local v6, "newFragment":Landroid/app/Fragment;
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/elenco/snapcoder/model/Bot;

    invoke-static {v8}, Lcom/elenco/snapcoder/UIManager;->setCircuit1(Lcom/elenco/snapcoder/model/Bot;)V

    .line 878
    sput-boolean v11, Lcom/elenco/snapcoder/UIManager;->useCircuit1:Z

    .line 880
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 881
    .local v4, "ft":Landroid/app/FragmentTransaction;
    const-string v8, "circuit"

    invoke-virtual {v4, v13, v6, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 884
    .end local v4    # "ft":Landroid/app/FragmentTransaction;
    .end local v6    # "newFragment":Landroid/app/Fragment;
    :cond_2
    invoke-static {}, Lcom/elenco/snapcoder/BotManager;->getConnectedCircuits()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 885
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 886
    const v8, 0x7f08007a

    invoke-virtual {p0, v8}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 887
    .local v0, "circuitConnectButton":Landroid/widget/ImageButton;
    new-instance v8, Lcom/elenco/snapcoder/MainScreen$21;

    invoke-direct {v8, p0}, Lcom/elenco/snapcoder/MainScreen$21;-><init>(Lcom/elenco/snapcoder/MainScreen;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    .end local v0    # "circuitConnectButton":Landroid/widget/ImageButton;
    :cond_3
    return-void
.end method

.method public setCommandDrive()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 437
    const v10, 0x7f0801f7

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 438
    .local v8, "speedLImage":Landroid/widget/ImageView;
    const v10, 0x7f0801f3

    invoke-virtual {p0, v10}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 439
    .local v7, "speedHImage":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v6, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xf

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 441
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/elenco/snapcoder/MainScreen;->commandDriveIsOpen:Z

    .line 444
    iput-boolean v12, p0, Lcom/elenco/snapcoder/MainScreen;->touchDriveIsOpen:Z

    .line 445
    iput-boolean v12, p0, Lcom/elenco/snapcoder/MainScreen;->tankDriveIsOpen:Z

    .line 447
    new-instance v3, Lcom/elenco/snapcoder/fragments/GamePadFragment;

    invoke-direct {v3}, Lcom/elenco/snapcoder/fragments/GamePadFragment;-><init>()V

    .line 448
    .local v3, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 449
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "gamePad"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 450
    .local v1, "gamePad":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 451
    const v10, 0x7f0800ba

    const-string v11, "gamePad"

    invoke-virtual {v0, v10, v3, v11}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 455
    .local v4, "otherFT":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "joyStick"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 456
    .local v2, "joystick":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 458
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 461
    .local v5, "otherFT2":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "tank"

    invoke-virtual {v10, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    .line 462
    .local v9, "tank":Landroid/app/Fragment;
    if-eqz v9, :cond_2

    .line 463
    invoke-virtual {v5, v9}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 464
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 466
    :cond_2
    return-void
.end method

.method setDriveMode(Z)V
    .locals 3
    .param p1, "positive"    # Z

    .prologue
    .line 655
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 657
    if-eqz p1, :cond_1

    .line 658
    iget v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    .line 663
    :goto_0
    iget v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    if-gtz v1, :cond_2

    .line 664
    const/4 v1, 0x3

    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    .line 669
    :cond_0
    :goto_1
    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 671
    .local v0, "commandText":Lcom/elenco/snapcoder/AutoResizeTextView;
    iget v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    packed-switch v1, :pswitch_data_0

    .line 685
    :goto_2
    return-void

    .line 660
    .end local v0    # "commandText":Lcom/elenco/snapcoder/AutoResizeTextView;
    :cond_1
    iget v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    goto :goto_0

    .line 665
    :cond_2
    iget v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 666
    const/4 v1, 0x1

    iput v1, p0, Lcom/elenco/snapcoder/MainScreen;->driveModeSelected:I

    goto :goto_1

    .line 673
    .restart local v0    # "commandText":Lcom/elenco/snapcoder/AutoResizeTextView;
    :pswitch_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->setCommandDrive()V

    .line 674
    const-string v1, "COMMAND DRIVE"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 677
    :pswitch_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->setTankDrive()V

    .line 678
    const-string v1, "TANK DRIVE"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 681
    :pswitch_2
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->setTouchDrive()V

    .line 682
    const-string v1, "TOUCH DRIVE"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 789
    const v1, 0x7f0801fe

    invoke-virtual {p0, v1}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 790
    .local v0, "speedToggleImage":Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 802
    :goto_0
    :pswitch_0
    return-void

    .line 792
    :pswitch_1
    const v1, 0x7f070120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    const-string v1, "Slow"

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    .line 794
    const-string v1, "Slow"

    iput-object v1, p0, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    goto :goto_0

    .line 797
    :pswitch_2
    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    const-string v1, "Fast"

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->setSpeed(Ljava/lang/String;)V

    .line 799
    const-string v1, "Fast"

    iput-object v1, p0, Lcom/elenco/snapcoder/MainScreen;->selectedSpeed:Ljava/lang/String;

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setTankDrive()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 495
    iput-boolean v9, p0, Lcom/elenco/snapcoder/MainScreen;->commandDriveIsOpen:Z

    .line 496
    iput-boolean v9, p0, Lcom/elenco/snapcoder/MainScreen;->touchDriveIsOpen:Z

    .line 497
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/elenco/snapcoder/MainScreen;->tankDriveIsOpen:Z

    .line 499
    new-instance v4, Lcom/elenco/snapcoder/fragments/TankModeFragment;

    invoke-direct {v4}, Lcom/elenco/snapcoder/fragments/TankModeFragment;-><init>()V

    .line 500
    .local v4, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 501
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "tank"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    .line 502
    .local v8, "tank":Landroid/app/Fragment;
    if-nez v8, :cond_0

    .line 503
    const v9, 0x7f0800ba

    const-string v10, "tank"

    invoke-virtual {v1, v9, v4, v10}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 507
    .local v5, "otherFT":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "gamePad"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 508
    .local v2, "gamePad":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    .line 509
    invoke-virtual {v5, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 510
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 513
    .local v6, "otherFT2":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "joyStick"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 514
    .local v3, "joyStick":Landroid/app/Fragment;
    if-eqz v3, :cond_2

    .line 515
    invoke-virtual {v6, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 516
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 519
    .local v7, "otherFT3":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "energyLeash"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 520
    .local v0, "energyLeash":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 521
    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 522
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 524
    :cond_3
    return-void
.end method

.method public setTouchDrive()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 469
    iput-boolean v8, p0, Lcom/elenco/snapcoder/MainScreen;->commandDriveIsOpen:Z

    .line 470
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/elenco/snapcoder/MainScreen;->touchDriveIsOpen:Z

    .line 471
    iput-boolean v8, p0, Lcom/elenco/snapcoder/MainScreen;->tankDriveIsOpen:Z

    .line 473
    new-instance v3, Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-direct {v3}, Lcom/elenco/snapcoder/fragments/JoystickFragment;-><init>()V

    .line 474
    .local v3, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 475
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "joyStick"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 476
    .local v2, "joystick":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 477
    const v7, 0x7f0800ba

    const-string v8, "joyStick"

    invoke-virtual {v0, v7, v3, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 481
    .local v4, "otherFT":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "gamePad"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 482
    .local v1, "gamePad":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 483
    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 484
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 487
    .local v5, "otherFT2":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "tank"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    .line 488
    .local v6, "tank":Landroid/app/Fragment;
    if-eqz v6, :cond_2

    .line 489
    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 490
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 492
    :cond_2
    return-void
.end method

.method public startBlockly()V
    .locals 2

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .local v0, "blocklyIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/MainScreen;->startActivity(Landroid/content/Intent;)V

    .line 635
    return-void
.end method

.method public startInfoActivity()V
    .locals 4

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elenco/snapcoder/ChapterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    .local v0, "infoIntent":Landroid/content/Intent;
    sget-object v1, Lcom/elenco/snapcoder/MainScreen;->BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/MainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/MainScreen;->startActivity(Landroid/content/Intent;)V

    .line 629
    return-void
.end method
