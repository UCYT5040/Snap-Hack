.class final Lcom/google/firebase/database/connection/idl/zzak;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzal;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zzal;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbD:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbE:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/firebase/database/connection/idl/zzak;Ljava/lang/Object;)Lcom/google/android/gms/internal/pe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/pe;

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbD:Ljava/util/List;

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbE:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/pe;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbD:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzak;->zzcbE:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
