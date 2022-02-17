.class final Lcom/google/android/gms/internal/ss;
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
        "<",
        "Lcom/google/android/gms/internal/vk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdP:Lcom/google/android/gms/internal/vt;

.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceU:Lcom/google/android/gms/internal/qi;

.field private synthetic zzceV:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ss;->zzceU:Lcom/google/android/gms/internal/qi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ss;->zzceV:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vt;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sn;->zzc(Lcom/google/android/gms/internal/vt;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceU:Lcom/google/android/gms/internal/qi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ss;->zzceV:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/za;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/uv;->zzI(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/za;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/za;->zzJG()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/uh;->zzh(Lcom/google/android/gms/internal/vt;)V

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/sn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/qr;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v6

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/wp;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/uv;->zze(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    if-nez v6, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/sn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    move v2, v5

    :goto_4
    if-nez v2, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_6
    move v6, v2

    :cond_7
    if-eqz v3, :cond_a

    if-nez v6, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/uv;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vu;

    new-instance v5, Lcom/google/android/gms/internal/tf;

    iget-object v7, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/internal/tf;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/internal/tf;->zza(Lcom/google/android/gms/internal/tf;)Lcom/google/android/gms/internal/th;

    move-result-object v8

    invoke-interface {v7, v2, v8, v5, v5}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/om;Lcom/google/android/gms/internal/td;)V

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceV:Lcom/google/firebase/database/DatabaseError;

    if-nez v2, :cond_b

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v4, p0, Lcom/google/android/gms/internal/ss;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Ljava/util/List;)V

    :cond_c
    return-object v1

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v5}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ss;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    goto :goto_6

    :cond_e
    move v6, v2

    goto/16 :goto_3
.end method
