.class public abstract Lcom/google/firebase/database/connection/idl/zzu;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/firebase/database/connection/idl/zzt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnection"

    invoke-virtual {p0, p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzt;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.firebase.database.connection.idl.IPersistentConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/firebase/database/connection/idl/zzt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzt;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/connection/idl/zzv;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/idl/zzu;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v6

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {p0, v0, v2, v3, v6}, Lcom/google/firebase/database/connection/idl/zzu;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    move v0, v7

    goto :goto_0

    :cond_1
    const-string v1, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/firebase/database/connection/idl/zzk;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzk;

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/firebase/database/connection/idl/zzm;

    invoke-direct {v1, v2}, Lcom/google/firebase/database/connection/idl/zzm;-><init>(Landroid/os/IBinder;)V

    move-object v2, v1

    goto :goto_1

    :cond_3
    const-string v1, "com.google.firebase.database.connection.idl.IPersistentConnectionDelegate"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v5, v1, Lcom/google/firebase/database/connection/idl/zzw;

    if-eqz v5, :cond_4

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzw;

    move-object v6, v1

    goto :goto_2

    :cond_4
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzy;

    invoke-direct {v6, v4}, Lcom/google/firebase/database/connection/idl/zzy;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->initialize()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->shutdown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->refreshAuthToken()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->refreshAuthToken2(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v3, v6

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_7

    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzu;->listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :cond_5
    const-string v0, "com.google.firebase.database.connection.idl.IListenHashProvider"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/firebase/database/connection/idl/zzq;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzq;

    move-object v3, v0

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/google/firebase/database/connection/idl/zzs;

    invoke-direct {v3, v4}, Lcom/google/firebase/database/connection/idl/zzs;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :cond_7
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v8, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v6, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v6, :cond_8

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_5

    :cond_8
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v8}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/connection/idl/zzu;->unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/idl/zzu;->purgeOutstandingWrites()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    :goto_6
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_9
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_a

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_6

    :cond_a
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_7
    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/google/firebase/database/connection/idl/zzu;->compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_b
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v5, :cond_c

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_7

    :cond_c
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v4}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_d

    :goto_8
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_d
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_e

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_8

    :cond_e
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_f

    :goto_9
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_f
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_10

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_9

    :cond_10
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_11

    :goto_a
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_11
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v4, :cond_12

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_a

    :cond_12
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v3}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_13

    :goto_b
    invoke-virtual {p0, v1, v6}, Lcom/google/firebase/database/connection/idl/zzu;->onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :cond_13
    const-string v0, "com.google.firebase.database.connection.idl.IRequestResultCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/firebase/database/connection/idl/zzah;

    if-eqz v3, :cond_14

    check-cast v0, Lcom/google/firebase/database/connection/idl/zzah;

    move-object v6, v0

    goto :goto_b

    :cond_14
    new-instance v6, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-direct {v6, v2}, Lcom/google/firebase/database/connection/idl/zzaj;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->interrupt(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->resume(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/idl/zzu;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Z)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method
