.class public final Lcom/google/android/gms/internal/tu;
.super Lcom/google/android/gms/internal/tx;


# instance fields
.field private final zzcfD:Z

.field private final zzcfE:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uv;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ty;->zzcfK:Lcom/google/android/gms/internal/ty;

    sget-object v1, Lcom/google/android/gms/internal/tz;->zzcfN:Lcom/google/android/gms/internal/tz;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/tx;-><init>(Lcom/google/android/gms/internal/ty;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/tu;->zzcfD:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tu;->zzcfD:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHB()Lcom/google/android/gms/internal/uv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    return-object v0
.end method

.method public final zzHC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tu;->zzcfD:Z

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "operationForChild called for unrelated child."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/tu;

    iget-object v1, p0, Lcom/google/android/gms/internal/tu;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tu;->zzcfD:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uv;Z)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->isEmpty()Z

    move-result v0

    const-string v1, "affectedTree should not have overlapping affected paths."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->zzcfE:Lcom/google/android/gms/internal/uv;

    new-instance v1, Lcom/google/android/gms/internal/qr;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/wp;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/qr;-><init>([Lcom/google/android/gms/internal/wp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/tu;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tu;->zzcfD:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uv;Z)V

    move-object p0, v0

    goto :goto_0
.end method
