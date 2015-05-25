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
    .line 23
    new-instance v0, Lcom/yulong/android/telephony/G3ServiceCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G3ServiceCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 38
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 39
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 40
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 41
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 43
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 44
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 45
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 46
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 47
    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMnc:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->pathLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->arfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mT3212:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mRac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/yulong/android/telephony/G3ServiceCellInfo;->mNmo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
