.class public final Lcom/google/android/gms/internal/xf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/xl;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzcik:Lcom/google/android/gms/internal/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nm",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/xe;

.field private final zzcil:Lcom/google/android/gms/internal/xm;

.field private zzcim:Lcom/google/android/gms/internal/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nm",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/nm;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/nm;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    iput-object p1, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/nm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xm;",
            "Lcom/google/android/gms/internal/xe;",
            "Lcom/google/android/gms/internal/nm",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    iput-object p1, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    iput-object p3, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    return-void
.end method

.method private final zzJe()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/xg;->zzJh()Lcom/google/android/gms/internal/xg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/xe;->zzi(Lcom/google/android/gms/internal/xm;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/nm;

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/nm;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    :cond_3
    :goto_2
    return-void

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    iput-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)V

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/xf;

    invoke-static {}, Lcom/google/android/gms/internal/xr;->zzJl()Lcom/google/android/gms/internal/xr;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)V

    return-object v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/xf;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzFn()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzFz()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/xf;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzFz()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nm;->zzFz()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzJf()Lcom/google/android/gms/internal/xl;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    instance-of v0, v0, Lcom/google/android/gms/internal/wr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/xf;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    check-cast v0, Lcom/google/android/gms/internal/wr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wr;->zzIS()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/xl;

    iget-object v2, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nm;->zzFB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    goto :goto_0
.end method

.method public final zzJg()Lcom/google/android/gms/internal/xl;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    instance-of v0, v0, Lcom/google/android/gms/internal/wr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/xf;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    check-cast v0, Lcom/google/android/gms/internal/wr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wr;->zzIT()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/xl;

    iget-object v2, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nm;->zzFC()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/wp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/xg;->zzJh()Lcom/google/android/gms/internal/xg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/xf;->zzJe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    new-instance v1, Lcom/google/android/gms/internal/xl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nm;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xm;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/xe;->zzi(Lcom/google/android/gms/internal/xm;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    sget-object v3, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/nm;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    sget-object v1, Lcom/google/android/gms/internal/xf;->zzcik:Lcom/google/android/gms/internal/nm;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/nm;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    new-instance v3, Lcom/google/android/gms/internal/xl;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/nm;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/nm;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/xl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nm;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/nm;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/xf;

    iget-object v3, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/nm;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/xf;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/xm;->zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/xf;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-object v3, p0, Lcom/google/android/gms/internal/xf;->zzcim:Lcom/google/android/gms/internal/nm;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/xf;-><init>(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/nm;)V

    return-object v0
.end method
