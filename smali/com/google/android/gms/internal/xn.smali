.class final Lcom/google/android/gms/internal/xn;
.super Lcom/google/android/gms/internal/wr;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wr;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/xm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xn;->zzg(Lcom/google/android/gms/internal/xm;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Max Node>"

    return-object v0
.end method

.method public final zzIR()Lcom/google/android/gms/internal/xm;
    .locals 0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/xm;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/wp;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p0

    goto :goto_0
.end method
