.class public final Lcom/google/android/gms/internal/op;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oe;
.implements Lcom/google/android/gms/internal/on;


# static fields
.field private static zzcaq:J


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private final zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcaC:Lcom/google/android/gms/internal/oh;

.field private final zzcaH:Lcom/google/android/gms/internal/oo;

.field private zzcaI:Ljava/lang/String;

.field private zzcaJ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaK:Z

.field private zzcaL:J

.field private zzcaM:Lcom/google/android/gms/internal/od;

.field private zzcaN:Lcom/google/android/gms/internal/oz;

.field private zzcaO:J

.field private zzcaP:J

.field private zzcaQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/oy;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/pb;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/pd;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/pa;",
            "Lcom/google/android/gms/internal/pc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaU:Ljava/lang/String;

.field private zzcaV:Z

.field private final zzcaW:Lcom/google/android/gms/internal/oj;

.field private final zzcaX:Lcom/google/android/gms/internal/pq;

.field private zzcaY:Ljava/lang/String;

.field private zzcaZ:J

.field private final zzcar:Lcom/google/android/gms/internal/ol;

.field private zzcba:I

.field private zzcbb:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzcbc:J

.field private zzcbd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/op;->zzcaq:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaJ:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcaK:Z

    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    iput-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaO:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaP:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaZ:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/op;->zzcba:I

    iput-object v7, p0, Lcom/google/android/gms/internal/op;->zzcbb:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcaW:Lcom/google/android/gms/internal/oj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFU()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaC:Lcom/google/android/gms/internal/oh;

    iput-object p2, p0, Lcom/google/android/gms/internal/op;->zzcar:Lcom/google/android/gms/internal/ol;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaQ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ps;

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object v2

    const-string v3, "ConnectionRetryHelper"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ps;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wm;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ps;->zzas(J)Lcom/google/android/gms/internal/ps;

    move-result-object v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ps;->zzh(D)Lcom/google/android/gms/internal/ps;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ps;->zzat(J)Lcom/google/android/gms/internal/ps;

    move-result-object v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ps;->zzi(D)Lcom/google/android/gms/internal/ps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->zzGC()Lcom/google/android/gms/internal/pq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    sget-wide v0, Lcom/google/android/gms/internal/op;->zzcaq:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/op;->zzcaq:J

    new-instance v2, Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object v3

    const-string v4, "PersistentConnection"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "pc_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    iput-object v7, p0, Lcom/google/android/gms/internal/op;->zzcaY:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void
.end method

.method private final isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcbd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGc()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbq:Lcom/google/android/gms/internal/oz;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGd()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGe()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaJ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGf()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcaV:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Scheduling connection attempt"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/op;->zzcaV:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    new-instance v2, Lcom/google/android/gms/internal/oq;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/oq;-><init>(Lcom/google/android/gms/internal/op;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pq;->zzp(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private final zzGg()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pd;->zzGp()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pd;->zzGr()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/pd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pd;->zzGl()Lcom/google/android/gms/internal/pf;

    move-result-object v1

    const-string v4, "disconnected"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/pf;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final zzGh()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pc;

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pc;->zzGm()Lcom/google/android/gms/internal/pa;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring listen "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/pc;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Restoring writes."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/op;->zzap(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->zzGk()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->zzGl()Lcom/google/android/gms/internal/pf;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final zzGi()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbb:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ox;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ox;-><init>(Lcom/google/android/gms/internal/op;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbb:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->resume(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private final zzGj()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcbc:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzS(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "removing all listens at path "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/pa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pc;

    invoke-static {v1}, Lcom/google/android/gms/internal/pa;->zzb(Lcom/google/android/gms/internal/pa;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/pc;

    iget-object v6, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pc;->zzGm()Lcom/google/android/gms/internal/pa;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/pc;

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->zzc(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pf;

    move-result-object v0

    const-string v3, "permission_denied"

    invoke-interface {v0, v3, v7}, Lcom/google/android/gms/internal/pf;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/op;->zzcba:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/oz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pc;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pc;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "removing query "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no listener exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pc;

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbb:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Ljava/util/List;Lcom/google/android/gms/internal/pa;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/op;->zza(Ljava/util/List;Lcom/google/android/gms/internal/pa;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/pc;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "p"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pc;->zzGm()Lcom/google/android/gms/internal/pa;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/pa;->zzb(Lcom/google/android/gms/internal/pa;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pc;->zzGn()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "q"

    invoke-static {p1}, Lcom/google/android/gms/internal/pc;->zzb(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pa;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/pa;->zzc(Lcom/google/android/gms/internal/pa;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pc;->zzGo()Lcom/google/android/gms/internal/om;

    move-result-object v0

    const-string v2, "h"

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzFY()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzFZ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzGa()Lcom/google/android/gms/internal/oc;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/oc;->zzFR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "hs"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/oc;->zzFS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "q"

    new-instance v2, Lcom/google/android/gms/internal/ov;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ov;-><init>(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/pc;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/os;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/os;-><init>(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/pf;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string v1, "h"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaO:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/op;->zzcaO:J

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/pd;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/android/gms/internal/pd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/op;->zzap(J)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/op;->zzcbc:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/oy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/oy;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/oy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/oy;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/op;->zzcaP:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaP:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "b"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/od;->zza(Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzcaQ:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/pa;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/pa;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/pa;->zzc(Lcom/google/android/gms/internal/pa;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\".indexOn\": \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p2}, Lcom/google/android/gms/internal/pa;->zzb(Lcom/google/android/gms/internal/pa;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using an unspecified index. Consider adding \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/wl;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/op;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcaV:Z

    return v0
.end method

.method private final zzaC(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v0

    const-string v3, "Must be connected to send auth, but was: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Auth token must be set to authenticate!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ot;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ot;-><init>(Lcom/google/android/gms/internal/op;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/yq;->zzgU(Ljava/lang/String;)Lcom/google/android/gms/internal/yq;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "cred"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yq;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yq;->zzJE()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "authvar"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yq;->zzJE()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "gauth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/oy;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "cred"

    iget-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "auth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/oy;)V

    goto :goto_1
.end method

.method private final zzap(J)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/pd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pd;->zzGl()Lcom/google/android/gms/internal/pf;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pd;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pd;->zzGq()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pd;->zzGp()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ou;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ou;-><init>(Lcom/google/android/gms/internal/op;Ljava/lang/String;JLcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pf;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/op;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/op;->zzcaZ:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/op;->zzcaZ:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/op;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/op;->zzcaZ:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/op;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGf()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaC:Lcom/google/android/gms/internal/oh;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/op;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGh()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/od;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/op;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/op;->zzcba:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/op;->zzcba:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/op;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/op;->zzcba:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/pq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/op;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/op;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/op;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/op;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGj()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGf()V

    return-void
.end method

.method public final interrupt(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Connection interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/od;->close()V

    iput-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq;->zzGA()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq;->cancel()V

    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    goto :goto_1
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final purgeOutstandingWrites()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pd;

    invoke-static {v0}, Lcom/google/android/gms/internal/pd;->zza(Lcom/google/android/gms/internal/pd;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/pd;->zza(Lcom/google/android/gms/internal/pd;)Lcom/google/android/gms/internal/pf;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/pf;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pb;

    invoke-static {v0}, Lcom/google/android/gms/internal/pb;->zza(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/pb;->zza(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/pf;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/pf;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcbd:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void
.end method

.method public final refreshAuthToken()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Auth token refresh requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->interrupt(Ljava/lang/String;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final resume(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Connection no longer interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGe()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGf()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 1

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzA(Ljava/util/Map;)V
    .locals 11
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

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzcaQ:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oy;

    if-eqz v0, :cond_0

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/oy;->zzC(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "handleServerMessage: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "t"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ok;->zzah(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v3, :cond_5

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "ignoring empty merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ok;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/google/android/gms/internal/oo;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ok;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ok;->zzah(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/internal/ok;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/google/android/gms/internal/ok;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    const-string v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/pe;

    invoke-direct {v3, v5, v2, v1}, Lcom/google/android/gms/internal/pe;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v5, v4

    goto :goto_3

    :cond_8
    move-object v2, v4

    goto :goto_4

    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Ignoring empty range merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/android/gms/internal/oo;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ok;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/op;->zzS(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "ac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "s"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Auth token revoked: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcaV:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/oo;->zzaB(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/od;->close()V

    goto/16 :goto_0

    :cond_e
    const-string v2, "sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/wl;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Unrecognized action from server: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring unknown message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pb;

    const-string v1, "oc"

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/pa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unlistening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "p"

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->zzb(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pa;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/pa;->zzb(Lcom/google/android/gms/internal/pa;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ok;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pc;->zzGn()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "q"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pc;->zzGm()Lcom/google/android/gms/internal/pa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/pa;->zzc(Lcom/google/android/gms/internal/pa;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "t"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "n"

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/om;Ljava/lang/Long;Lcom/google/android/gms/internal/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/om;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/pa;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Listening on "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string v3, "listen() called twice for same QuerySpec."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Adding listen query: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/pc;

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pc;-><init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/pa;Ljava/lang/Long;Lcom/google/android/gms/internal/om;Lcom/google/android/gms/internal/oq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaT:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/pc;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/of;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Got on disconnect due to "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/of;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    iput-object v5, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/op;->zzcbd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGg()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGe()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/op;->zzcaL:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/op;->zzcaL:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/of;->zzcav:Lcom/google/android/gms/internal/of;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaX:Lcom/google/android/gms/internal/pq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pq;->zzGA()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGf()V

    :cond_3
    iput-wide v6, p0, Lcom/google/android/gms/internal/op;->zzcaL:J

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oo;->onDisconnect()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcbd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pb;

    const-string v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pf;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcbd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGi()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/op;->zzcaR:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pb;

    const-string v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pb;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/oq;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzc(JLjava/lang/String;)V
    .locals 9

    const/16 v8, 0x2e

    const/16 v7, 0x2d

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "onReady"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/op;->zzcaL:J

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "handling timestamp"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "serverTimeOffset"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/oo;->zzB(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/op;->zzcaK:Z

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/yp;->zzJD()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaW:Lcom/google/android/gms/internal/oj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oj;->zzFW()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persistence.android.enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v4, "sdk.android."

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaW:Lcom/google/android/gms/internal/oj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oj;->zzFX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v4, "Sending first connection stats"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6, v5}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "c"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s"

    new-instance v4, Lcom/google/android/gms/internal/ow;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ow;-><init>(Lcom/google/android/gms/internal/op;)V

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "calling restore state"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbp:Lcom/google/android/gms/internal/oz;

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_3
    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Not restoring auth because token is null."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGh()V

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/op;->zzcaK:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/op;->zzcaY:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oo;->zzGb()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v4, "sdk.java."

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaW:Lcom/google/android/gms/internal/oj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oj;->zzFX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Not sending stats because stats are empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Restoring auth."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbq:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/op;->zzaC(Z)V

    goto :goto_4
.end method

.method public final zzgD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcaI:Ljava/lang/String;

    return-void
.end method

.method public final zzgE(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "server_kill"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/op;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzgH(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Auth token refreshed."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/op;->zzaC(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/op;->zzGc()Z

    move-result v0

    const-string v2, "Must be connected to send unauth."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/op;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/oy;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final zzgI(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbo:Lcom/google/android/gms/internal/oz;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Trying to open network connection while in the wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaH:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/oo;->zzaB(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcaU:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbp:Lcom/google/android/gms/internal/oz;

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaN:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/od;

    iget-object v1, p0, Lcom/google/android/gms/internal/op;->zzcaW:Lcom/google/android/gms/internal/oj;

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzcar:Lcom/google/android/gms/internal/ol;

    iget-object v3, p0, Lcom/google/android/gms/internal/op;->zzcaI:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/op;->zzcaY:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/od;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/oe;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcaM:Lcom/google/android/gms/internal/od;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/od;->open()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
