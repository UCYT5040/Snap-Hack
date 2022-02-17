.class public Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;
.super Landroid/support/v4/app/Fragment;
.source "FlyOutActivityMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$openAppTutorial;
    }
.end annotation


# static fields
.field public static FLYOUTACTIVITY_LOG:Ljava/lang/String;


# instance fields
.field exTimer:Ljava/util/Timer;

.field flyOutMenuBlank:Landroid/widget/RelativeLayout;

.field fragKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "FlyOutActivityMenu"

    sput-object v0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->FLYOUTACTIVITY_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->fragKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->startDriveWithFragment()V

    return-void
.end method

.method private startDriveWithFragment()V
    .locals 4

    .prologue
    .line 130
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/elenco/snapcoder/BotManager;->stopBots(Ljava/lang/Boolean;)V

    .line 131
    invoke-static {}, Lcom/elenco/snapcoder/fragments/BlocklyWebViewFragment;->stopExecutionTimerBlockly()V

    .line 132
    sget-object v1, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->FLYOUTACTIVITY_LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting DrivingScreen with fragKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->fragKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/elenco/snapcoder/MainScreen;->BUNDLE_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->fragKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method


# virtual methods
.method public getFlyMenuBlank()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 39
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-object v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->FLYOUTACTIVITY_LOG:Ljava/lang/String;

    const-string v8, "Created FlyOutActivityMenu"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const v7, 0x7f0a0034

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 43
    .local v6, "v":Landroid/view/View;
    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 44
    .local v3, "driveButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$1;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$1;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 52
    .local v2, "connectButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$2;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$2;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v7, 0x7f080056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 60
    .local v1, "botCODEButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$3;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$3;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v7, 0x7f08018a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 68
    .local v5, "myBotsButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$4;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$4;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v7, 0x7f080147

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 77
    .local v4, "infoButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$5;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 85
    .local v0, "blocklyButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$6;

    invoke-direct {v7, p0}, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu$6;-><init>(Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v7, 0x7f0800f5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 95
    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 96
    iget-object v7, p0, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->flyOutMenuBlank:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 98
    sget-object v7, Lcom/elenco/snapcoder/fragments/FlyOutActivityMenu;->FLYOUTACTIVITY_LOG:Ljava/lang/String;

    const-string v8, "End of onCreate."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v6
.end method
