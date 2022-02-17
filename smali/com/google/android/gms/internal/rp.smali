.class final Lcom/google/android/gms/internal/rp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzcdS:Lcom/google/android/gms/internal/td;

.field private synthetic zzcdT:Lcom/google/android/gms/internal/ro;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ro;Lcom/google/android/gms/internal/td;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rp;->zzcdT:Lcom/google/android/gms/internal/ro;

    iput-object p2, p0, Lcom/google/android/gms/internal/rp;->zzcdS:Lcom/google/android/gms/internal/td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->zzcdS:Lcom/google/android/gms/internal/td;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/td;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rp;->zzcdT:Lcom/google/android/gms/internal/ro;

    iget-object v1, v1, Lcom/google/android/gms/internal/ro;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    return-void
.end method
