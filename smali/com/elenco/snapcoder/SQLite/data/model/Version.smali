.class public Lcom/elenco/snapcoder/SQLite/data/model/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final KEY_VersionId:Ljava/lang/String; = "VersionId"

.field public static final TABLE:Ljava/lang/String; = "Version"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private versionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/elenco/snapcoder/SQLite/data/model/Command;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elenco/snapcoder/SQLite/data/model/Version;->TAG:Ljava/lang/String;

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
.method public getVersionId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/elenco/snapcoder/SQLite/data/model/Version;->versionId:I

    return v0
.end method

.method public setVersionId(I)V
    .locals 0
    .param p1, "versionId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/elenco/snapcoder/SQLite/data/model/Version;->versionId:I

    .line 24
    return-void
.end method
