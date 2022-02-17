.class public final Lcom/google/android/gms/internal/xs;
.super Ljava/lang/Object;


# direct methods
.method public static zzc(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;)Lcom/google/android/gms/internal/xm;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/xk;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/xc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/xc;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xm;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/xs;->zzl(Lcom/google/android/gms/internal/xm;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Path \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " contains invalid priority: Must be a string, double, ServerValue, or null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "Node"

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/xm;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/xc;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/xu;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/xb;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
