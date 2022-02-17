.class final Lcom/google/android/gms/internal/vn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/vi;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcgW:Lcom/google/android/gms/internal/vm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vn;->zzcgW:Lcom/google/android/gms/internal/vm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/vi;

    check-cast p2, Lcom/google/android/gms/internal/vi;

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    new-instance v1, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcgW:Lcom/google/android/gms/internal/vm;

    invoke-static {v2}, Lcom/google/android/gms/internal/vm;->zza(Lcom/google/android/gms/internal/vm;)Lcom/google/android/gms/internal/xe;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
