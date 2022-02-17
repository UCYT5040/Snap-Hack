.class public final Lcom/google/android/gms/internal/uj;
.super Ljava/lang/Object;


# static fields
.field private static final zzcgd:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcge:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgf:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgg:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcgc:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/uk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/uk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uj;->zzcgd:Lcom/google/android/gms/internal/uz;

    new-instance v0, Lcom/google/android/gms/internal/ul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ul;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uj;->zzcge:Lcom/google/android/gms/internal/uz;

    new-instance v0, Lcom/google/android/gms/internal/uv;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/uj;->zzcgf:Lcom/google/android/gms/internal/uv;

    new-instance v0, Lcom/google/android/gms/internal/uv;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/uj;->zzcgg:Lcom/google/android/gms/internal/uv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/uv;->zzHR()Lcom/google/android/gms/internal/uv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/uv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/uj;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/uj;

    iget-object v2, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    iget-object v3, p1, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/uv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{PruneForest:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHN()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcge:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/uz;)Z

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/uy;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/uy",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    new-instance v1, Lcom/google/android/gms/internal/um;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/um;-><init>(Lcom/google/android/gms/internal/uj;Lcom/google/android/gms/internal/uy;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/uy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uj;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zze(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uv;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/uv;

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/uj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/uv;)V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final zzv(Lcom/google/android/gms/internal/qr;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzG(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzw(Lcom/google/android/gms/internal/qr;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzG(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzx(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcgd:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uz;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t prune path that was kept previously!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcge:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uz;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcgf:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/uj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/uv;)V

    goto :goto_0
.end method

.method public final zzy(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcgd:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uz;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uj;->zzcgc:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uj;->zzcgg:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/uj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uj;-><init>(Lcom/google/android/gms/internal/uv;)V

    goto :goto_0
.end method
