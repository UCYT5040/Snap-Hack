.class final Lcom/google/android/gms/internal/yh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzciY:I

.field public static final enum zzciZ:I

.field public static final enum zzcja:I

.field public static final enum zzcjb:I

.field public static final enum zzcjc:I

.field private static final synthetic zzcjd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/internal/yh;->zzciY:I

    sput v4, Lcom/google/android/gms/internal/yh;->zzciZ:I

    sput v5, Lcom/google/android/gms/internal/yh;->zzcja:I

    sput v6, Lcom/google/android/gms/internal/yh;->zzcjb:I

    sput v0, Lcom/google/android/gms/internal/yh;->zzcjc:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/gms/internal/yh;->zzciY:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/gms/internal/yh;->zzciZ:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/yh;->zzcja:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/yh;->zzcjb:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/yh;->zzcjc:I

    aput v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/yh;->zzcjd:[I

    return-void
.end method

.method public static zzJu()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/yh;->zzcjd:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
