.class final Lcom/google/android/gms/internal/qx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qx;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/qx;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/android/gms/internal/qx;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/qu;->zzf(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/si;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/qx;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/si;->zzq(Lcom/google/android/gms/internal/qr;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qx;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/android/gms/internal/qx;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/qx;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    return-void
.end method
