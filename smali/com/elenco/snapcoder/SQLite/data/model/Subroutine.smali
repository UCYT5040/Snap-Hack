.class public Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;
.super Ljava/lang/Object;
.source "Subroutine.java"


# static fields
.field public static final KEY_SubroutineId:Ljava/lang/String; = "SubroutineId"

.field public static final KEY_SubroutineName:Ljava/lang/String; = "SubroutineName"

.field public static final KEY_SubroutineProgramId:Ljava/lang/String; = "SubroutineProgramId"

.field public static final TABLE:Ljava/lang/String; = "Subroutine"


# instance fields
.field private subroutineId:I

.field private subroutineName:Ljava/lang/String;

.field private subroutineProgramId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubroutineId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineId:I

    return v0
.end method

.method public getSubroutineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubroutineProgramId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineProgramId:I

    return v0
.end method

.method public setSubRoutineProgramId(I)V
    .locals 0
    .param p1, "subroutineProgramId"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineProgramId:I

    return-void
.end method

.method public setSubroutineId(I)V
    .locals 0
    .param p1, "subroutineId"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineId:I

    .line 27
    return-void
.end method

.method public setSubroutineName(Ljava/lang/String;)V
    .locals 0
    .param p1, "subroutineName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Subroutine;->subroutineName:Ljava/lang/String;

    .line 37
    return-void
.end method
