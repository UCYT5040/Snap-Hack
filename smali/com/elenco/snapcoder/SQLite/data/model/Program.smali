.class public Lcom/elenco/snapcoder/SQLite/data/model/Program;
.super Ljava/lang/Object;
.source "Program.java"


# static fields
.field public static final KEY_ProgramId:Ljava/lang/String; = "ProgramId"

.field public static final KEY_ProgramName:Ljava/lang/String; = "ProgramName"

.field public static final TABLE:Ljava/lang/String; = "Program"


# instance fields
.field private programId:I

.field private programName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgramId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Program;->programId:I

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Program;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public setProgramId(I)V
    .locals 0
    .param p1, "programId"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Program;->programId:I

    .line 25
    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Program;->programName:Ljava/lang/String;

    .line 35
    return-void
.end method
