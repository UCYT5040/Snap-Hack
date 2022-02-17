.class public final Lcom/google/android/gms/internal/xg;
.super Lcom/google/android/gms/internal/xe;


# static fields
.field private static final zzcin:Lcom/google/android/gms/internal/xg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xg;->zzcin:Lcom/google/android/gms/internal/xg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xe;-><init>()V

    return-void
.end method

.method public static zzJh()Lcom/google/android/gms/internal/xg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xg;->zzcin:Lcom/google/android/gms/internal/xg;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/xl;

    check-cast p2, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xg;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzJc()Lcom/google/android/gms/internal/xl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/xl;->zzJj()Lcom/google/android/gms/internal/xl;

    move-result-object v0

    return-object v0
.end method

.method public final zzJd()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xl;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/xl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    return-object v1
.end method

.method public final zzi(Lcom/google/android/gms/internal/xm;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
