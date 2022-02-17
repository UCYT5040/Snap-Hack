.class final Lcom/google/android/gms/internal/ro;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/tg;


# instance fields
.field final synthetic zzcdA:Lcom/google/android/gms/internal/qu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ro;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ro;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzc(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/on;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vq;->zzIp()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/om;Lcom/google/android/gms/internal/td;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ro;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzc(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/on;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vq;->zzIp()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/th;->zzHs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/rp;

    invoke-direct {v5, p0, p4}, Lcom/google/android/gms/internal/rp;-><init>(Lcom/google/android/gms/internal/ro;Lcom/google/android/gms/internal/td;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/om;Ljava/lang/Long;Lcom/google/android/gms/internal/pf;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
