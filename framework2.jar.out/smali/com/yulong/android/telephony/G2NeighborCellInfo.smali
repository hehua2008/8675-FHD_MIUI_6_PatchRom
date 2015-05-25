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
    .line 7
    new-instance v0, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G2NeighborCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    .line 32
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    .line 33
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    .line 34
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    .line 35
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    .line 36
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    .line 37
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    .line 38
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    .line 39
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    .line 40
    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->arfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlevMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->gprsSupp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->bsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->rxlev:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c31:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/yulong/android/telephony/G2NeighborCellInfo;->c32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void
.end method
