.class final Lcom/google/android/gms/internal/ms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzbZu:Lcom/google/android/gms/internal/pv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mr;Lcom/google/android/gms/internal/pv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ms;->zzbZu:Lcom/google/android/gms/internal/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/aaf;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->zzbZu:Lcom/google/android/gms/internal/pv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pv;->zzgF(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->zzbZu:Lcom/google/android/gms/internal/pv;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pv;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
