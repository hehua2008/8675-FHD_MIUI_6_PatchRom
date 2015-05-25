.class public Lcom/yulong/android/telephony/MobileIpProfile;
.super Ljava/lang/Object;
.source "MobileIpProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/MobileIpProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAaaSpi:Ljava/lang/String;

.field private mHaSpi:Ljava/lang/String;

.field private mHomeAddress:Ljava/lang/String;

.field private mHomeAgentPrimaryAddress:Ljava/lang/String;

.field private mHomeAgentSecondaryAddress:Ljava/lang/String;

.field private mMnAaaKey:Ljava/lang/String;

.field private mMnHaKey:Ljava/lang/String;

.field private mNai:Ljava/lang/String;

.field private mParamMask:Ljava/lang/String;

.field private mProfileId:Ljava/lang/String;

.field private mProfileState:Ljava/lang/String;

.field private mReverseTunnelPreference:Ljava/lang/String;

.field private mUpdateByOmaDm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/MobileIpProfile$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/MobileIpProfile$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/MobileIpProfile;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "paramMask"    # Ljava/lang/String;
    .param p2, "profileState"    # Ljava/lang/String;
    .param p3, "homeAddress"    # Ljava/lang/String;
    .param p4, "homeAgentPrimaryAddress"    # Ljava/lang/String;
    .param p5, "homeAgentSecondaryAddress"    # Ljava/lang/String;
    .param p6, "reverseTunnelPreference"    # Ljava/lang/String;
    .param p7, "nai"    # Ljava/lang/String;
    .param p8, "haSpi"    # Ljava/lang/String;
    .param p9, "aaaSpi"    # Ljava/lang/String;
    .param p10, "mnHaKey"    # Ljava/lang/String;
    .param p11, "mnAaaKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    iput-object p2, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    iput-object p3, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    iput-object p7, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "paramMask"    # Ljava/lang/String;
    .param p2, "profileState"    # Ljava/lang/String;
    .param p3, "homeAddress"    # Ljava/lang/String;
    .param p4, "homeAgentPrimaryAddress"    # Ljava/lang/String;
    .param p5, "homeAgentSecondaryAddress"    # Ljava/lang/String;
    .param p6, "reverseTunnelPreference"    # Ljava/lang/String;
    .param p7, "nai"    # Ljava/lang/String;
    .param p8, "haSpi"    # Ljava/lang/String;
    .param p9, "aaaSpi"    # Ljava/lang/String;
    .param p10, "mnHaKey"    # Ljava/lang/String;
    .param p11, "mnAaaKey"    # Ljava/lang/String;
    .param p12, "profileId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    iput-object p2, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    iput-object p3, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    iput-object p7, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    iput-object p8, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    iput-object p9, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    iput-object p10, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    iput-object p11, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    iput-object p12, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Lcom/yulong/android/telephony/MobileIpProfile;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/MobileIpProfile;

    invoke-direct {v0}, Lcom/yulong/android/telephony/MobileIpProfile;-><init>()V

    .local v0, "ret":Lcom/yulong/android/telephony/MobileIpProfile;
    invoke-direct {v0, p0}, Lcom/yulong/android/telephony/MobileIpProfile;->setFromBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "paramMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    const-string v0, "profileState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    const-string v0, "homeAddress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    const-string v0, "homeAgentPrimaryAddress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    const-string v0, "homeAgentSecondaryAddress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    const-string v0, "reverseTunnelPreference"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    const-string v0, "nai"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    const-string v0, "haSpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    const-string v0, "aaaSpi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    const-string v0, "mnHaKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    const-string v0, "mnAaaKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    const-string v0, "profileId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    const-string v0, "updateByOmaDm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

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
    const-string v0, "paramMask"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileState"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homeAddress"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homeAgentPrimaryAddress"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homeAgentSecondaryAddress"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reverseTunnelPreference"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nai"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "haSpi"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aaaSpi"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mnHaKey"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mnAaaKey"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileId"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "updateByOmaDm"

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getmAaaSpi()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getmHaSpi()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getmHomeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmHomeAgentPrimaryAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmHomeAgentSecondaryAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmMnAaaKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmMnHaKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmNai()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method public getmParamMask()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    return-object v0
.end method

.method public getmProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public getmProfileState()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    return-object v0
.end method

.method public getmReverseTunnelPreference()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    return-object v0
.end method

.method public getmUpdateByOmaDm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

    return-object v0
.end method

.method public setmAaaSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAaaSpi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    return-void
.end method

.method public setmHaSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHaSpi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    return-void
.end method

.method public setmHomeAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHomeAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    return-void
.end method

.method public setmHomeAgentPrimaryAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHomeAgentPrimaryAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    return-void
.end method

.method public setmHomeAgentSecondaryAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHomeAgentSecondaryAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    return-void
.end method

.method public setmMnAaaKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMnAaaKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    return-void
.end method

.method public setmMnHaKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMnHaKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    return-void
.end method

.method public setmNai(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNai"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    return-void
.end method

.method public setmParamMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParamMask"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    return-void
.end method

.method public setmProfileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProfileId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    return-void
.end method

.method public setmProfileState(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProfileState"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    return-void
.end method

.method public setmReverseTunnelPreference(Ljava/lang/String;)V
    .locals 0
    .param p1, "mReverseTunnelPreference"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    return-void
.end method

.method public setmUpdateByOmaDm(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateByOmaDm"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mParamMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mParamMask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeAgentPrimaryAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentPrimaryAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeAgentSecondaryAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHomeAgentSecondaryAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReverseTunnelPreference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mReverseTunnelPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNai = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mNai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHaSpi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mHaSpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAaaSpi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mAaaSpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMnHaKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnHaKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMnAaaKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mMnAaaKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateByOmaDm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/telephony/MobileIpProfile;->mUpdateByOmaDm:Ljava/lang/String;

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
