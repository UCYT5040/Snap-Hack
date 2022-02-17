.class public final Lcom/google/android/gms/internal/mx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# instance fields
.field private final zzbZt:Lcom/google/firebase/FirebaseApp;

.field private final zzbZy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqE:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    const-string v0, "FirebaseDatabase"

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FirebaseDatabase"

    const-string v1, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FirebaseDatabase"

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 7

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGQ()Lcom/google/android/gms/internal/wn;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzFW()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzht()Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/wn;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    invoke-static {v1, v0, p2, p4}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/oo;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/android/gms/internal/na;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/na;-><init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/on;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zzc;)V

    return-object v0
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mr;

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mr;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/qk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mw;-><init>()V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Ljava/lang/String;)Lcom/google/android/gms/internal/uh;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGU()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SessionPersistenceKey \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' has already been used."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/nb;

    iget-object v2, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/internal/nb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/qd;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/uf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGS()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/uf;-><init>(J)V

    new-instance v2, Lcom/google/android/gms/internal/ue;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ue;-><init>(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/ui;Lcom/google/android/gms/internal/uc;)V

    return-object v2
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/wn;Ljava/util/List;)Lcom/google/android/gms/internal/wm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qd;",
            "Lcom/google/android/gms/internal/wn;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/wm;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/wi;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/wi;-><init>(Lcom/google/android/gms/internal/wn;Ljava/util/List;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/sd;
    .locals 2

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/my;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/my;-><init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/wl;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
