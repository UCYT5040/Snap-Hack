.class final Lcom/google/android/gms/internal/ot;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oy;


# instance fields
.field private synthetic zzcbf:Lcom/google/android/gms/internal/op;

.field private synthetic zzcbj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/op;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ot;->zzcbj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzC(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/oz;

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzg(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oo;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/oo;->zzaB(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ot;->zzcbj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzh(Lcom/google/android/gms/internal/op;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v1}, Lcom/google/android/gms/internal/op;->zzg(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oo;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/oo;->zzaB(Z)V

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Authentication failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v6, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v1}, Lcom/google/android/gms/internal/op;->zzi(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/od;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/od;->close()V

    const-string v1, "invalid_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzj(Lcom/google/android/gms/internal/op;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzk(Lcom/google/android/gms/internal/op;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzl(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/pq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq;->zzGB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ot;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v1, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/wl;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
