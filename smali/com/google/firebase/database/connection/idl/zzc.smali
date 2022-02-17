.class public final Lcom/google/firebase/database/connection/idl/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzcaE:Z

.field final zzcaG:Ljava/lang/String;

.field final zzcbV:Lcom/google/firebase/database/connection/idl/zzi;

.field final zzcbW:I

.field final zzcbX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzcbY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/zze;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/wn;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ol;",
            "Lcom/google/android/gms/internal/wn;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    sget-object v0, Lcom/google/firebase/database/connection/idl/zzd;->zzcbZ:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/firebase/database/connection/idl/zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ol;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ol;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ol;->isSecure()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/connection/idl/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbV:Lcom/google/firebase/database/connection/idl/zzi;

    iput v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbX:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaE:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbY:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaG:Ljava/lang/String;

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/idl/zzi;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/connection/idl/zzi;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbV:Lcom/google/firebase/database/connection/idl/zzi;

    iput p2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbW:I

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbX:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaE:Z

    iput-object p5, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbY:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbV:Lcom/google/firebase/database/connection/idl/zzi;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbW:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbX:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaE:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcbY:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzc;->zzcaG:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
