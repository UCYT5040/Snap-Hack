.class public final Lcom/google/android/gms/internal/zc;
.super Ljava/lang/Object;


# static fields
.field private static zzcjA:J

.field private static final zzcjB:[I

.field private static final zzcjz:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zc;->zzcjz:Ljava/util/Random;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zc;->zzcjA:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    return-void
.end method

.method private static zzJH()V
    .locals 3

    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    aget v1, v1, v0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    sget-object v2, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized zzaz(J)Ljava/lang/String;
    .locals 12

    const/16 v10, 0xc

    const/4 v0, 0x0

    const-class v3, Lcom/google/android/gms/internal/zc;

    monitor-enter v3

    :try_start_0
    sget-wide v4, Lcom/google/android/gms/internal/zc;->zzcjA:J

    cmp-long v1, p0, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sput-wide p0, Lcom/google/android/gms/internal/zc;->zzcjA:J

    const/16 v1, 0x8

    new-array v4, v1, [C

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_1
    if-ltz v1, :cond_1

    const-string v6, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v8, 0x40

    rem-long v8, p0, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v1

    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    move v1, v0

    :goto_2
    if-ge v1, v10, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    sget-object v4, Lcom/google/android/gms/internal/zc;->zzcjz:Ljava/util/Random;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zc;->zzJH()V

    :cond_3
    :goto_3
    if-ge v0, v10, :cond_4

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    sget-object v2, Lcom/google/android/gms/internal/zc;->zzcjB:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
