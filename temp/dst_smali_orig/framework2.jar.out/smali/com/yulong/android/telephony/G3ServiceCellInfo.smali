.class public Lcom/yulong/android/telephony/G3ServiceCellInfo;
.super Ljava/lang/Object;
.source "G3ServiceCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/G3ServiceCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arfcn:I

.field public mLac:I

.field public mMcc:I

.field public mMnc:I

.field public mNmo:I

.field public mRac:I

.field public mT3212:I

.field public pathLoss:I

.field public rscp:I

.field public rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/G3ServiceCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G3ServiceCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

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
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
