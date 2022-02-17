.class final Lcom/google/android/gms/internal/qw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdB:Ljava/util/Map;

.field private synthetic zzcdC:Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qw;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/qw;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/android/gms/internal/qw;->zzcdB:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/qw;->zzcdC:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/qw;->zzcdA:Lcom/google/android/gms/internal/qu;

    const-string v1, "onDisconnect().updateChildren"

    iget-object v3, p0, Lcom/google/android/gms/internal/qw;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qw;->zzcdB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/qw;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/qu;->zzf(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/si;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/qw;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qr;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xm;

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/si;->zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qw;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/android/gms/internal/qw;->zzcdC:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/qw;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    return-void
.end method
