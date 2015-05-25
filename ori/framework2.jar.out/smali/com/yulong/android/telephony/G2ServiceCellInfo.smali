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
    .line 12
    new-instance v0, Lcom/yulong/android/telephony/G2ServiceCellInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/G2ServiceCellInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 58
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 59
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 60
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 61
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 63
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 64
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 65
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 66
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 67
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 69
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 70
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 71
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 72
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 73
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 75
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 76
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 77
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 78
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 79
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 81
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 82
    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mT3212:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mRac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mNmo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCELLBcchArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellGprsSupp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoRxlexMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellDscMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mEdgeSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mGprsSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServSysInfoDtxInd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellRxlev:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC31:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mServCellC32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/yulong/android/telephony/G2ServiceCellInfo;->mSCellDsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
