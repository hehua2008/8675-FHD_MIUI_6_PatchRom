.class public Lcom/yulong/android/uwservice/DialParameters;
.super Ljava/lang/Object;
.source "DialParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/uwservice/DialParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthAlgrithm:I

.field public mDialMode:I

.field public mForceReneg:I

.field public mIMSI:Ljava/lang/String;

.field public mIpFilter:I

.field public mLifeTime:I

.field public mLocalAddr:Ljava/lang/String;

.field public mMPPC:I

.field public mModemLight:I

.field public mNodeMac:Ljava/lang/String;

.field public mOverrideReg:I

.field public mPassword:Ljava/lang/String;

.field public mSecurityScope:I

.field public mSimUW:I

.field public mSyncPPP:I

.field public mUserName:Ljava/lang/String;

.field public mVJ:I

.field public mVersion:I

.field public mWagAddr:Ljava/lang/String;

.field public mWagHostName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/uwservice/DialParameters$1;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/DialParameters$1;-><init>()V

    sput-object v0, Lcom/yulong/android/uwservice/DialParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVersion:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mDialMode:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSecurityScope:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLifeTime:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mAuthAlgrithm:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSimUW:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mOverrideReg:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSyncPPP:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIpFilter:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mModemLight:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVJ:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mMPPC:I

    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mForceReneg:I

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mUserName:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mPassword:Ljava/lang/String;

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
    .param p2, "arg1"    # I

    .prologue
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mDialMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSecurityScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLifeTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mAuthAlgrithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSimUW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mOverrideReg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSyncPPP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIpFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mModemLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVJ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mMPPC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mForceReneg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
