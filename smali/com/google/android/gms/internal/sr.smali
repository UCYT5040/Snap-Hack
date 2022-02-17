.class final Lcom/google/android/gms/internal/sr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/vk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceU:Lcom/google/android/gms/internal/qi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qi;->zzGH()Lcom/google/android/gms/internal/vt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    move-object v5, v6

    move-object v7, v0

    move v3, v2

    :goto_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-eqz v0, :cond_11

    if-eqz v4, :cond_1

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_2
    move-object v3, v4

    :goto_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-static {v4}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v4

    :goto_4
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/uv;->zze(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/sn;

    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v5}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/internal/uh;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v7, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;

    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    :goto_5
    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v5}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/uh;->zzg(Lcom/google/android/gms/internal/vt;)V

    if-eqz v0, :cond_b

    new-instance v5, Lcom/google/android/gms/internal/vg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    move-object v0, v5

    :goto_6
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/sn;->zzc(Lcom/google/android/gms/internal/vt;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzf(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/th;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v5}, Lcom/google/android/gms/internal/so;->zze(Lcom/google/android/gms/internal/so;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v5}, Lcom/google/android/gms/internal/so;->zzg(Lcom/google/android/gms/internal/so;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzc(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tp;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/tp;->zzt(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/ts;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/qi;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/vg;)Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/sn;->zzb(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2, v8, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vu;)V

    :cond_6
    return-object v0

    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v3, v1

    :goto_7
    if-eqz v4, :cond_a

    :goto_8
    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    goto :goto_5

    :cond_9
    move v3, v2

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/uh;->zzf(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v7

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/uv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/sn;

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wp;

    invoke-interface {v5, v0, v1}, Lcom/google/android/gms/internal/xm;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    :goto_a
    move-object v5, v0

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/google/android/gms/internal/xm;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v5

    goto :goto_b

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/vg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    goto/16 :goto_6

    :cond_10
    move-object v0, v5

    goto :goto_a

    :cond_11
    move v0, v3

    move-object v3, v4

    goto/16 :goto_3
.end method
