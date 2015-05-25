.class final Lcom/yulong/android/uwservice/ConnectionInformation$1;
.super Ljava/lang/Object;
.source "ConnectionInformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/uwservice/ConnectionInformation;
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
        "Lcom/yulong/android/uwservice/ConnectionInformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/ConnectionInformation;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 18
    new-instance v0, Lcom/yulong/android/uwservice/ConnectionInformation;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/ConnectionInformation;-><init>()V

    .line 19
    .local v0, "ci":Lcom/yulong/android/uwservice/ConnectionInformation;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/uwservice/ConnectionInformation;->mConnType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/uwservice/ConnectionInformation;->mIpAddr:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/uwservice/ConnectionInformation;->mServAddr:Ljava/lang/String;

    .line 22
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/ConnectionInformation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/uwservice/ConnectionInformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/uwservice/ConnectionInformation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    new-array v0, p1, [Lcom/yulong/android/uwservice/ConnectionInformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yulong/android/uwservice/ConnectionInformation$1;->newArray(I)[Lcom/yulong/android/uwservice/ConnectionInformation;

    move-result-object v0

    return-object v0
.end method
