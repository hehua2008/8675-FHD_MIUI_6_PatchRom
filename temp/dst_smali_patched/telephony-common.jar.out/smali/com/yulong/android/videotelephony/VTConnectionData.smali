.class public Lcom/yulong/android/videotelephony/VTConnectionData;
.super Ljava/lang/Object;
.source "VTConnectionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/videotelephony/VTConnectionData;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "VTConnectionData"


# instance fields
.field mAddress:Ljava/lang/String;

.field mCreateTime:J

.field mIsIncoming:Z

.field mNumberPresentation:I

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/videotelephony/VTConnectionData$1;

    invoke-direct {v0}, Lcom/yulong/android/videotelephony/VTConnectionData$1;-><init>()V

    sput-object v0, Lcom/yulong/android/videotelephony/VTConnectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mAddress:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v0, v1, [Z

    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mIsIncoming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mCreateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJI)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isIncoming"    # Z
    .param p3, "createTime"    # J
    .param p5, "numberPresentation"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    iput-object p1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mAddress:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mIsIncoming:Z

    iput-wide p3, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mCreateTime:J

    iput p5, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mCreateTime:J

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mIsIncoming:Z

    return v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->userData:Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [Z

    .local v0, "val":[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mIsIncoming:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-wide v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mCreateTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Lcom/yulong/android/videotelephony/VTConnectionData;->mNumberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
