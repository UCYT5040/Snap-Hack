.class public final Lcom/google/android/gms/internal/nl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzbZT:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/nu",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final zzbZU:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nq;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nq",
            "<TK;TV;>;TK;",
            "Ljava/util/Comparator",
            "<TK;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/nl;->zzbZU:Z

    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/nu;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFH()Lcom/google/android/gms/internal/nq;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nu;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nu;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nu;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nl;->zzbZU:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nu;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/nu;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFH()Lcom/google/android/gms/internal/nq;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nu;->zzFH()Lcom/google/android/gms/internal/nq;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/nu;

    move-object v1, v0

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFG()Lcom/google/android/gms/internal/nq;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    return-object v3
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->zzbZT:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/nl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
