.class final Lcom/google/android/gms/internal/uq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uz",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/android/gms/internal/vq;",
        "Lcom/google/android/gms/internal/un;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzaj(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/vq;->zzcgZ:Lcom/google/android/gms/internal/vq;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/un;->zzbpf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
