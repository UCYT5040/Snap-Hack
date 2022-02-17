.class final Lcom/google/android/gms/internal/qb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy",
        "<",
        "Lcom/google/android/gms/internal/xm;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzccI:Ljava/util/Map;

.field private synthetic zzccJ:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pz;Ljava/util/Map;Z)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/qb;->zzccI:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Lcom/google/android/gms/internal/xm;

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHa()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qb;->zzccJ:Z

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
