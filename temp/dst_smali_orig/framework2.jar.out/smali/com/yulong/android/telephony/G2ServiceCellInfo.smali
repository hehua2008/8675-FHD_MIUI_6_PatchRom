.class public Lcom/yulong/android/telephony/G2ServiceCellInfo;
.super Ljava/lang/Object;
.source "G2ServiceCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/G2ServiceCellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEdgeSupport:I

.field public mGprsSupport:I

.field public mLac:I

.field public mMcc:I

.field public mMnc:I

.field public mNmo:I

.field public mRac:I

.field public mSCellDsc:I

.field public mServCELLBcchArfcn:I

.field public mServCellBand:I

.field public mServCellBsic:I

.field public mServCellC1:I

.field public mServCellC2:I

.field public mServCellC31:I

.field public mServCellC32:I

.field public mServCellCi:I

.field public mServCellDscMax:I

.field public mServCellGprsSupp:I

.field public mServCellRxlev:I

.field public mServSysInfoDtxInd:I

.field public mServSysInfoRxlexMin:I

.field public mT3212:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/G2ServiceCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G2ServiceCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

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
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
