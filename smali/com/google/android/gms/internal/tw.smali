.class public final Lcom/google/android/gms/internal/tw;
.super Lcom/google/android/gms/internal/tx;


# instance fields
.field private final zzcfF:Lcom/google/android/gms/internal/pz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ty;->zzcfJ:Lcom/google/android/gms/internal/ty;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tx;-><init>(Lcom/google/android/gms/internal/ty;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/tw;->zzcfF:Lcom/google/android/gms/internal/pz;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tx;->zzcfH:Lcom/google/android/gms/internal/tz;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/tw;->zzcfF:Lcom/google/android/gms/internal/pz;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHD()Lcom/google/android/gms/internal/pz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tw;->zzcfF:Lcom/google/android/gms/internal/pz;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tw;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/tw;->zzcfF:Lcom/google/android/gms/internal/pz;

    new-instance v2, Lcom/google/android/gms/internal/qr;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/wp;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/qr;-><init>([Lcom/google/android/gms/internal/wp;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pz;->zzg(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/pz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->zzGJ()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ub;

    iget-object v2, p0, Lcom/google/android/gms/internal/tw;->zzcfH:Lcom/google/android/gms/internal/tz;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->zzGJ()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/tw;

    iget-object v2, p0, Lcom/google/android/gms/internal/tw;->zzcfH:Lcom/google/android/gms/internal/tz;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/tw;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/tw;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/tw;

    iget-object v1, p0, Lcom/google/android/gms/internal/tw;->zzcfH:Lcom/google/android/gms/internal/tz;

    iget-object v2, p0, Lcom/google/android/gms/internal/tw;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/tw;->zzcfF:Lcom/google/android/gms/internal/pz;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tw;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V

    goto :goto_0
.end method
