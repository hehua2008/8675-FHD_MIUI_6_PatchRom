.class public Lcom/yulong/android/telephony/PPPOEInfo;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/telephony/PPPOEInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulong/android/telephony/PPPOEInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final PPPOE_STATE_CONNECTED:Ljava/lang/String; = "PPPOE_STATE_CONNECTED"

.field public static final PPPOE_STATE_CONNECTING:Ljava/lang/String; = "PPPOE_STATE_CONNECTING"

.field public static final PPPOE_STATE_DISCONNECTED:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTED"

.field public static final PPPOE_STATE_DISCONNECTING:Ljava/lang/String; = "PPPOE_STATE_DISCONNECTING"

.field private static final TAG:Ljava/lang/String; = "PPPOEInfo"


# instance fields
.field private current_time:J

.field public online_time:J

.field private start_time:J

.field public status:Lcom/yulong/android/telephony/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/yulong/android/telephony/PPPOEInfo$1;

    invoke-direct {v0}, Lcom/yulong/android/telephony/PPPOEInfo$1;-><init>()V

    sput-object v0, Lcom/yulong/android/telephony/PPPOEInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-wide v1, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    iput-wide v1, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    iput-wide v1, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public updatePppoeOnlineTime()V
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    iget-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "PPPOEInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err start_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",and set start_time to current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    :cond_0
    iget-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    const-string v0, "PPPOEInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PPPoE onlne time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePppoeOnlineTime(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->current_time:J

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->start_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yulong/android/telephony/PPPOEInfo;->updatePppoeOnlineTime()V

    const-string v0, "PPPOEInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start PPPoE onlne time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updatePppoeStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "pppoeState"    # Ljava/lang/String;

    .prologue
    const-string v0, "PPPOEInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update PPPoE status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->CONNECTING:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    :goto_0
    return-void

    :cond_0
    const-string v0, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->ONLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yulong/android/telephony/PPPOEInfo$Status;->OFFLINE:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    iput-object v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->status:Lcom/yulong/android/telephony/PPPOEInfo$Status;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/yulong/android/telephony/PPPOEInfo;->online_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
