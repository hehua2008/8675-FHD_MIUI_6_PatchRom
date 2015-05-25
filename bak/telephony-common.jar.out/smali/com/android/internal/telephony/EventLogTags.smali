.class public Lcom/android/internal/telephony/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BAD_IP_ADDRESS:I = 0xc3c5

.field public static final CALL_DROP:I = 0xc3ba

.field public static final CDMA_DATA_DROP:I = 0xc3bf

.field public static final CDMA_DATA_SETUP_FAILED:I = 0xc3be

.field public static final CDMA_DATA_STATE_CHANGE:I = 0xc3c3

.field public static final CDMA_SERVICE_STATE_CHANGE:I = 0xc3c4

.field public static final DATA_NETWORK_REGISTRATION_FAIL:I = 0xc3bb

.field public static final DATA_NETWORK_STATUS_ON_RADIO_OFF:I = 0xc3bc

.field public static final DATA_STALL_RECOVERY_CLEANUP:I = 0xc3c7

.field public static final DATA_STALL_RECOVERY_GET_DATA_CALL_LIST:I = 0xc3c6

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART:I = 0xc3c9

.field public static final DATA_STALL_RECOVERY_RADIO_RESTART_WITH_PROP:I = 0xc3ca

.field public static final DATA_STALL_RECOVERY_REREGISTER:I = 0xc3c8

.field public static final GSM_DATA_STATE_CHANGE:I = 0xc3c1

.field public static final GSM_RAT_SWITCHED:I = 0xc3c0

.field public static final GSM_SERVICE_STATE_CHANGE:I = 0xc3c2

.field public static final PDP_BAD_DNS_ADDRESS:I = 0xc3b4

.field public static final PDP_CONTEXT_RESET:I = 0xc3b7

.field public static final PDP_NETWORK_DROP:I = 0xc3bd

.field public static final PDP_RADIO_RESET:I = 0xc3b6

.field public static final PDP_RADIO_RESET_COUNTDOWN_TRIGGERED:I = 0xc3b5

.field public static final PDP_REREGISTER_NETWORK:I = 0xc3b8

.field public static final PDP_SETUP_FAIL:I = 0xc3b9

.field public static final SMS_DENIED_BY_USER:I = 0xc3cd

.field public static final SMS_SENT_BY_USER:I = 0xc3d0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBadIpAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 157
    const v0, 0xc3c5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 158
    return-void
.end method

.method public static writeCallDrop(III)V
    .locals 4
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 113
    const v0, 0xc3ba

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 114
    return-void
.end method

.method public static writeCdmaDataDrop(II)V
    .locals 4
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 133
    const v0, 0xc3bf

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 134
    return-void
.end method

.method public static writeCdmaDataSetupFailed(III)V
    .locals 4
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 129
    const v0, 0xc3be

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 130
    return-void
.end method

.method public static writeCdmaDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    .prologue
    .line 149
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    return-void
.end method

.method public static writeCdmaServiceStateChange(IIII)V
    .locals 4
    .param p0, "oldstate"    # I
    .param p1, "olddatastate"    # I
    .param p2, "newstate"    # I
    .param p3, "newdatastate"    # I

    .prologue
    .line 153
    const v0, 0xc3c4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 154
    return-void
.end method

.method public static writeDataNetworkRegistrationFail(II)V
    .locals 4
    .param p0, "opNumeric"    # I
    .param p1, "cid"    # I

    .prologue
    .line 117
    const v0, 0xc3bb

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 118
    return-void
.end method

.method public static writeDataNetworkStatusOnRadioOff(Ljava/lang/String;I)V
    .locals 4
    .param p0, "dcState"    # Ljava/lang/String;
    .param p1, "enable"    # I

    .prologue
    .line 121
    const v0, 0xc3bc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 122
    return-void
.end method

.method public static writeDataStallRecoveryCleanup(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 165
    const v0, 0xc3c7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 166
    return-void
.end method

.method public static writeDataStallRecoveryGetDataCallList(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 161
    const v0, 0xc3c6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 162
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestart(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 173
    const v0, 0xc3c9

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 174
    return-void
.end method

.method public static writeDataStallRecoveryRadioRestartWithProp(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 177
    const v0, 0xc3ca

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 178
    return-void
.end method

.method public static writeDataStallRecoveryReregister(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 169
    const v0, 0xc3c8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 170
    return-void
.end method

.method public static writeGsmDataStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldstate"    # Ljava/lang/String;
    .param p1, "newstate"    # Ljava/lang/String;

    .prologue
    .line 141
    const v0, 0xc3c1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 142
    return-void
.end method

.method public static writeGsmRatSwitched(III)V
    .locals 4
    .param p0, "cid"    # I
    .param p1, "networkFrom"    # I
    .param p2, "networkTo"    # I

    .prologue
    .line 137
    const v0, 0xc3c0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 138
    return-void
.end method

.method public static writeGsmServiceStateChange(IIII)V
    .locals 4
    .param p0, "oldstate"    # I
    .param p1, "oldgprsstate"    # I
    .param p2, "newstate"    # I
    .param p3, "newgprsstate"    # I

    .prologue
    .line 145
    const v0, 0xc3c2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 146
    return-void
.end method

.method public static writePdpBadDnsAddress(Ljava/lang/String;)V
    .locals 1
    .param p0, "dnsAddress"    # Ljava/lang/String;

    .prologue
    .line 89
    const v0, 0xc3b4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 90
    return-void
.end method

.method public static writePdpContextReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 101
    const v0, 0xc3b7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 102
    return-void
.end method

.method public static writePdpNetworkDrop(II)V
    .locals 4
    .param p0, "cid"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 125
    const v0, 0xc3bd

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 126
    return-void
.end method

.method public static writePdpRadioReset(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 97
    const v0, 0xc3b6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 98
    return-void
.end method

.method public static writePdpRadioResetCountdownTriggered(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 93
    const v0, 0xc3b5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 94
    return-void
.end method

.method public static writePdpReregisterNetwork(I)V
    .locals 1
    .param p0, "outPacketCount"    # I

    .prologue
    .line 105
    const v0, 0xc3b8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 106
    return-void
.end method

.method public static writePdpSetupFail(III)V
    .locals 4
    .param p0, "cause"    # I
    .param p1, "cid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 109
    const v0, 0xc3b9

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 110
    return-void
.end method

.method public static writeSmsDeniedByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 181
    const v0, 0xc3cd

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 182
    return-void
.end method

.method public static writeSmsSentByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 185
    const v0, 0xc3d0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 186
    return-void
.end method
