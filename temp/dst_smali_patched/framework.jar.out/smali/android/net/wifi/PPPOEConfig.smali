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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    const-string v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v2, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v2, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public loadPPPOEConfig(Landroid/net/wifi/PPPOEConfig;)Z
    .locals 1
    .param p1, "dataToReload"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

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
    if-nez p1, :cond_0

    const-string v0, "PPPOEConfig"

    const-string v1, "save PPPoE Configure data failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

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
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
