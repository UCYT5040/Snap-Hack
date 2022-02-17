.class public final Lcom/google/android/gms/internal/vm;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgU:Lcom/google/android/gms/internal/vt;

.field private final zzcgV:Lcom/google/android/gms/internal/xe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vm;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vm;)Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vj;",
            ">;",
            "Lcom/google/android/gms/internal/vl;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vi;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qi;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vn;-><init>(Lcom/google/android/gms/internal/vm;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/vi;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/qi;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/qi;->zza(Lcom/google/android/gms/internal/vl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/internal/vl;->zzcgO:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v3, v1

    :goto_3
    iget-object v7, p0, Lcom/google/android/gms/internal/vm;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/qi;->zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p5, v3, v7, v8}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/vi;->zzg(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/vi;

    move-result-object v3

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vi;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vj;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/vl;->zzcgR:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzIb()Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    new-instance v4, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vi;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgO:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgP:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgQ:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgR:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    return-object v1
.end method
