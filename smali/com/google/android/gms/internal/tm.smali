.class public final Lcom/google/android/gms/internal/tm;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZf:Lcom/google/android/gms/internal/qr;

.field private final zzcfl:J

.field private final zzcfm:Lcom/google/android/gms/internal/xm;

.field private final zzcfn:Lcom/google/android/gms/internal/pz;

.field private final zzcfo:Z


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    iput-object p3, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    iput-object p4, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    iput-object p3, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    iput-object p4, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/tm;

    iget-wide v2, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/tm;->zzcfl:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p1, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    iget-object v3, p1, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    iget-object v3, p1, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/pz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    if-eqz v2, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    iget-object v2, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tm;->zzcfo:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4e

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "UserWriteRecord{id="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " overwrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFq()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method

.method public final zzHt()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/tm;->zzcfl:J

    return-wide v0
.end method

.method public final zzHu()Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzHv()Lcom/google/android/gms/internal/pz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfn:Lcom/google/android/gms/internal/pz;

    return-object v0
.end method

.method public final zzHw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->zzcfm:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
