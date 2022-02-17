.class final Lcom/google/android/gms/internal/og;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzcaA:I

.field private static final synthetic zzcaB:[I

.field public static final enum zzcay:I

.field public static final enum zzcaz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/og;->zzcay:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/og;->zzcaz:I

    sput v1, Lcom/google/android/gms/internal/og;->zzcaA:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/og;->zzcaB:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
