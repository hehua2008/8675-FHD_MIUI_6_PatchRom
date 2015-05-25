.class final Lcom/yulong/android/telephony/MobileIpProfile$1;
.super Ljava/lang/Object;
.source "MobileIpProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/MobileIpProfile;
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
        "Lcom/yulong/android/telephony/MobileIpProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/MobileIpProfile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    new-instance v0, Lcom/yulong/android/telephony/MobileIpProfile;

    invoke-direct {v0, p1}, Lcom/yulong/android/telephony/MobileIpProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/MobileIpProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/MobileIpProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/telephony/MobileIpProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Lcom/yulong/android/telephony/MobileIpProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/MobileIpProfile$1;->newArray(I)[Lcom/yulong/android/telephony/MobileIpProfile;

    move-result-object v0

    return-object v0
.end method
