.class public final Lcom/google/android/gms/internal/qu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oo;


# instance fields
.field private final zzbYW:Lcom/google/android/gms/internal/rx;

.field private final zzccd:Lcom/google/android/gms/internal/on;

.field private final zzcdj:Lcom/google/android/gms/internal/yz;

.field private zzcdk:Lcom/google/android/gms/internal/sh;

.field private zzcdl:Lcom/google/android/gms/internal/si;

.field private zzcdm:Lcom/google/android/gms/internal/vb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzcdn:Z

.field private final zzcdo:Lcom/google/android/gms/internal/vo;

.field private final zzcdp:Lcom/google/android/gms/internal/qd;

.field private final zzcdq:Lcom/google/android/gms/internal/wl;

.field private final zzcdr:Lcom/google/android/gms/internal/wl;

.field private final zzcds:Lcom/google/android/gms/internal/wl;

.field private zzcdt:J

.field private zzcdu:J

.field private zzcdv:Lcom/google/android/gms/internal/so;

.field private zzcdw:Lcom/google/android/gms/internal/so;

.field private zzcdx:Lcom/google/firebase/database/FirebaseDatabase;

.field private zzcdy:Z

.field private zzcdz:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rx;Lcom/google/android/gms/internal/qd;Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/yz;

    new-instance v1, Lcom/google/android/gms/internal/yt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/yt;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/yz;-><init>(Lcom/google/android/gms/internal/ys;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/qu;->zzcdn:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdt:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/qu;->zzcdu:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/qu;->zzcdy:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdz:J

    iput-object p1, p0, Lcom/google/android/gms/internal/qu;->zzbYW:Lcom/google/android/gms/internal/rx;

    iput-object p2, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iput-object p3, p0, Lcom/google/android/gms/internal/qu;->zzcdx:Lcom/google/firebase/database/FirebaseDatabase;

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    const-string v1, "RepoOperation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    const-string v1, "Transaction"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdr:Lcom/google/android/gms/internal/wl;

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    const-string v1, "DataOperation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    new-instance v0, Lcom/google/android/gms/internal/vo;

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vo;-><init>(Lcom/google/android/gms/internal/qd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdo:Lcom/google/android/gms/internal/vo;

    new-instance v0, Lcom/google/android/gms/internal/ol;

    iget-object v1, p1, Lcom/google/android/gms/internal/rx;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/rx;->zzbxU:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/google/android/gms/internal/rx;->secure:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ol;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/internal/qd;->zza(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    new-instance v0, Lcom/google/android/gms/internal/qv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/qv;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzHg()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iget-object v0, v0, Lcom/google/android/gms/internal/qd;->zzccP:Lcom/google/android/gms/internal/pu;

    new-instance v1, Lcom/google/android/gms/internal/rh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/rh;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pu;->zza(Lcom/google/android/gms/internal/pw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzbYW:Lcom/google/android/gms/internal/rx;

    iget-object v1, v1, Lcom/google/android/gms/internal/rx;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qd;->zzgQ(Ljava/lang/String;)Lcom/google/android/gms/internal/uh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/sh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/sh;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdk:Lcom/google/android/gms/internal/sh;

    new-instance v1, Lcom/google/android/gms/internal/si;

    invoke-direct {v1}, Lcom/google/android/gms/internal/si;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdl:Lcom/google/android/gms/internal/si;

    new-instance v1, Lcom/google/android/gms/internal/vb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/vb;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    new-instance v1, Lcom/google/android/gms/internal/so;

    iget-object v2, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    new-instance v3, Lcom/google/android/gms/internal/ug;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ug;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/rm;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/rm;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/so;-><init>(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/uh;Lcom/google/android/gms/internal/tg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    new-instance v1, Lcom/google/android/gms/internal/so;

    iget-object v2, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    new-instance v3, Lcom/google/android/gms/internal/ro;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ro;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/so;-><init>(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/uh;Lcom/google/android/gms/internal/tg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-interface {v0}, Lcom/google/android/gms/internal/uh;->zzFs()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v10

    const-wide/high16 v0, -0x8000000000000000L

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v2, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/tm;

    new-instance v0, Lcom/google/android/gms/internal/rq;

    invoke-direct {v0, p0, v4}, Lcom/google/android/gms/internal/rq;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/tm;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write ids were not in order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdu:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v2

    const/16 v5, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring overwrite with id "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHu()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHu()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHu()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;JZZ)Ljava/util/List;

    move-wide v2, v8

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v2

    const/16 v5, 0x2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring merge with id "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHv()Lcom/google/android/gms/internal/pz;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/pz;->zzaD(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHv()Lcom/google/android/gms/internal/pz;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/pz;Ljava/util/Map;)Lcom/google/android/gms/internal/pz;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHv()Lcom/google/android/gms/internal/pz;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;Lcom/google/android/gms/internal/pz;JZ)Ljava/util/List;

    move-wide v2, v8

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccM:Lcom/google/android/gms/internal/wp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccN:Lcom/google/android/gms/internal/wp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzHk()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/qu;->zzcdu:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdu:J

    return-wide v0
.end method

.method private final zzHl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/vb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/vb;)V

    return-void
.end method

.method private final zzT(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdo:Lcom/google/android/gms/internal/vo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vo;->zzV(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;
    .locals 1

    const/16 v0, -0x9

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/xm;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/so;->zzc(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final zza(JLcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_2

    :cond_0
    if-nez p4, :cond_3

    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    if-nez v0, :cond_4

    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHg()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;JLcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/qu;->zza(JLcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/vb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/vb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/vb;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/vb;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/qu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/qu;Ljava/util/List;Lcom/google/android/gms/internal/vb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/qu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vb;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;)V"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zzc(Lcom/google/android/gms/internal/vb;)Ljava/util/List;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rv;

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v0

    sget v4, Lcom/google/android/gms/internal/rw;->zzcek:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vb;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rv;

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rv;

    sget v6, Lcom/google/android/gms/internal/rw;->zzcel:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzd(Lcom/google/android/gms/internal/rv;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzf(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/rc;

    invoke-direct {v6, p0, v3, v2, p0}, Lcom/google/android/gms/internal/rc;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Ljava/util/List;Lcom/google/android/gms/internal/qu;)V

    invoke-interface {v1, v5, v0, v4, v6}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vb;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/rb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/ve;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/vb;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, -0x9

    if-ne p2, v1, :cond_0

    const-string v1, "overriddenBySet"

    invoke-static {v1}, Lcom/google/firebase/database/DatabaseError;->zzgA(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    move-object v9, v1

    :goto_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    move v10, v1

    move v11, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/rv;

    invoke-static {v7}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/rw;->zzcen:I

    if-eq v1, v2, :cond_3

    invoke-static {v7}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/rw;->zzcel:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/google/android/gms/internal/rw;->zzcen:I

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    move v2, v10

    :goto_2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v11, v2

    goto :goto_1

    :cond_0
    const/16 v1, -0x19

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_3
    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown transaction abort reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    const/16 v1, -0x19

    invoke-static {v1}, Lcom/google/firebase/database/DatabaseError;->zzbU(I)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/to;

    invoke-static {v7}, Lcom/google/android/gms/internal/rv;->zzi(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v2

    invoke-static {v7}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/qu;->zze(Lcom/google/android/gms/internal/qi;)V

    const/16 v1, -0x9

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/rl;

    invoke-direct {v1, p0, v7, v9}, Lcom/google/android/gms/internal/rl;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v11

    goto :goto_2

    :cond_4
    const/16 v1, -0x19

    if-ne p2, v1, :cond_5

    const/4 v1, 0x1

    :goto_5
    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown transaction abort reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    const/4 v1, -0x1

    if-ne v11, v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->setValue(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/qu;->zzo(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    add-int/lit8 v2, v11, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->setValue(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccL:Lcom/google/android/gms/internal/wp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/yz;->zzay(J)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/qr;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/wp;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/qc;->zzccK:Lcom/google/android/gms/internal/wp;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qr;-><init>([Lcom/google/android/gms/internal/wp;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/qu;->zzcdk:Lcom/google/android/gms/internal/sh;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/sh;->zzg(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/so;->zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    const-string v2, "Failed to parse info update"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/qr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wl;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/vb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ri;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ri;-><init>(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/ve;)V

    return-void
.end method

.method private static zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseError;->zzZ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/qu;->zzab(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zzo(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vb;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdr:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Aborting transactions for path: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Affected: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vb;->zzK(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/rj;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/rj;-><init>(Lcom/google/android/gms/internal/qu;I)V

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/vd;Z)Z

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/vb;I)V

    new-instance v2, Lcom/google/android/gms/internal/rk;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/rk;-><init>(Lcom/google/android/gms/internal/qu;I)V

    invoke-virtual {v1, v2, v6, v6}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/ve;ZZ)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/wl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/vb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/vb;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/vb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/rv;

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v1

    sget v3, Lcom/google/android/gms/internal/rw;->zzcem:I

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/re;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/re;-><init>(Lcom/google/android/gms/internal/qu;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->zza(Lcom/google/android/gms/internal/ve;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vb;->setValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/on;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/vb;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/qu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vb;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/sh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdk:Lcom/google/android/gms/internal/sh;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/so;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/si;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdl:Lcom/google/android/gms/internal/si;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/so;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/yz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/vb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/qu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHl()V

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 19

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/qu;->zzo(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vb;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/qu;->zzc(Lcom/google/android/gms/internal/vb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/rv;

    invoke-static {v2}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/rv;

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/rw;->zzceo:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzj(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v3

    const/16 v4, -0x19

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/gms/internal/rw;->zzcem:I

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/xf;->zzj(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/rf;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/google/android/gms/internal/rf;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/rv;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/gms/internal/rg;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v9, v2}, Lcom/google/android/gms/internal/rg;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/rw;->zzcek:I

    if-ne v2, v3, :cond_9

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzk(Lcom/google/android/gms/internal/rv;)I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    const-string v3, "maxretries"

    invoke-static {v3}, Lcom/google/firebase/database/DatabaseError;->zzgA(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-static {v2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/xm;)Lcom/google/firebase/database/MutableData;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzh(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v9, v3

    :goto_3
    invoke-virtual {v2}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v3}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/Transaction$Result;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object v5

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/qu;->zzHk()J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;J)J

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v6

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzl(Lcom/google/android/gms/internal/rv;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;JZZ)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v11

    move v2, v12

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v2

    move-object v9, v3

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v10}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/vb;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/qu;->zzo(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/qu;->zzHl()V

    :cond_8
    return-object v13

    :cond_9
    move-object v9, v11

    move v2, v12

    goto/16 :goto_2
.end method

.method private final zzo(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            ")",
            "Lcom/google/android/gms/internal/vb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rv;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/qr;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/wp;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/qr;-><init>([Lcom/google/android/gms/internal/wp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vb;->zzK(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdx:Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method final interrupt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/on;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final onDisconnect()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccN:Lcom/google/android/gms/internal/wp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdl:Lcom/google/android/gms/internal/si;

    new-instance v2, Lcom/google/android/gms/internal/si;

    invoke-direct {v2}, Lcom/google/android/gms/internal/si;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/qr;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/sf;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/sf;-><init>(Lcom/google/android/gms/internal/si;Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/si;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/qy;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/qy;-><init>(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/si;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V

    new-instance v1, Lcom/google/android/gms/internal/si;

    invoke-direct {v1}, Lcom/google/android/gms/internal/si;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdl:Lcom/google/android/gms/internal/si;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    return-void
.end method

.method public final purgeOutstandingWrites()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    const-string v1, "Purging writes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/so;->zzHq()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    const/16 v1, -0x19

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->purgeOutstandingWrites()V

    return-void
.end method

.method final resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/on;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzbYW:Lcom/google/android/gms/internal/rx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzB(Ljava/util/Map;)V
    .locals 3
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

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzGb()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccN:Lcom/google/android/gms/internal/wp;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzHh()Lcom/google/android/gms/internal/rx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzbYW:Lcom/google/android/gms/internal/rx;

    return-object v0
.end method

.method public final zzHi()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yz;->zzJF()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzHj()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/so;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/so;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/pz;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "update: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "update: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pz;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    const-string v1, "update called with no changes. No-op"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p3, v5, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/pz;Ljava/util/Map;)Lcom/google/android/gms/internal/pz;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHk()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;Lcom/google/android/gms/internal/pz;JZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/rt;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/rt;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v7, p4, v1}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/pz;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    const/16 v2, -0x9

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "set: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "set: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHk()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v7

    invoke-interface {p2, v6}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v8

    new-instance v1, Lcom/google/android/gms/internal/rs;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/rs;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v7, v8, v1}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    const/16 v0, -0x9

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/qx;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/qx;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "transaction: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "transaction: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/qd;->zzcaE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qu;->zzcdy:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qu;->zzcdy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdr:Lcom/google/android/gms/internal/wl;

    const-string v1, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wl;->info(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v9

    new-instance v3, Lcom/google/android/gms/internal/qz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/qz;-><init>(Lcom/google/android/gms/internal/qu;)V

    new-instance v0, Lcom/google/android/gms/internal/to;

    invoke-virtual {v9}, Lcom/google/firebase/database/DatabaseReference;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qu;->zzf(Lcom/google/android/gms/internal/qi;)V

    new-instance v0, Lcom/google/android/gms/internal/rv;

    sget v4, Lcom/google/android/gms/internal/rw;->zzcej:I

    iget-wide v6, p0, Lcom/google/android/gms/internal/qu;->zzcdz:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/google/android/gms/internal/qu;->zzcdz:J

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/rv;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/qv;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-static {v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/xm;)Lcom/google/firebase/database/MutableData;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Transaction returned null as result"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    :goto_0
    invoke-virtual {v2}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xf;->zzj(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ra;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/google/android/gms/internal/ra;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/qu;->zzo(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_3
    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_0

    :cond_4
    sget v1, Lcom/google/android/gms/internal/rw;->zzcek:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdm:Lcom/google/android/gms/internal/vb;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vb;->zzK(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vb;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vb;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdj:Lcom/google/android/gms/internal/yz;

    invoke-static {v1}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/ys;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/firebase/database/Transaction$Result;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/se;->zza(Lcom/google/android/gms/internal/xm;Ljava/util/Map;)Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHk()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;J)J

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/qu;->zzHl()V

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/qw;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/qw;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p4, v2}, Lcom/google/android/gms/internal/on;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/vt;Z)V

    return-void
.end method

.method final zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/qr;->zzHf()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/qr;->zzHe()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/rr;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/rr;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/qu;->zzo(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p3}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    goto :goto_0
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/internal/qr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onDataUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onDataUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdt:J

    if-eqz p4, :cond_5

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/th;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/th;-><init>(J)V

    if-eqz p3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/qr;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    const-string v2, "FIREBASE INTERNAL ERROR"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/Map;Lcom/google/android/gms/internal/th;)Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v3, v1, v0, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/th;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/qr;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/xp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/so;->zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;
    :try_end_1
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/pe;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/internal/qr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onRangeMergeUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcds:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdq:Lcom/google/android/gms/internal/wl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onRangeMergeUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/qu;->zzcdt:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pe;

    new-instance v4, Lcom/google/android/gms/internal/xt;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/xt;-><init>(Lcom/google/android/gms/internal/pe;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    new-instance v3, Lcom/google/android/gms/internal/th;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/th;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;Lcom/google/android/gms/internal/th;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/qu;->zzn(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final zzaB(Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccM:Lcom/google/android/gms/internal/wp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/wp;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/xm;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ru;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ru;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/on;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/qi;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/qc;->zzccK:Lcom/google/android/gms/internal/wp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qi;->zzGH()Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzf(Lcom/google/android/gms/internal/qi;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qi;->zzGH()Lcom/google/android/gms/internal/vt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/qc;->zzccK:Lcom/google/android/gms/internal/wp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdv:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/so;->zzg(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qu;->zzT(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdw:Lcom/google/android/gms/internal/so;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/so;->zzg(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzo(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qd;->zzGO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iget-object v0, v0, Lcom/google/android/gms/internal/qd;->zzccO:Lcom/google/android/gms/internal/qk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/qk;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzq(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qd;->zzGO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qu;->zzcdp:Lcom/google/android/gms/internal/qd;

    iget-object v0, v0, Lcom/google/android/gms/internal/qd;->zzccQ:Lcom/google/android/gms/internal/sd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/sd;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method
