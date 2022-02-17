.class final Lcom/google/android/gms/internal/yx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic zzcjw:Lcom/google/android/gms/internal/yw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yx;->zzcjw:Lcom/google/android/gms/internal/yw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yx;->zzcjw:Lcom/google/android/gms/internal/yw;

    iget-object v0, v0, Lcom/google/android/gms/internal/yw;->zzcjv:Lcom/google/android/gms/internal/yu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/yu;->zzf(Ljava/lang/Throwable;)V

    return-void
.end method
