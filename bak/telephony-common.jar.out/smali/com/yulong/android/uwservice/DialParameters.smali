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
    .line 46
    new-instance v0, Lcom/yulong/android/uwservice/DialParameters$1;

    invoke-direct {v0}, Lcom/yulong/android/uwservice/DialParameters$1;-><init>()V

    sput-object v0, Lcom/yulong/android/uwservice/DialParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVersion:I

    .line 61
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mDialMode:I

    .line 62
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSecurityScope:I

    .line 63
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLifeTime:I

    .line 64
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mAuthAlgrithm:I

    .line 70
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSimUW:I

    .line 71
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mOverrideReg:I

    .line 72
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSyncPPP:I

    .line 73
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIpFilter:I

    .line 74
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mModemLight:I

    .line 75
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVJ:I

    .line 76
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mMPPC:I

    .line 77
    iput v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mForceReneg:I

    .line 83
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    .line 84
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    .line 85
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    .line 86
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    .line 87
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    .line 88
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mUserName:Ljava/lang/String;

    .line 89
    const-string v0, "none"

    iput-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mPassword:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 98
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mDialMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSecurityScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLifeTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mAuthAlgrithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSimUW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mOverrideReg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mSyncPPP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIpFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mModemLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mVJ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mMPPC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mForceReneg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mWagAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mNodeMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yulong/android/uwservice/DialParameters;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void
.end method
