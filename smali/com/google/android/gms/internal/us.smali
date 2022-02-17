.class final Lcom/google/android/gms/internal/us;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uz",
        "<",
        "Lcom/google/android/gms/internal/un;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzaj(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/un;

    invoke-static {}, Lcom/google/android/gms/internal/uo;->zzHQ()Lcom/google/android/gms/internal/uz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/uz;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
