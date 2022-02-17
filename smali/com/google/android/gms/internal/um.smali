.class final Lcom/google/android/gms/internal/um;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcgh:Lcom/google/android/gms/internal/uy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/uj;Lcom/google/android/gms/internal/uy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/um;->zzcgh:Lcom/google/android/gms/internal/uy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/um;->zzcgh:Lcom/google/android/gms/internal/uy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/uy;->zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method
