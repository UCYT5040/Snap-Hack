.class final Lcom/google/android/gms/internal/nd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZH:Lcom/google/android/gms/internal/uv;

.field private synthetic zzbZI:Ljava/util/List;

.field private synthetic zzbZJ:Lcom/google/android/gms/internal/qr;

.field private synthetic zzbZK:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Lcom/google/android/gms/internal/uv;Ljava/util/List;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nd;->zzbZH:Lcom/google/android/gms/internal/uv;

    iput-object p3, p0, Lcom/google/android/gms/internal/nd;->zzbZI:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/nd;->zzbZJ:Lcom/google/android/gms/internal/qr;

    iput-object p5, p0, Lcom/google/android/gms/internal/nd;->zzbZK:Lcom/google/android/gms/internal/xm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nd;->zzbZH:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nd;->zzbZI:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/za;

    iget-object v2, p0, Lcom/google/android/gms/internal/nd;->zzbZJ:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nd;->zzbZK:Lcom/google/android/gms/internal/xm;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/za;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
