.class public Lcom/yulong/android/telephony/G3NeighborCellInfo;
.super Ljava/lang/Object;
.source "G3NeighborCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/G3NeighborCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cellArfcn:I

.field public cellParaId:I

.field public cellRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yulong/android/telephony/G3NeighborCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G3NeighborCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    .line 31
    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    .line 32
    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellParaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/yulong/android/telephony/G3NeighborCellInfo;->cellRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
