.class public Lcom/elenco/snapcoder/SQLite/data/model/Bots;
.super Ljava/lang/Object;
.source "Bots.java"


# static fields
.field public static final KEY_BotAddress:Ljava/lang/String; = "BotAddress"

.field public static final KEY_BotId:Ljava/lang/String; = "BotId"

.field public static final KEY_CalibratedReverse:Ljava/lang/String; = "CalibratedReverse"

.field public static final KEY_CalibratedSpinLeft:Ljava/lang/String; = "CalibratedSpinLeft"

.field public static final KEY_CalibratedSpinRight:Ljava/lang/String; = "CalibratedSpinRight"

.field public static final KEY_CalibratedSraight:Ljava/lang/String; = "CalibratedStraight"

.field public static final KEY_CalibratedTurnLeft:Ljava/lang/String; = "CalibratedTurnLeft"

.field public static final KEY_CalibratedTurnRight:Ljava/lang/String; = "CalibratedTurnRight"

.field public static final KEY_Icon:Ljava/lang/String; = "Icon"

.field public static final KEY_LeftTurnHard360:Ljava/lang/String; = "LeftTurnHard360"

.field public static final KEY_LeftTurnSoft360:Ljava/lang/String; = "LeftTurnSoft360"

.field public static final KEY_Name:Ljava/lang/String; = "Name"

.field public static final KEY_ReverseConfiguration:Ljava/lang/String; = "ReverseConfiguration"

.field public static final KEY_ReverseTurningDirection:Ljava/lang/String; = "ReverseTurningDirection"

.field public static final KEY_RightTurnHard360:Ljava/lang/String; = "RightTurnHard360"

.field public static final KEY_RightTurnSoft360:Ljava/lang/String; = "RightTurnSoft360"

.field public static final KEY_StraightConfiguration:Ljava/lang/String; = "StraightConfiguration"

.field public static final KEY_TimeDriven:Ljava/lang/String; = "TimeDriven"

.field public static final KEY_TurningDirection:Ljava/lang/String; = "TurningDirection"

.field public static final TABLE:Ljava/lang/String; = "Bots"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private botAddress:Ljava/lang/String;

.field private botId:I

.field private calibratedReverse:I

.field private calibratedSpinLeft:I

.field private calibratedSpinRight:I

.field private calibratedStraight:I

.field private calibratedTurnLeft:I

.field private calibratedTurnRight:I

.field private icon:Ljava/lang/String;

.field private leftTurnHard360:F

.field private leftTurnSoft360:F

.field private name:Ljava/lang/String;

.field private reverseConfiguration:I

.field private reverseTurningDirection:Ljava/lang/String;

.field private rightTurnHard360:F

.field private rightTurnSoft360:F

.field private straightConfiguration:I

.field private timeDriven:I

.field private turningDirection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBotAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->botAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBotIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getBotId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->botId:I

    return v0
.end method

.method public getBotsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCalibratedReverse()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedReverse:I

    return v0
.end method

.method public getCalibratedSpinLeft()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedSpinLeft:I

    return v0
.end method

.method public getCalibratedSpinRight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedSpinRight:I

    return v0
.end method

.method public getCalibratedStraight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedStraight:I

    return v0
.end method

.method public getCalibratedTurnLeft()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedTurnLeft:I

    return v0
.end method

.method public getCalibratedTurnRight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedTurnRight:I

    return v0
.end method

.method public getLeftTurnHard360()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->leftTurnHard360:F

    return v0
.end method

.method public getLeftTurnSoft360()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->leftTurnSoft360:F

    return v0
.end method

.method public getReverseConfiguration()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->reverseConfiguration:I

    return v0
.end method

.method public getReverseTurningDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->reverseTurningDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getRightTurnHard360()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->rightTurnHard360:F

    return v0
.end method

.method public getRightTurnSoft360()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->rightTurnSoft360:F

    return v0
.end method

.method public getStraightConfiguration()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->straightConfiguration:I

    return v0
.end method

.method public getTimeDriven()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->timeDriven:I

    return v0
.end method

.method public getTurningDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->turningDirection:Ljava/lang/String;

    return-object v0
.end method

.method public setBotAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "botAddress"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->botAddress:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setBotIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->icon:Ljava/lang/String;

    return-void
.end method

.method public setBotId(I)V
    .locals 0
    .param p1, "botId"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->botId:I

    .line 60
    return-void
.end method

.method public setBotsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->name:Ljava/lang/String;

    return-void
.end method

.method public setCalibratedReverse(I)V
    .locals 0
    .param p1, "calibratedReverse"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedReverse:I

    return-void
.end method

.method public setCalibratedSpinLeft(I)V
    .locals 0
    .param p1, "calibratedSpinLeft"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedSpinLeft:I

    return-void
.end method

.method public setCalibratedSpinRight(I)V
    .locals 0
    .param p1, "calibratedSpinRight"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedSpinRight:I

    return-void
.end method

.method public setCalibratedStraight(I)V
    .locals 0
    .param p1, "calibratedStraight"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedStraight:I

    return-void
.end method

.method public setCalibratedTurnLeft(I)V
    .locals 0
    .param p1, "calibratedTurnLeft"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedTurnLeft:I

    return-void
.end method

.method public setCalibratedTurnRight(I)V
    .locals 0
    .param p1, "calibratedTurnRight"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->calibratedTurnRight:I

    return-void
.end method

.method public setLeftTurnHard360(F)V
    .locals 0
    .param p1, "leftTurnHard360"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->leftTurnHard360:F

    return-void
.end method

.method public setLeftTurnSoft360(F)V
    .locals 0
    .param p1, "leftTurnSoft360"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->leftTurnSoft360:F

    return-void
.end method

.method public setReverseConfiguration(I)V
    .locals 0
    .param p1, "reverseConfiguration"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->reverseConfiguration:I

    return-void
.end method

.method public setReverseTurningDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "reverseTurningDirection"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->reverseTurningDirection:Ljava/lang/String;

    return-void
.end method

.method public setRightTurnHard360(F)V
    .locals 0
    .param p1, "rightTurnHard360"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->rightTurnHard360:F

    return-void
.end method

.method public setRightTurnSoft360(F)V
    .locals 0
    .param p1, "rightTurnSoft360"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->rightTurnSoft360:F

    return-void
.end method

.method public setStraightConfiguration(I)V
    .locals 0
    .param p1, "straightConfiguration"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->straightConfiguration:I

    return-void
.end method

.method public setTimeDriven(I)V
    .locals 0
    .param p1, "timeDriven"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->timeDriven:I

    return-void
.end method

.method public setTurningDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "turningDirection"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Bots;->turningDirection:Ljava/lang/String;

    return-void
.end method
