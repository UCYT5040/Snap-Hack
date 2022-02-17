.class public final Lcom/google/android/gms/internal/we;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wf;


# instance fields
.field private final limit:I

.field private final zzcgV:Lcom/google/android/gms/internal/xe;

.field private final zzchA:Z

.field private final zzchz:Lcom/google/android/gms/internal/wh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/wh;-><init>(Lcom/google/android/gms/internal/vq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/we;->limit:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final zzID()Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object v0

    return-object v0
.end method

.method public final zzIE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzIm()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    new-instance v3, Lcom/google/android/gms/internal/xl;

    invoke-direct {v3, p2, p3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->getChildCount()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/we;->limit:I

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/wf;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/xl;

    invoke-direct {v5, p2, v3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzJf()Lcom/google/android/gms/internal/xl;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v7

    iget-object v4, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-interface {p5, v4, v0, v8}, Lcom/google/android/gms/internal/wg;->zza(Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/xl;Z)Lcom/google/android/gms/internal/xl;

    move-result-object v0

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-interface {p5, v0, v4, v8}, Lcom/google/android/gms/internal/wg;->zza(Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/xl;Z)Lcom/google/android/gms/internal/xl;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzJg()Lcom/google/android/gms/internal/xl;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-nez v4, :cond_7

    move v0, v1

    :goto_4
    if-eqz v6, :cond_8

    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    if-ltz v0, :cond_8

    move v0, v1

    :goto_5
    if-eqz v0, :cond_9

    if-eqz p6, :cond_6

    invoke-static {p2, v3, v7}, Lcom/google/android/gms/internal/vi;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_6
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-virtual {v0, v4, v5, v8}, Lcom/google/android/gms/internal/xe;->zza(Lcom/google/android/gms/internal/xl;Lcom/google/android/gms/internal/xl;Z)I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    if-eqz p6, :cond_a

    invoke-static {p2, v7}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    if-eqz v4, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_6
    if-eqz v0, :cond_0

    if-eqz p6, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/gms/internal/xe;->zza(Lcom/google/android/gms/internal/xl;Lcom/google/android/gms/internal/xl;Z)I

    move-result v1

    if-ltz v1, :cond_0

    if-eqz p6, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_e
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    goto/16 :goto_1

    :cond_f
    move-object v3, p3

    goto/16 :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 11

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object v0

    invoke-interface {v0, p1, v9, p3}, Lcom/google/android/gms/internal/wf;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFz()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzIG()Lcom/google/android/gms/internal/xl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzIF()Lcom/google/android/gms/internal/xl;

    move-result-object v3

    const/4 v0, -0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v0

    :goto_0
    move v8, v7

    move-object v9, v6

    move v6, v7

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    if-nez v6, :cond_3

    iget-object v10, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v10, v5, v0}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_3

    move v6, v2

    :cond_3
    if-eqz v6, :cond_5

    iget v10, p0, Lcom/google/android/gms/internal/we;->limit:I

    if-ge v8, v10, :cond_5

    iget-object v10, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v10, v0, v4}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_5

    move v10, v2

    :goto_2
    if-eqz v10, :cond_6

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wh;->zzIF()Lcom/google/android/gms/internal/xl;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wh;->zzIG()Lcom/google/android/gms/internal/xl;

    move-result-object v1

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move-object v3, v0

    goto :goto_0

    :cond_5
    move v10, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    move-object v9, v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p1
.end method
