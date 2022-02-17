.class final enum Lcom/google/android/gms/internal/qp;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/qp;",
        ">;",
        "Lcom/google/android/gms/internal/qt;"
    }
.end annotation


# static fields
.field public static final enum zzcde:Lcom/google/android/gms/internal/qp;

.field private static final synthetic zzcdf:[Lcom/google/android/gms/internal/qp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/qp;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/qp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/qp;->zzcde:Lcom/google/android/gms/internal/qp;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/qp;

    sget-object v1, Lcom/google/android/gms/internal/qp;->zzcde:Lcom/google/android/gms/internal/qp;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/qp;->zzcdf:[Lcom/google/android/gms/internal/qp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/qp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qp;->zzcdf:[Lcom/google/android/gms/internal/qp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/qp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/qp;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/op;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGR()Lcom/google/android/gms/internal/oj;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/google/android/gms/internal/op;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)V

    return-object v0
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pu;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Authentication is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/qk;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/tk;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ti;->zzcfh:Lcom/google/android/gms/internal/ti;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/ti;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Ljava/lang/String;)Lcom/google/android/gms/internal/uh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    new-instance v0, Lcom/google/android/gms/internal/wj;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/wj;-><init>(Lcom/google/android/gms/internal/wn;Ljava/util/List;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/sd;
    .locals 2

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/qq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/internal/qp;Lcom/google/android/gms/internal/wl;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 4

    const-string v0, "java.vm.name"

    const-string v1, "Unknown JVM"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.specification.version"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
