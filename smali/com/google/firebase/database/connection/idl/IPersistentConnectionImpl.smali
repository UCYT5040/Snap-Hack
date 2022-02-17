.class public Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;
.super Lcom/google/firebase/database/connection/idl/zzu;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzccd:Lcom/google/android/gms/internal/on;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzu;-><init>()V

    return-void
.end method

.method public static loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/oh;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/oo;)Lcom/google/firebase/database/connection/idl/zzt;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaSO:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v1, "com.google.android.gms.firebase_database"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.firebase.database.connection.idl.IPersistentConnectionImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzcV(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzu;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzt;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzad;

    invoke-direct {v1, p2}, Lcom/google/firebase/database/connection/idl/zzad;-><init>(Lcom/google/android/gms/internal/oh;)V

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzab;

    invoke-direct {v3, p4}, Lcom/google/firebase/database/connection/idl/zzab;-><init>(Lcom/google/android/gms/internal/oo;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/firebase/database/connection/idl/zzt;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zza(Ljava/lang/Long;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag parameter clashed with NO_TAG value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzaa;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzaa;-><init>(Lcom/google/firebase/database/connection/idl/zzah;)V

    return-object v0
.end method

.method private static zzaq(J)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic zzar(J)Ljava/lang/Long;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaq(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Ljava/lang/Long;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->initialize()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzq;",
            "J",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzaq(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzz;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/zzz;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzq;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p6}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/om;Ljava/lang/Long;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/on;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/on;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->purgeOutstandingWrites()V

    return-void
.end method

.method public put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/pf;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->refreshAuthToken()V

    return-void
.end method

.method public refreshAuthToken2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->zzgH(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    .locals 9

    iget-object v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbV:Lcom/google/firebase/database/connection/idl/zzi;

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzi;->zza(Lcom/google/firebase/database/connection/idl/zzi;)Lcom/google/android/gms/internal/ol;

    move-result-object v7

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/google/firebase/database/connection/idl/zzac;

    invoke-direct {v8, p4}, Lcom/google/firebase/database/connection/idl/zzac;-><init>(Lcom/google/firebase/database/connection/idl/zzw;)V

    new-instance v1, Lcom/google/android/gms/internal/wi;

    iget v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbW:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchL:Lcom/google/android/gms/internal/wn;

    :goto_0
    iget-object v2, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbX:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/wi;-><init>(Lcom/google/android/gms/internal/wn;Ljava/util/List;)V

    new-instance v2, Lcom/google/firebase/database/connection/idl/zzaf;

    invoke-direct {v2, p2}, Lcom/google/firebase/database/connection/idl/zzaf;-><init>(Lcom/google/firebase/database/connection/idl/zzk;)V

    new-instance v0, Lcom/google/android/gms/internal/oj;

    iget-boolean v4, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcaE:Z

    iget-object v5, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcbY:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzcaG:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/oj;-><init>(Lcom/google/android/gms/internal/wm;Lcom/google/android/gms/internal/oh;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/op;

    invoke-direct {v1, v0, v7, v8}, Lcom/google/android/gms/internal/op;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    return-void

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchL:Lcom/google/android/gms/internal/wn;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchH:Lcom/google/android/gms/internal/wn;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchI:Lcom/google/android/gms/internal/wn;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchJ:Lcom/google/android/gms/internal/wn;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchK:Lcom/google/android/gms/internal/wn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->shutdown()V

    return-void
.end method

.method public unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzccd:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
