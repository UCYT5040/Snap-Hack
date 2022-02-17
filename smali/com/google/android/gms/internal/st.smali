.class final Lcom/google/android/gms/internal/st;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy",
        "<",
        "Lcom/google/android/gms/internal/sn;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Lcom/google/android/gms/internal/sn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHp()Lcom/google/android/gms/internal/vu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v1}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    goto :goto_0
.end method
