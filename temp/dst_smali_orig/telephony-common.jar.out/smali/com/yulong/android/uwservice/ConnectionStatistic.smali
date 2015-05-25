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
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionStatistic$1;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionStatistic$1;-><init>()V

    sput-object v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesXmited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesRcved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesXmited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesRcved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCrcErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mTimeoutErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mAlignmentErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mHardwareOverrunErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramingErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBufferOverrunErr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioIn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->Bps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/ConnectionStatistic;->ConnectDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
