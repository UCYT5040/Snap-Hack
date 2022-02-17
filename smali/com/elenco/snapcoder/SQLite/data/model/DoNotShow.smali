.class public Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
.super Ljava/lang/Object;
.source "DoNotShow.java"


# static fields
.field public static final KEY_DoNotShowId:Ljava/lang/String; = "DoNotShowId"

.field public static final KEY_LocationName:Ljava/lang/String; = "LocationName"

.field public static final KEY_ShowAgain:Ljava/lang/String; = "ShowAgain"

.field public static final TABLE:Ljava/lang/String; = "DoNotShow"


# instance fields
.field private doNotShowId:I

.field private locationName:Ljava/lang/String;

.field private showAgain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDoNotShowId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->doNotShowId:I

    return v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAgain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->showAgain:Ljava/lang/String;

    return-object v0
.end method

.method public setDoNotShowId(I)V
    .locals 0
    .param p1, "doNotShowId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->doNotShowId:I

    .line 24
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->locationName:Ljava/lang/String;

    return-void
.end method

.method public setShowAgain(Ljava/lang/String;)V
    .locals 0
    .param p1, "showAgain"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->showAgain:Ljava/lang/String;

    return-void
.end method
