.class public final Lcom/google/android/gms/internal/yz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ys;


# instance fields
.field private final zzcjx:Lcom/google/android/gms/internal/ys;

.field private zzcjy:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ys;J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/yz;->zzcjy:J

    iput-object p1, p0, Lcom/google/android/gms/internal/yz;->zzcjx:Lcom/google/android/gms/internal/ys;

    iput-wide v0, p0, Lcom/google/android/gms/internal/yz;->zzcjy:J

    return-void
.end method


# virtual methods
.method public final zzJF()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/yz;->zzcjx:Lcom/google/android/gms/internal/ys;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ys;->zzJF()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/yz;->zzcjy:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/yz;->zzcjy:J

    return-void
.end method
