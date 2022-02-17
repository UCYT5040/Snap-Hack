.class final Lcom/google/android/gms/internal/pg;
.super Ljava/lang/Object;


# static fields
.field private static zzcbG:J


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private final zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzcbH:Lcom/google/android/gms/internal/pk;

.field private zzcbI:Z

.field private zzcbJ:Z

.field private zzcbK:J

.field private zzcbL:Lcom/google/android/gms/internal/pt;

.field private zzcbM:Lcom/google/android/gms/internal/pj;

.field private zzcbN:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzcbO:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzcbP:Lcom/google/android/gms/internal/oj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/pg;->zzcbG:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/pj;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    iput-object p1, p0, Lcom/google/android/gms/internal/pg;->zzcbP:Lcom/google/android/gms/internal/oj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    sget-wide v0, Lcom/google/android/gms/internal/pg;->zzcbG:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/pg;->zzcbG:J

    new-instance v2, Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object v3

    const-string v4, "WebSocket"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ws_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->isSecure()Z

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v0, "wss"

    :goto_1
    const-string v2, "v"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/.ws?ns="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&ls="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/google/android/gms/internal/pg;->zzcbP:Lcom/google/android/gms/internal/oj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/oj;->zzht()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/yd;

    invoke-direct {v2, v0, v7, v1}, Lcom/google/android/gms/internal/yd;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/google/android/gms/internal/pl;

    invoke-direct {v0, p0, v2, v7}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/yd;Lcom/google/android/gms/internal/ph;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ol;->getHost()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :cond_2
    const-string v0, "ws"

    goto/16 :goto_1
.end method

.method private final shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pj;->zzaA(Z)V

    return-void
.end method

.method private final zzGv()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/16 v1, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Reset keepAlive. Remaining: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/pi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pi;-><init>(Lcom/google/android/gms/internal/pg;)V

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Reset keepAlive"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final zzGw()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "closing itself"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    :cond_1
    iput-object v4, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private final zzGx()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "timed out on connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->close()V

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pg;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbI:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-object v0
.end method

.method private final zzbV(I)V
    .locals 5

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    new-instance v0, Lcom/google/android/gms/internal/pt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-wide v2, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const/16 v1, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "HandleNewFrameCount: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/pg;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGw()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGx()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/pk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    return-object v0
.end method

.method private final zzgJ(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pt;->zzgN(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/pg;->zzcbK:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pt;->zzGD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yr;->zzgV(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleIncomingFrame complete frame: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbM:Lcom/google/android/gms/internal/pj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/pj;->zzz(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Error parsing frame: "

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pg;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Error parsing frame (cast error): "

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pg;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private final zzgK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pg;->zzbV(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pg;->zzbV(I)V

    goto :goto_0
.end method

.method private final zzgL(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbL:Lcom/google/android/gms/internal/pt;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgJ(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pg;->zzgK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pg;->zzgJ(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "websocket is being closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v4, p0, Lcom/google/android/gms/internal/pg;->zzcbJ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbN:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public final open()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ph;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ph;-><init>(Lcom/google/android/gms/internal/pg;)V

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbO:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final send(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->zzGv()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/yr;->zzak(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x4000

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    move-object v2, v0

    :goto_0
    array-length v0, v2

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    array-length v3, v2

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/pk;->zzgM(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->zzcbH:Lcom/google/android/gms/internal/pk;

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/pk;->zzgM(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    add-int/lit16 v4, v0, 0x4000

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v0, v0, 0x4000

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Failed to serialize message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;->shutdown()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method
