.class final Lcom/google/android/gms/internal/xx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xy;


# instance fields
.field private zzciG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzciH:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/xx;->zzciH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xx;->zzciG:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzC([B)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xx;->zzciG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/xx;->zzciH:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/xx;->zzciH:I

    const/4 v0, 0x1

    return v0
.end method

.method public final zzJn()Lcom/google/android/gms/internal/yl;
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/xx;->zzciH:I

    new-array v4, v0, [B

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xx;->zzciG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xx;->zzciG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/yl;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/yl;-><init>([B)V

    return-object v0
.end method
