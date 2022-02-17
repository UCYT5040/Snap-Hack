.class public final Lcom/google/firebase/database/connection/idl/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/on;


# instance fields
.field private final zzcca:Lcom/google/firebase/database/connection/idl/zzt;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/connection/idl/zzt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzh;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzh;-><init>(Lcom/google/android/gms/internal/pf;)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/oo;)Lcom/google/firebase/database/connection/idl/zzf;
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/oj;->zzFU()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/oj;->zzFV()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/oh;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/oo;)Lcom/google/firebase/database/connection/idl/zzt;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzf;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/connection/idl/zzf;-><init>(Lcom/google/firebase/database/connection/idl/zzt;)V

    return-object v1
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzt;->initialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final interrupt(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzt;->interrupt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzt;->isInterrupted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final purgeOutstandingWrites()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzt;->purgeOutstandingWrites()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final refreshAuthToken()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzt;->refreshAuthToken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final resume(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzt;->resume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final shutdown()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzt;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/pf;)V
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzt;->onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/firebase/database/connection/idl/zzt;->put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/firebase/database/connection/idl/zzt;->compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzt;->unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzg;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/zzg;-><init>(Lcom/google/firebase/database/connection/idl/zzf;Lcom/google/android/gms/internal/om;)V

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p5}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzt;->listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/firebase/database/connection/idl/zzt;->merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/firebase/database/connection/idl/zzt;->onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Lcom/google/android/gms/internal/pf;)Lcom/google/firebase/database/connection/idl/zzah;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/firebase/database/connection/idl/zzt;->onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzgH(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzf;->zzcca:Lcom/google/firebase/database/connection/idl/zzt;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzt;->refreshAuthToken2(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
