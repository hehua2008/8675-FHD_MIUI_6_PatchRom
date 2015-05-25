.class public Lcom/yulong/android/uwservice/ConnectionStatistic;
.super Ljava/lang/Object;
.source "ConnectionStatistic.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/uwservice/ConnectionStatistic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Bps:I

.field public ConnectDuration:I

.field public mAlignmentErr:I

.field public mBufferOverrunErr:I

.field public mBytesRcved:I

.field public mBytesXmited:I

.field public mCompressionRatioIn:I

.field public mCompressionRatioOut:I

.field public mCrcErr:I

.field public mFramesRcved:I

.field public mFramesXmited:I

.field public mFramingErr:I

.field public mHardwareOverrunErr:I

.field public mTimeoutErr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionStatistic$1;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionStatistic$1;-><init>()V

    sput-object v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesXmited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesRcved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesXmited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesRcved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCrcErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mTimeoutErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mAlignmentErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mHardwareOverrunErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramingErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBufferOverrunErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioIn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->Bps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->ConnectDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
