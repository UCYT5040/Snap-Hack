.class public final Lcom/google/firebase/database/connection/idl/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/firebase/database/connection/idl/zzak;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzd(Landroid/os/Parcel;)I

    move-result v2

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    packed-switch v4, :pswitch_data_0

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzC(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzC(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzF(Landroid/os/Parcel;I)V

    new-instance v2, Lcom/google/firebase/database/connection/idl/zzak;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/connection/idl/zzak;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/firebase/database/connection/idl/zzak;

    return-object v0
.end method
