.class final Lcom/google/android/gms/internal/si;
.super Ljava/lang/Object;


# instance fields
.field private zzceA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/wp;",
            "Lcom/google/android/gms/internal/si;",
            ">;"
        }
    .end annotation
.end field

.field private zzcez:Lcom/google/android/gms/internal/xm;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/sm;->zzf(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/sk;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/sk;-><init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wp;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/si;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/si;)V

    goto :goto_0
.end method

.method public final zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/si;

    invoke-direct {v2}, Lcom/google/android/gms/internal/si;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/si;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    move-object p0, v0

    goto :goto_0
.end method

.method public final zzq(Lcom/google/android/gms/internal/qr;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v5, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    iput-object v5, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    check-cast v0, Lcom/google/android/gms/internal/wr;

    iput-object v5, p0, Lcom/google/android/gms/internal/si;->zzcez:Lcom/google/android/gms/internal/xm;

    new-instance v3, Lcom/google/android/gms/internal/sj;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/wr;->zza(Lcom/google/android/gms/internal/wu;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/si;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/si;->zzq(Lcom/google/android/gms/internal/qr;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v5, p0, Lcom/google/android/gms/internal/si;->zzceA:Ljava/util/Map;

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method
