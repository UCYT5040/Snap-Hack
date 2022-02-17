.class public abstract Lcom/google/android/gms/internal/xh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/xh;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/xm;"
    }
.end annotation


# instance fields
.field protected final zzchS:Lcom/google/android/gms/internal/xm;

.field private zzchT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/xk;Lcom/google/android/gms/internal/xc;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xk;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/xm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/wr;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/xk;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/xc;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/xk;

    check-cast p1, Lcom/google/android/gms/internal/xc;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/xh;->zza(Lcom/google/android/gms/internal/xk;Lcom/google/android/gms/internal/xc;)I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/xc;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/google/android/gms/internal/xk;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/xk;

    check-cast p0, Lcom/google/android/gms/internal/xc;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/xh;->zza(Lcom/google/android/gms/internal/xk;Lcom/google/android/gms/internal/xc;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/xh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->zzII()Lcom/google/android/gms/internal/xj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xh;->zzII()Lcom/google/android/gms/internal/xj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xh;->zza(Lcom/google/android/gms/internal/xh;)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xj;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue(Z)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ".value"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xh;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ".priority"

    iget-object v2, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/xm;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x64

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xh;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzFz()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzII()Lcom/google/android/gms/internal/xj;
.end method

.method public final zzIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchT:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xh;->zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zd;->zzgY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchT:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchT:Ljava/lang/String;

    return-object v0
.end method

.method public final zzIQ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzIR()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p0

    goto :goto_0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/xh;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected final zzb(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/xi;->zzcio:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown hash version: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "priority:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/xh;->zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/xd;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xm;->zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p0

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/wp;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/wp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/xd;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/xh;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p2

    goto :goto_0
.end method

.method public final zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->zzIN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh;->zzchS:Lcom/google/android/gms/internal/xm;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    goto :goto_0
.end method
