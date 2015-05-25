.class public Lcom/android/internal/telephony/LogicChannelResp;
.super Ljava/lang/Object;
.source "LogicChannelResp.java"


# instance fields
.field public channel:I

.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "sw1"    # I
    .param p3, "sw2"    # I
    .param p4, "hexString"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/LogicChannelResp;-><init>(III[B)V

    .line 17
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "sw1"    # I
    .param p3, "sw2"    # I
    .param p4, "payload"    # [B

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/android/internal/telephony/LogicChannelResp;->channel:I

    .line 10
    iput p2, p0, Lcom/android/internal/telephony/LogicChannelResp;->sw1:I

    .line 11
    iput p3, p0, Lcom/android/internal/telephony/LogicChannelResp;->sw2:I

    .line 12
    iput-object p4, p0, Lcom/android/internal/telephony/LogicChannelResp;->payload:[B

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogicChannelResp channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LogicChannelResp;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LogicChannelResp;->sw1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LogicChannelResp;->sw2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
