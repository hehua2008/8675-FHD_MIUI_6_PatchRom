.class final Lcom/yulong/android/telephony/G2NeighborCellInfo$1;
.super Ljava/lang/Object;
.source "G2NeighborCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/G2NeighborCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 10
    new-instance v0, Lcom/yulong/android/telephony/G2NeighborCellInfo;

    invoke-direct {v0, p1}, Lcom/yulong/android/telephony/G2NeighborCellInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/G2NeighborCellInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/telephony/G2NeighborCellInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 13
    new-array v0, p1, [Lcom/yulong/android/telephony/G2NeighborCellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;->newArray(I)[Lcom/yulong/android/telephony/G2NeighborCellInfo;

    move-result-object v0

    return-object v0
.end method
