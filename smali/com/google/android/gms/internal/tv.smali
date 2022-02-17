.class public final Lcom/google/android/gms/internal/tv;
.super Lcom/google/android/gms/internal/tx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ty;->zzcfL:Lcom/google/android/gms/internal/ty;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tx;-><init>(Lcom/google/android/gms/internal/ty;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tx;->zzcfH:Lcom/google/android/gms/internal/tz;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tv;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/tv;

    iget-object v1, p0, Lcom/google/android/gms/internal/tv;->zzcfH:Lcom/google/android/gms/internal/tz;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tv;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/tv;

    iget-object v1, p0, Lcom/google/android/gms/internal/tv;->zzcfH:Lcom/google/android/gms/internal/tz;

    iget-object v2, p0, Lcom/google/android/gms/internal/tv;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tv;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    goto :goto_0
.end method
