.class public Lcom/yulong/android/telephony/PPPOEConfig;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/PPPOEConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final PPPOE_CONNECT_TRYING_NUM:I = 0x14

.field private static final TAG:Ljava/lang/String; = "PPPOEConfig"


# instance fields
.field public MSS:I

.field public interf:Ljava/lang/String;

.field public lcp_echo_failure:I

.field public lcp_echo_interval:I

.field public mru:I

.field public mtu:I

.field public password:Ljava/lang/String;

.field public timeout:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/yulong/android/telephony/PPPOEConfig$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PPPOEConfig$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->username:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->password:Ljava/lang/String;

    .line 41
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->interf:Ljava/lang/String;

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_interval:I

    .line 43
    iput v1, p0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_failure:I

    .line 44
    iput v2, p0, Lcom/yulong/android/telephony/PPPOEConfig;->mtu:I

    .line 45
    iput v2, p0, Lcom/yulong/android/telephony/PPPOEConfig;->mru:I

    .line 46
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->timeout:I

    .line 47
    iput v1, p0, Lcom/yulong/android/telephony/PPPOEConfig;->MSS:I

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public loadPPPOEConfig(Lcom/yulong/android/telephony/PPPOEConfig;)Z
    .locals 1
    .param p1, "dataToReload"    # Lcom/yulong/android/telephony/PPPOEConfig;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public savePPPOEConfig(Lcom/yulong/android/telephony/PPPOEConfig;)Z
    .locals 2
    .param p1, "dataToSave"    # Lcom/yulong/android/telephony/PPPOEConfig;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "PPPOEConfig"

    const-string v1, "save PPPoE Configure data failed."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/yulong/android/telephony/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
