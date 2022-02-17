.class final enum Lcom/google/android/gms/internal/ql;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ql;",
        ">;",
        "Lcom/google/android/gms/internal/qt;"
    }
.end annotation


# static fields
.field public static final enum zzcda:Lcom/google/android/gms/internal/ql;

.field static zzcdb:Ljava/util/concurrent/ThreadFactory;

.field static final zzcdc:Lcom/google/android/gms/internal/ti;

.field private static final synthetic zzcdd:[Lcom/google/android/gms/internal/ql;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ql;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcda:Lcom/google/android/gms/internal/ql;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ql;

    sget-object v1, Lcom/google/android/gms/internal/ql;->zzcda:Lcom/google/android/gms/internal/ql;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcdd:[Lcom/google/android/gms/internal/ql;

    new-instance v0, Lcom/google/android/gms/internal/qm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcdc:Lcom/google/android/gms/internal/ti;

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

.method public static isActive()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ql;->zzGX()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ql;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdd:[Lcom/google/android/gms/internal/ql;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ql;

    return-object v0
.end method

.method private static zzGX()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.appengine.api.ThreadManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "backgroundThreadFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    invoke-static {}, Lcom/google/android/gms/internal/ql;->zzGX()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ql;->zzcdc:Lcom/google/android/gms/internal/ti;

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

    new-instance v1, Lcom/google/android/gms/internal/qo;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/qo;-><init>(Lcom/google/android/gms/internal/ql;Lcom/google/android/gms/internal/wl;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 4

    const-string v0, "AppEngine"

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
