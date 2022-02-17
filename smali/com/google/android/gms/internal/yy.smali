.class public final Lcom/google/android/gms/internal/yy;
.super Ljava/lang/Object;


# direct methods
.method private static zzc(Lcom/google/android/gms/internal/xh;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xh",
            "<*>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x8

    instance-of v2, p0, Lcom/google/android/gms/internal/xc;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-wide v0

    :cond_1
    instance-of v2, p0, Lcom/google/android/gms/internal/xk;

    if-nez v2, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/wo;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/xu;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown leaf node type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v2, 0x18

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xh;

    invoke-static {v0}, Lcom/google/android/gms/internal/yy;->zzc(Lcom/google/android/gms/internal/xh;)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public static zzn(Lcom/google/android/gms/internal/xm;)J
    .locals 10

    const-wide/16 v4, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/xh;

    invoke-static {p0}, Lcom/google/android/gms/internal/yy;->zzc(Lcom/google/android/gms/internal/xh;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v2, v8

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yy;->zzn(Lcom/google/android/gms/internal/xm;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc

    add-long/2addr v2, v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xh;

    invoke-static {v0}, Lcom/google/android/gms/internal/yy;->zzc(Lcom/google/android/gms/internal/xh;)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public static zzo(Lcom/google/android/gms/internal/xm;)I
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yy;->zzo(Lcom/google/android/gms/internal/xm;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
