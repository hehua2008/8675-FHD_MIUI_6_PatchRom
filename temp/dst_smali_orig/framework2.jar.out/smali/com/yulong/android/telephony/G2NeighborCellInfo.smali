.class public Lcom/yulong/android/telephony/G2NeighborCellInfo;
.super Ljava/lang/Object;
.source "G2NeighborCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/G2NeighborCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arfcn:I

.field public band:I

.field public bsic:I

.field public c1:I

.field public c2:I

.field public c31:I

.field public c32:I

.field public gprsSupp:I

.field public rxlev:I

.field public rxlevMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
