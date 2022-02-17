.class final Lcom/google/android/gms/internal/nc;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZH:Lcom/google/android/gms/internal/uv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Lcom/google/android/gms/internal/uv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nc;->zzbZH:Lcom/google/android/gms/internal/uv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/nc;->zzbZH:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
