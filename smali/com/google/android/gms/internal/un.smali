.class public final Lcom/google/android/gms/internal/un;
.super Ljava/lang/Object;


# instance fields
.field public final complete:Z

.field public final id:J

.field public final zzbpf:Z

.field public final zzcgi:Lcom/google/android/gms/internal/vt;

.field public final zzcgj:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/vt;JZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/un;->id:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vt;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    iput-wide p4, p0, Lcom/google/android/gms/internal/un;->zzcgj:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/un;->complete:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/un;

    iget-wide v2, p0, Lcom/google/android/gms/internal/un;->id:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/un;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    iget-object v3, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/vt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/un;->zzcgj:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/un;->zzcgj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/un;->complete:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/un;->complete:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/un;->zzbpf:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/un;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/un;->zzcgj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/un;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/un;->id:J

    iget-object v2, p0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/un;->zzcgj:J

    iget-boolean v3, p0, Lcom/google/android/gms/internal/un;->complete:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x6d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "TrackedQuery{id="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", querySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHO()Lcom/google/android/gms/internal/un;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/un;

    iget-wide v1, p0, Lcom/google/android/gms/internal/un;->id:J

    iget-object v3, p0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    iget-wide v4, p0, Lcom/google/android/gms/internal/un;->zzcgj:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/un;-><init>(JLcom/google/android/gms/internal/vt;JZZ)V

    return-object v0
.end method
