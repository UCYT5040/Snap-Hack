.class public final Lcom/google/android/gms/internal/so;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private final zzceF:Lcom/google/android/gms/internal/uh;

.field private zzceG:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceH:Lcom/google/android/gms/internal/tp;

.field private final zzceI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/th;",
            "Lcom/google/android/gms/internal/vt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vt;",
            "Lcom/google/android/gms/internal/th;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/vt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceL:Lcom/google/android/gms/internal/tg;

.field private zzceM:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/uh;Lcom/google/android/gms/internal/tg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/so;->zzceM:J

    invoke-static {}, Lcom/google/android/gms/internal/uv;->zzHR()Lcom/google/android/gms/internal/uv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    new-instance v0, Lcom/google/android/gms/internal/tp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzceH:Lcom/google/android/gms/internal/tp;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzceI:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzceJ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzceK:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/so;->zzceL:Lcom/google/android/gms/internal/tg;

    iput-object p2, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    const-string v0, "SyncTree"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-void
.end method

.method private final zzHr()Lcom/google/android/gms/internal/th;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/th;

    iget-wide v2, p0, Lcom/google/android/gms/internal/so;->zzceM:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/so;->zzceM:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/th;-><init>(J)V

    return-object v0
.end method

.method private final zzU(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vt;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/so;->zze(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/so;->zzceJ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceI:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zze(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/wl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/tx;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/tx;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tx;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/so;->zzceH:Lcom/google/android/gms/internal/tp;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tp;->zzt(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/ts;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tx;",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;",
            "Lcom/google/android/gms/internal/xm;",
            "Lcom/google/android/gms/internal/ts;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tx;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tx;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/tx;->zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/nh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/uv;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz p3, :cond_4

    invoke-interface {p3, v4}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    :goto_1
    invoke-virtual {p4, v4}, Lcom/google/android/gms/internal/ts;->zzb(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/ts;

    move-result-object v4

    invoke-direct {p0, v5, v1, v2, v4}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private final zza(Lcom/google/android/gms/internal/uv;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vu;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/uv;Ljava/util/List;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/tx;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vt;",
            "Lcom/google/android/gms/internal/tx;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    iget-object v2, p0, Lcom/google/android/gms/internal/so;->zzceH:Lcom/google/android/gms/internal/tp;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/tp;->zzt(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/ts;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/so;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zzU(Ljava/util/List;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/uv;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vu;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHp()Lcom/google/android/gms/internal/vu;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHn()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uv;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/uv;Ljava/util/List;)V

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vu;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zze(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/tf;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/tf;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vu;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/so;->zzceL:Lcom/google/android/gms/internal/tg;

    invoke-static {p1}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2, v2}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/om;Lcom/google/android/gms/internal/td;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/st;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/st;-><init>(Lcom/google/android/gms/internal/so;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/uy;)V

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vt;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/uv;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tx;",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;",
            "Lcom/google/android/gms/internal/xm;",
            "Lcom/google/android/gms/internal/ts;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/sn;

    if-nez p3, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/su;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/su;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/tx;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/nh;->zza(Lcom/google/android/gms/internal/ns;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1, p4, v2}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v5

    :cond_1
    move-object v2, p3

    goto :goto_0
.end method

.method private final zzb(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vt;",
            "Lcom/google/android/gms/internal/qi;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/ss;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ss;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceH:Lcom/google/android/gms/internal/tp;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    return-object v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vt;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/th;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/so;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceJ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/th;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/so;->zzHr()Lcom/google/android/gms/internal/th;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/so;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceI:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceL:Lcom/google/android/gms/internal/tg;

    return-object v0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzHq()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/sx;-><init>(Lcom/google/android/gms/internal/so;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/ys;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sw;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/sw;-><init>(Lcom/google/android/gms/internal/so;ZJZLcom/google/android/gms/internal/ys;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;Lcom/google/android/gms/internal/pz;JZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/pz;",
            "Lcom/google/android/gms/internal/pz;",
            "JZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sv;

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/sv;-><init>(Lcom/google/android/gms/internal/so;ZLcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;JLcom/google/android/gms/internal/pz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/th;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            "Lcom/google/android/gms/internal/th;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/tc;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/tc;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;JZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            "Lcom/google/android/gms/internal/xm;",
            "JZZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sp;

    move-object v2, p0

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/sp;-><init>(Lcom/google/android/gms/internal/so;ZLcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;JLcom/google/android/gms/internal/xm;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Ljava/util/List;Lcom/google/android/gms/internal/th;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xt;",
            ">;",
            "Lcom/google/android/gms/internal/th;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sn;->zzb(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIw()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xt;->zzm(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/th;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sz;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/sz;-><init>(Lcom/google/android/gms/internal/so;Ljava/util/Map;Lcom/google/android/gms/internal/qr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Ljava/util/Map;Lcom/google/android/gms/internal/th;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            ">;",
            "Lcom/google/android/gms/internal/th;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sq;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/sq;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/qr;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/th;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/th;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/tb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/tb;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vt;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/te;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/te;-><init>(Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/so;->zzg(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/te;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/te;-><init>(Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xt;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/sn;->zzHp()Lcom/google/android/gms/internal/vu;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIw()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xt;->zzm(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/so;->zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qr;Ljava/util/List;)Lcom/google/android/gms/internal/xm;
    .locals 7
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

    iget-object v2, p0, Lcom/google/android/gms/internal/so;->zzceG:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    move-object v4, v2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/uv;->zze(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uv;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/so;->zzceH:Lcom/google/android/gms/internal/tp;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Ljava/util/List;Z)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/uv;->zzHR()Lcom/google/android/gms/internal/uv;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0
.end method

.method public final zzg(Lcom/google/android/gms/internal/qi;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qi;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/qi;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qi;->zzGH()Lcom/google/android/gms/internal/vt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            "Lcom/google/android/gms/internal/xm;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/sy;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/sy;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/qr;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/so;->zzceF:Lcom/google/android/gms/internal/uh;

    new-instance v1, Lcom/google/android/gms/internal/ta;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ta;-><init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
