.class public Landroid/net/wifi/PPPOEConfig;
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
            "Landroid/net/wifi/PPPOEConfig;",
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
    .line 107
    new-instance v0, Landroid/net/wifi/PPPOEConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    .line 38
    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    .line 39
    iput v2, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    .line 40
    iput v2, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    .line 42
    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public loadPPPOEConfig(Landroid/net/wifi/PPPOEConfig;)Z
    .locals 1
    .param p1, "dataToReload"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public savePPPOEConfig(Landroid/net/wifi/PPPOEConfig;)Z
    .locals 2
    .param p1, "dataToSave"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "PPPOEConfig"

    const-string/jumbo v1, "save PPPoE Configure data failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 57
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
    .line 94
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
