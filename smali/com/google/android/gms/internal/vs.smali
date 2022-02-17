.class final Lcom/google/android/gms/internal/vs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzchi:I

.field public static final enum zzchj:I

.field private static final synthetic zzchk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/internal/vs;->zzchi:I

    sput v0, Lcom/google/android/gms/internal/vs;->zzchj:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/gms/internal/vs;->zzchi:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/gms/internal/vs;->zzchj:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/vs;->zzchk:[I

    return-void
.end method

.method public static zzIt()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vs;->zzchk:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
