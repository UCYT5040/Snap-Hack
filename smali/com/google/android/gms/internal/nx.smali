.class final Lcom/google/android/gms/internal/nx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field

.field private final zzcaf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final zzcag:Lcom/google/android/gms/internal/nk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nk",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private zzcah:Lcom/google/android/gms/internal/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nu",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private zzcai:Lcom/google/android/gms/internal/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nu",
            "<TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/nk",
            "<TA;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nx;->zzcaf:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/nx;->values:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/nx;->zzcag:Lcom/google/android/gms/internal/nk;

    return-void
.end method

.method private final zzag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/nx;->zzcag:Lcom/google/android/gms/internal/nk;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/nk;->zzab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nk;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nv;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/nk",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/nv",
            "<TA;TC;>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/nx;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/nx;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nk;)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/google/android/gms/internal/ny;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ny;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ny;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oa;

    iget v4, v0, Lcom/google/android/gms/internal/oa;->zzcam:I

    sub-int/2addr v1, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/oa;->zzcal:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/gms/internal/nr;->zzbZZ:I

    iget v0, v0, Lcom/google/android/gms/internal/oa;->zzcam:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/nx;->zze(III)V

    goto :goto_0

    :cond_0
    sget v4, Lcom/google/android/gms/internal/nr;->zzbZZ:I

    iget v5, v0, Lcom/google/android/gms/internal/oa;->zzcam:I

    invoke-direct {v2, v4, v5, v1}, Lcom/google/android/gms/internal/nx;->zze(III)V

    iget v4, v0, Lcom/google/android/gms/internal/oa;->zzcam:I

    sub-int/2addr v1, v4

    sget v4, Lcom/google/android/gms/internal/nr;->zzbZY:I

    iget v0, v0, Lcom/google/android/gms/internal/oa;->zzcam:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/nx;->zze(III)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nv;

    iget-object v0, v2, Lcom/google/android/gms/internal/nx;->zzcah:Lcom/google/android/gms/internal/nu;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2}, Lcom/google/android/gms/internal/nv;-><init>(Lcom/google/android/gms/internal/nq;Ljava/util/Comparator;Lcom/google/android/gms/internal/nw;)V

    return-object v1

    :cond_2
    iget-object v0, v2, Lcom/google/android/gms/internal/nx;->zzcah:Lcom/google/android/gms/internal/nu;

    goto :goto_1
.end method

.method private final zze(III)V
    .locals 5

    const/4 v4, 0x0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/nx;->zzn(II)Lcom/google/android/gms/internal/nq;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcaf:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v0, Lcom/google/android/gms/internal/nr;->zzbZY:I

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/nt;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/nx;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/nt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nx;->zzcah:Lcom/google/android/gms/internal/nu;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcah:Lcom/google/android/gms/internal/nu;

    iput-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcai:Lcom/google/android/gms/internal/nu;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/nx;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/nx;->zzcai:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nu;->zzb(Lcom/google/android/gms/internal/nq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcai:Lcom/google/android/gms/internal/nu;

    goto :goto_1
.end method

.method private final zzn(II)Lcom/google/android/gms/internal/nq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/nq",
            "<TA;TC;>;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcaf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/nx;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p2, 0x2

    add-int v1, p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/nx;->zzn(II)Lcom/google/android/gms/internal/nq;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/nx;->zzn(II)Lcom/google/android/gms/internal/nq;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/nx;->zzcaf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/nx;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    goto :goto_0
.end method
