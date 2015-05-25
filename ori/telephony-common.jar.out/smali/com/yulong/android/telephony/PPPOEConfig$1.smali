.class final Lcom/yulong/android/telephony/PPPOEConfig$1;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/PPPOEConfig;
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
        "Lcom/yulong/android/telephony/PPPOEConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PPPOEConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v0, Lcom/yulong/android/telephony/PPPOEConfig;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PPPOEConfig;-><init>()V

    .line 119
    .local v0, "info":Lcom/yulong/android/telephony/PPPOEConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->username:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->password:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->interf:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_interval:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_failure:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->mtu:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->mru:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->timeout:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yulong/android/telephony/PPPOEConfig;->MSS:I

    .line 129
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PPPOEConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/telephony/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/telephony/PPPOEConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 133
    new-array v0, p1, [Lcom/yulong/android/telephony/PPPOEConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/yulong/android/telephony/PPPOEConfig$1;->newArray(I)[Lcom/yulong/android/telephony/PPPOEConfig;

    move-result-object v0

    return-object v0
.end method
