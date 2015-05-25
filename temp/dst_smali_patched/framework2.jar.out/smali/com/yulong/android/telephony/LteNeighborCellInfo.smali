.class public Lcom/yulong/android/telephony/LteNeighborCellInfo;
.super Ljava/lang/Object;
.source "LteNeighborCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/LteNeighborCellInfo;",
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
    new-instance v0, Lcom/yulong/android/telephony/LteNeighborCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/LteNeighborCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellParaId:I

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellArfcn:I

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellRscp:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellParaId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellRscp:I

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
    iget v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellParaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/LteNeighborCellInfo;->cellRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
