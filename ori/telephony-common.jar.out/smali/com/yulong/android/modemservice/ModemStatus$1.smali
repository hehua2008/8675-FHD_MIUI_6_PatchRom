.class final Lcom/yulong/android/modemservice/ModemStatus$1;
.super Ljava/lang/Object;
.source "ModemStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/ModemStatus;
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
        "Lcom/yulong/android/modemservice/ModemStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/modemservice/ModemStatus;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    const-string v3, "modemServiceClient"

    const-string v4, "Enter ModemStatus.CREATOR.createFromParcel"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "networkType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "connType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .local v2, "status":I
    new-instance v3, Lcom/yulong/android/modemservice/ModemStatus;

    invoke-direct {v3, v1, v0, v2}, Lcom/yulong/android/modemservice/ModemStatus;-><init>(III)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/ModemStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/modemservice/ModemStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/modemservice/ModemStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 71
    new-array v0, p1, [Lcom/yulong/android/modemservice/ModemStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/ModemStatus$1;->newArray(I)[Lcom/yulong/android/modemservice/ModemStatus;

    move-result-object v0

    return-object v0
.end method
