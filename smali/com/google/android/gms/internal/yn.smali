.class final Lcom/google/android/gms/internal/yn;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzciT:Ljava/lang/Thread;

.field private zzcjk:Lcom/google/android/gms/internal/yd;

.field private volatile zzcjn:Z

.field private zzcjo:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private zzcjp:Z

.field private zzcjq:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yd;Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/yn;->random:Ljava/util/Random;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/yn;->zzcjn:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/yn;->zzcjp:Z

    invoke-static {}, Lcom/google/android/gms/internal/yd;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/yo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/yo;-><init>(Lcom/google/android/gms/internal/yn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/yn;->zzciT:Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/gms/internal/yd;->zzJo()Lcom/google/android/gms/internal/yc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/yn;->zzciT:Ljava/lang/Thread;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Writer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/yc;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/yn;->zzcjk:Lcom/google/android/gms/internal/yd;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjo:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private final zzJA()V
    .locals 3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/yn;->zzcjn:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/yn;->zzJy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/yj;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjk:Lcom/google/android/gms/internal/yd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yd;->zzb(Lcom/google/android/gms/internal/yj;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/yn;->zzcjo:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/yn;->zzJy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final zzJy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjo:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/yn;->zzcjq:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/yn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/yn;->zzJA()V

    return-void
.end method


# virtual methods
.method final zzJB()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yn;->zzciT:Ljava/lang/Thread;

    return-object v0
.end method

.method final zzJz()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/yn;->zzcjn:Z

    return-void
.end method

.method final declared-synchronized zza(BZ[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0xffff

    const/16 v5, 0x7e

    const/4 v0, 0x0

    const/16 v2, 0x8

    monitor-enter p0

    const/4 v1, 0x6

    :try_start_0
    array-length v3, p3

    if-lt v3, v5, :cond_0

    if-gt v3, v6, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    array-length v4, p3

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    or-int/lit8 v4, p1, -0x80

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-ge v3, v5, :cond_2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/google/android/gms/internal/yn;->random:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    array-length v4, p3

    if-ge v0, v4, :cond_4

    aget-byte v4, p3, v0

    rem-int/lit8 v5, v0, 0x4

    aget-byte v5, v3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0xe

    goto :goto_0

    :cond_2
    if-gt v3, v6, :cond_3

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/yn;->zzcjn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/yn;->zzcjp:Z

    if-nez v0, :cond_5

    if-eq p1, v2, :cond_6

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/yj;

    const-string v1, "Shouldn\'t be sending"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/yj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne p1, v2, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/yn;->zzcjp:Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjo:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method final zzb(Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/yn;->zzcjq:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method
