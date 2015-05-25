.class final Lcom/yulong/android/modemservice/ModemStatistic$1;
.super Ljava/lang/Object;
.source "ModemStatistic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/ModemStatistic;
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
        "Lcom/yulong/android/modemservice/ModemStatistic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/modemservice/ModemStatistic;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 115
    .local v1, "ud":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 116
    .local v3, "dd":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 118
    .local v5, "duration":J
    const-string v0, "ModemStatistic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uplinkData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; downlinkData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; connectionTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/yulong/android/modemservice/ModemStatistic;

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/modemservice/ModemStatistic;-><init>(JJJ)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/ModemStatistic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/modemservice/ModemStatistic;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/modemservice/ModemStatistic;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 123
    new-array v0, p1, [Lcom/yulong/android/modemservice/ModemStatistic;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/ModemStatistic$1;->newArray(I)[Lcom/yulong/android/modemservice/ModemStatistic;

    move-result-object v0

    return-object v0
.end method
