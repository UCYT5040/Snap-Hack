.class final Lcom/google/android/gms/internal/na;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zzc;


# instance fields
.field private synthetic zzbZC:Lcom/google/android/gms/internal/on;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/on;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzac(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    const-string v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/on;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/na;->zzbZC:Lcom/google/android/gms/internal/on;

    const-string v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/on;->resume(Ljava/lang/String;)V

    goto :goto_0
.end method
