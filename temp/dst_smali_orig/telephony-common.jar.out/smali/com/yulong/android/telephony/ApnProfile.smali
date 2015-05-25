.class public Lcom/yulong/android/telephony/ApnProfile;
.super Ljava/lang/Object;
.source "ApnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/ApnProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnData:Ljava/lang/String;

.field private mApnNI:Ljava/lang/String;

.field private mApnNameType:Ljava/lang/String;

.field private mAuthenicationType:Ljava/lang/String;

.field private mInactiveTimer:Ljava/lang/String;

.field private mPDPType:Ljava/lang/String;

.field private mParaMask:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfileId:Ljava/lang/String;

.field private mRATType:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/ApnProfile$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/ApnProfile$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/ApnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apnData"    # Ljava/lang/String;
    .param p2, "apnNameType"    # Ljava/lang/String;
    .param p3, "apnNI"    # Ljava/lang/String;
    .param p4, "PDPType"    # Ljava/lang/String;
    .param p5, "inactiveTimer"    # Ljava/lang/String;
    .param p6, "RATType"    # Ljava/lang/String;
    .param p7, "authenicationType"    # Ljava/lang/String;
    .param p8, "userName"    # Ljava/lang/String;
    .param p9, "password"    # Ljava/lang/String;
    .param p10, "paraMask"    # Ljava/lang/String;
    .param p11, "profileId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    iput-object p2, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    iput-object p3, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    iput-object p4, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    iput-object p5, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    iput-object p6, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    iput-object p7, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v0, p1

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Lcom/yulong/android/telephony/ApnProfile;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/ApnProfile;

    invoke-direct {v0}, Lcom/yulong/android/telephony/ApnProfile;-><init>()V

    .local v0, "ret":Lcom/yulong/android/telephony/ApnProfile;
    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/ApnProfile;->setFromBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "apnData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    const-string v0, "apnNameType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    const-string v0, "apnNI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    const-string v0, "PDPType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    const-string v0, "inactiveTimer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    const-string v0, "RATType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    const-string v0, "authenicationType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    const-string v0, "paraMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    const-string v0, "profileId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public fillInBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "apnData"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apnNameType"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apnNI"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PDPType"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inactiveTimer"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RATType"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authenicationType"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userName"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "paraMask"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileId"

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getmApnData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    return-object v0
.end method

.method public getmApnNI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    return-object v0
.end method

.method public getmApnNameType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    return-object v0
.end method

.method public getmAuthenicationType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    return-object v0
.end method

.method public getmInactiveTimer()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    return-object v0
.end method

.method public getmPDPType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    return-object v0
.end method

.method public getmParaMask()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getmProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public getmRATType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    return-object v0
.end method

.method public getmUserName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public setmApnData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApnData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    return-void
.end method

.method public setmApnNI(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApnNI"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    return-void
.end method

.method public setmApnNameType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApnNameType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    return-void
.end method

.method public setmAuthenicationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAuthenicationType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    return-void
.end method

.method public setmInactiveTimer(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInactiveTimer"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    return-void
.end method

.method public setmPDPType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPDPType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    return-void
.end method

.method public setmParaMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParaMask"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPassword"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setmProfileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProfileId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    return-void
.end method

.method public setmRATType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRATType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    return-void
.end method

.method public setmUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApnData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnNameType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNameType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnNI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mApnNI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPDPType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPDPType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInactiveTimer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mInactiveTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRATType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mRATType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAuthenicationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mAuthenicationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPassword = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mParaMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mParaMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/ApnProfile;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    return-void
.end method
