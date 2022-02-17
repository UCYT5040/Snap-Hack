.class public final enum Lcom/google/android/gms/internal/xj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/xj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcip:Lcom/google/android/gms/internal/xj;

.field public static final enum zzciq:Lcom/google/android/gms/internal/xj;

.field public static final enum zzcir:Lcom/google/android/gms/internal/xj;

.field public static final enum zzcis:Lcom/google/android/gms/internal/xj;

.field private static final synthetic zzcit:[Lcom/google/android/gms/internal/xj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/xj;

    const-string v1, "DeferredValue"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xj;->zzcip:Lcom/google/android/gms/internal/xj;

    new-instance v0, Lcom/google/android/gms/internal/xj;

    const-string v1, "Boolean"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/xj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xj;->zzciq:Lcom/google/android/gms/internal/xj;

    new-instance v0, Lcom/google/android/gms/internal/xj;

    const-string v1, "Number"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/xj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xj;->zzcir:Lcom/google/android/gms/internal/xj;

    new-instance v0, Lcom/google/android/gms/internal/xj;

    const-string v1, "String"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/xj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xj;->zzcis:Lcom/google/android/gms/internal/xj;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/xj;

    sget-object v1, Lcom/google/android/gms/internal/xj;->zzcip:Lcom/google/android/gms/internal/xj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/xj;->zzciq:Lcom/google/android/gms/internal/xj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/xj;->zzcir:Lcom/google/android/gms/internal/xj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/xj;->zzcis:Lcom/google/android/gms/internal/xj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/xj;->zzcit:[Lcom/google/android/gms/internal/xj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/xj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xj;->zzcit:[Lcom/google/android/gms/internal/xj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/xj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/xj;

    return-object v0
.end method
