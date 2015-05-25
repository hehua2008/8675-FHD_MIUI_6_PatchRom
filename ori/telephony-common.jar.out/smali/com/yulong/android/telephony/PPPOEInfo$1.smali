.class final Lcom/yulong/android/telephony/PPPOEInfo$1;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PPPOEInfo;
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
        "Lcom/yulong/android/telephony/PPPOEInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PPPOEInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PPPOEInfo;-><init>()V

    .line 99
    .local v0, "info":Lcom/yulong/android/telephony/PPPOEInfo;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-object v1, v0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    .line 101
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PPPOEInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/telephony/PPPOEInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/yulong/android/telephony/PPPOEInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PPPOEInfo$1;->newArray(I)[Lcom/yulong/android/telephony/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method
