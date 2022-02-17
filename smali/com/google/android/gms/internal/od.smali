.class final Lcom/google/android/gms/internal/od;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pj;


# static fields
.field private static zzcaq:J


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private zzcar:Lcom/google/android/gms/internal/ol;

.field private zzcas:Lcom/google/android/gms/internal/pg;

.field private zzcat:Lcom/google/android/gms/internal/oe;

.field private zzcau:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/od;->zzcaq:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/oe;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/od;->zzcaq:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/od;->zzcaq:J

    iput-object p2, p0, Lcom/google/android/gms/internal/od;->zzcar:Lcom/google/android/gms/internal/ol;

    iput-object p4, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    new-instance v2, Lcom/google/android/gms/internal/wl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oj;->zzFT()Lcom/google/android/gms/internal/wm;

    move-result-object v3

    const-string v4, "Connection"

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "conn_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    sget v0, Lcom/google/android/gms/internal/og;->zzcay:I

    iput v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    new-instance v0, Lcom/google/android/gms/internal/pg;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pg;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Ljava/lang/String;Lcom/google/android/gms/internal/pj;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/of;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v1, Lcom/google/android/gms/internal/og;->zzcaA:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "closing realtime connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    sget v0, Lcom/google/android/gms/internal/og;->zzcaA:I

    iput v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->close()V

    iput-object v3, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oe;->zzb(Lcom/google/android/gms/internal/of;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void
.end method

.method public final open()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Opening a connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pg;->open()V

    return-void
.end method

.method public final zza(Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v2, Lcom/google/android/gms/internal/og;->zzcaz:I

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Tried to send on an unconnected connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Sending data (contents hidden)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/pg;->send(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Sending data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzaA(Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/od;->zzcas:Lcom/google/android/gms/internal/pg;

    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v1, Lcom/google/android/gms/internal/og;->zzcay:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Realtime connection failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v1, "Realtime connection lost"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzz(Ljava/util/Map;)V
    .locals 9
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

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "received data message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/oe;->zzA(Ljava/util/Map;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Failed to parse server message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v8, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Got control message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :try_start_2
    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Connection shutdown command received. Shutting down..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/oe;->zzgE(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Failed to parse control message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_9
    :try_start_4
    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzcar:Lcom/google/android/gms/internal/ol;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ol;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Got a reset; killing connection to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Updating internalHost to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/oe;->zzgD(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/of;->zzcav:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "ts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/oe;->zzgD(Ljava/lang/String;)V

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    sget v4, Lcom/google/android/gms/internal/og;->zzcay:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v4, "realtime connection established"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_c
    sget v1, Lcom/google/android/gms/internal/og;->zzcaz:I

    iput v1, p0, Lcom/google/android/gms/internal/od;->zzcau:I

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzcat:Lcom/google/android/gms/internal/oe;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/oe;->zzc(JLjava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v3, "Ignoring unknown control message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Got invalid control message: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    goto/16 :goto_1

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :cond_12
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Ignoring unknown server message type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/od;->zzbZE:Lcom/google/android/gms/internal/wl;

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_16
    sget-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/od;->zza(Lcom/google/android/gms/internal/of;)V

    goto/16 :goto_1

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :cond_18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
