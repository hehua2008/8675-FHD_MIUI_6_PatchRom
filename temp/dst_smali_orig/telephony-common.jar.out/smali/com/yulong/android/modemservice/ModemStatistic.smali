.class public Lcom/yulong/android/modemservice/ModemStatistic;
.super Ljava/lang/Object;
.source "ModemStatistic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/modemservice/ModemStatistic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectionTime:J

.field public downlinkData:J

.field public lastDownlinkData:J

.field public lastUplinkData:J

.field public uplinkData:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/modemservice/ModemStatistic$1;

    invoke-direct {v0}, Lcom/yulong/android/modemservice/ModemStatistic$1;-><init>()V

    sput-object v0, Lcom/yulong/android/modemservice/ModemStatistic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2
    .param p1, "ud"    # J
    .param p3, "dd"    # J
    .param p5, "duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yulong/android/modemservice/ModemStatistic;->uplinkData:J

    iput-wide p3, p0, Lcom/yulong/android/modemservice/ModemStatistic;->downlinkData:J

    iput-wide p5, p0, Lcom/yulong/android/modemservice/ModemStatistic;->connectionTime:J

    iput-wide v0, p0, Lcom/yulong/android/modemservice/ModemStatistic;->lastUplinkData:J

    iput-wide v0, p0, Lcom/yulong/android/modemservice/ModemStatistic;->lastDownlinkData:J

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0
    .param p1, "ud"    # J
    .param p3, "dd"    # J
    .param p5, "lud"    # J
    .param p7, "ldd"    # J
    .param p9, "duration"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yulong/android/modemservice/ModemStatistic;->uplinkData:J

    iput-wide p3, p0, Lcom/yulong/android/modemservice/ModemStatistic;->downlinkData:J

    iput-wide p9, p0, Lcom/yulong/android/modemservice/ModemStatistic;->connectionTime:J

    iput-wide p5, p0, Lcom/yulong/android/modemservice/ModemStatistic;->lastUplinkData:J

    iput-wide p7, p0, Lcom/yulong/android/modemservice/ModemStatistic;->lastDownlinkData:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uplinkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yulong/android/modemservice/ModemStatistic;->uplinkData:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; downlinkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yulong/android/modemservice/ModemStatistic;->downlinkData:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; connectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yulong/android/modemservice/ModemStatistic;->connectionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    iget-wide v0, p0, Lcom/yulong/android/modemservice/ModemStatistic;->uplinkData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yulong/android/modemservice/ModemStatistic;->downlinkData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yulong/android/modemservice/ModemStatistic;->connectionTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
