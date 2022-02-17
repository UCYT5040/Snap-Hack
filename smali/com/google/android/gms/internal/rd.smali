.class final Lcom/google/android/gms/internal/rd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdG:Lcom/google/firebase/database/DataSnapshot;

.field private synthetic zzcdJ:Lcom/google/android/gms/internal/rv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rc;Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/rd;->zzcdJ:Lcom/google/android/gms/internal/rv;

    iput-object p3, p0, Lcom/google/android/gms/internal/rd;->zzcdG:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->zzcdJ:Lcom/google/android/gms/internal/rv;

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzh(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/rd;->zzcdG:Lcom/google/firebase/database/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
