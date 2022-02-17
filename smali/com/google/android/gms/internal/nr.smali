.class public final Lcom/google/android/gms/internal/nr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzbZY:I

.field public static final enum zzbZZ:I

.field private static final synthetic zzcaa:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/nr;->zzbZY:I

    sput v1, Lcom/google/android/gms/internal/nr;->zzbZZ:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/nr;->zzcaa:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
