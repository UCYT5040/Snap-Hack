.class public final Lcom/google/android/gms/internal/zzcjv;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj",
        "<",
        "Lcom/google/android/gms/internal/zzcjv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbvr:[Lcom/google/android/gms/internal/zzcjv;


# instance fields
.field public zzbuI:Ljava/lang/Integer;

.field public zzbvs:Lcom/google/android/gms/internal/zzcka;

.field public zzbvt:Lcom/google/android/gms/internal/zzcka;

.field public zzbvu:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzcsx:I

    return-void
.end method

.method public static zzzA()[Lcom/google/android/gms/internal/zzcjv;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcjv;->zzbvr:[Lcom/google/android/gms/internal/zzcjv;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcjv;->zzbvr:[Lcom/google/android/gms/internal/zzcjv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcjv;

    sput-object v0, Lcom/google/android/gms/internal/zzcjv;->zzbvr:[Lcom/google/android/gms/internal/zzcjv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzcjv;->zzbvr:[Lcom/google/android/gms/internal/zzcjv;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcjv;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzcjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcka;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcka;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcka;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcka;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzcka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcka;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcka;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbuI:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvs:Lcom/google/android/gms/internal/zzcka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvt:Lcom/google/android/gms/internal/zzcka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzbvu:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
