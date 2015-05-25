.class final Lcom/yulong/android/uwservice/ConnectionStatistic$1;
.super Ljava/lang/Object;
.source "ConnectionStatistic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uwservice/ConnectionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/uwservice/ConnectionStatistic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/ConnectionStatistic;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionStatistic;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionStatistic;-><init>()V

    .local v0, "ci":Lcom/yulong/android/uwservice/ConnectionStatistic;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesXmited:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBytesRcved:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesXmited:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramesRcved:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCrcErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mTimeoutErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mAlignmentErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mHardwareOverrunErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mFramingErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mBufferOverrunErr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioIn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->mCompressionRatioOut:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->Bps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionStatistic;->ConnectDuration:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/ConnectionStatistic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/ConnectionStatistic;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/uwservice/ConnectionStatistic;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/yulong/android/uwservice/ConnectionStatistic;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/ConnectionStatistic$1;->newArray(I)[Lcom/yulong/android/uwservice/ConnectionStatistic;

    move-result-object v0

    return-object v0
.end method
