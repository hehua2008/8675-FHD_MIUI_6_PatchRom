.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 128
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 944
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 254
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 250
    return-void
.end method

.method public apnProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1077
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 327
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 68
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 61
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 64
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 450
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 445
    return-void
.end method

.method public clearMru(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1048
    return-void
.end method

.method public clearPrlOrPlmn(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1042
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 115
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 711
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 240
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 213
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 200
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 197
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 83
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 87
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1005
    return-void
.end method

.method public execRuimEsnOp(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "op"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 455
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 425
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 134
    return-void
.end method

.method public getATR(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1107
    return-void
.end method

.method public getAllG2NeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 919
    return-void
.end method

.method public getAllG3NeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 929
    return-void
.end method

.method public getAllLteNeighborCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 938
    return-void
.end method

.method public getAudioRevision(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 461
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 287
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 301
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 392
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 264
    return-void
.end method

.method public getCardAdnParam1(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 467
    return-void
.end method

.method public getCardAdnParam2(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 473
    return-void
.end method

.method public getCardSmsInfo(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 479
    return-void
.end method

.method public getCardSmsParam(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 484
    return-void
.end method

.method public getCardType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 489
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 416
    return-void
.end method

.method public getCdmaLineNumber(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 701
    return-void
.end method

.method public getCdmaPrlVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 494
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 716
    return-void
.end method

.method public getCellID(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 670
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1061
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 74
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 80
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 721
    return-void
.end method

.method public getDataTransStats(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 499
    return-void
.end method

.method public getDefaultNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 675
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 389
    return-void
.end method

.method public getEmergencyNumberList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 726
    return-void
.end method

.method public getG2ServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 914
    return-void
.end method

.method public getG3ServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 924
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 159
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 379
    return-void
.end method

.method public getGsmLineNumber(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 504
    return-void
.end method

.method public getGsmRFCalibration(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 509
    return-void
.end method

.method public getHiddenMenuValue(ILandroid/os/Message;)V
    .locals 0
    .param p1, "subRequest"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1089
    return-void
.end method

.method public getICCID(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 514
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 96
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 99
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 90
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 93
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 46
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 195
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 137
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 144
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 141
    return-void
.end method

.method public getLteServiceCellInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 933
    return-void
.end method

.method public getModemStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 519
    return-void
.end method

.method public getModemVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 988
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 150
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 361
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 284
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 162
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public getPhoneSlot()I
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 358
    return-void
.end method

.method public getPreferredPLMNList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 731
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 122
    return-void
.end method

.method public getPrlOrPlmnCapacity(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1030
    return-void
.end method

.method public getPrlOrPlmnVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1024
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 237
    return-void
.end method

.method public getRFCalibration(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 524
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 156
    return-void
.end method

.method public getSMSCAddr(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 529
    return-void
.end method

.method public getSN(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 893
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 153
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 367
    return-void
.end method

.method public getUimIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 736
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 741
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 746
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 352
    return-void
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 993
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 103
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 109
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 106
    return-void
.end method

.method public hold(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 534
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 982
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 970
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 258
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 261
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 976
    return-void
.end method

.method public invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 751
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 333
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 336
    return-void
.end method

.method public mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1083
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public notifyBindSlots()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public notifySmsMemFull(ILandroid/os/Message;)V
    .locals 0
    .param p1, "notifyType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 695
    return-void
.end method

.method public notifySocketConnectedInternal()V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public notifySwitchSlots()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nvitem"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1103
    return-void
.end method

.method public operateFactoryNumber(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "obtainMessage"    # Landroid/os/Message;

    .prologue
    .line 964
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 342
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 298
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 295
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 270
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 398
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 306
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 311
    return-void
.end method

.method public queryPINPUKValidCount(ILandroid/os/Message;)V
    .locals 0
    .param p1, "reqType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 539
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 407
    return-void
.end method

.method public registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 888
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 131
    return-void
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 225
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 373
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 376
    return-void
.end method

.method public requestEnterCmdMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 544
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 771
    return-void
.end method

.method public requestSecrecyConnecting(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 549
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 330
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 234
    return-void
.end method

.method public rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ioCode"    # I
    .param p2, "inStr1"    # Ljava/lang/String;
    .param p3, "inStr2"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 555
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 175
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 413
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 181
    return-void
.end method

.method public sendCodecBack(Landroid/os/Message;I)V
    .locals 0
    .param p1, "obtain"    # Landroid/os/Message;
    .param p2, "codec"    # I

    .prologue
    .line 846
    return-void
.end method

.method public sendCommandFromEngmode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strcmd"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 854
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 165
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 348
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 950
    return-void
.end method

.method public sendGpsOneCommand(ILandroid/os/Message;)V
    .locals 0
    .param p1, "icmd"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 680
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 191
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 776
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 186
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 781
    return-void
.end method

.method public sendPowerState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 560
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 178
    return-void
.end method

.method public sendSMSMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "bytesToHexString"    # Ljava/lang/String;
    .param p2, "bytesToHexString2"    # Ljava/lang/String;
    .param p3, "reply"    # Landroid/os/Message;

    .prologue
    .line 999
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 345
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 324
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 125
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 339
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 267
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 291
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 274
    return-void
.end method

.method public setCardPbInfo(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "tel"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 566
    return-void
.end method

.method public setCardPowerState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1018
    return-void
.end method

.method public setCardProfileDownload(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 571
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 422
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 419
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1055
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 401
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 404
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 787
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1067
    return-void
.end method

.method public setCnmiMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 576
    return-void
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sub"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 581
    return-void
.end method

.method public setDefaultNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 685
    return-void
.end method

.method public setExtendFromVIA(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "extend"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 899
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 316
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 321
    return-void
.end method

.method public setGpsLocNotify(ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 586
    return-void
.end method

.method public setGpsNotifyResp(ILandroid/os/Message;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 591
    return-void
.end method

.method public setGpsPPPDialResult(ILandroid/os/Message;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 596
    return-void
.end method

.method public setGpsPPPDiscResult(ILandroid/os/Message;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 601
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 385
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 382
    return-void
.end method

.method public setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "subRequest"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1096
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 1071
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 364
    return-void
.end method

.method public setLteImei(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "lteimei"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 882
    return-void
.end method

.method public setMBBMSAuthenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "inRand"    # Ljava/lang/String;
    .param p2, "inAutn"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 691
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 147
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 277
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 281
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 43
    return-void
.end method

.method public setPhoneSlot(I)V
    .locals 0
    .param p1, "phoneSlot"    # I

    .prologue
    .line 606
    return-void
.end method

.method public setPhoneSub(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;I)V
    .locals 0
    .param p1, "cardstate"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "index"    # I

    .prologue
    .line 611
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 395
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 355
    return-void
.end method

.method public setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "format"    # I
    .param p3, "oper"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "e_utranAct"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 793
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 119
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 243
    return-void
.end method

.method public setRasConnectFunction(ILandroid/os/Message;)V
    .locals 0
    .param p1, "func"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 616
    return-void
.end method

.method public setRemoteMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 859
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 798
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 370
    return-void
.end method

.method public setSounddevice(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sndDevice"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 622
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "subscriptionMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 627
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 246
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 410
    return-void
.end method

.method public setThreeWayCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 864
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 631
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 218
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "dialNumber"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 638
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "dialNumber"    # Ljava/lang/String;
    .param p8, "mru"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 647
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 210
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public sleepDataFirewall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 706
    return-void
.end method

.method public spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cmdstring"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 850
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 168
    return-void
.end method

.method public startModemCellTest(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 904
    return-void
.end method

.method public startRecording(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 870
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 171
    return-void
.end method

.method public stopModemCellTest(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 909
    return-void
.end method

.method public stopRecording(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 876
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 49
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 55
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 437
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 429
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 52
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 58
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 441
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 433
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 71
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 231
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 112
    return-void
.end method

.method public testUARTchannel(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "subpkg"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "portNo"    # I
    .param p4, "obtainMessage"    # Landroid/os/Message;

    .prologue
    .line 1012
    return-void
.end method

.method public updatePrlOrPlmn([BLandroid/os/Message;)V
    .locals 0
    .param p1, "baItemData"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1036
    return-void
.end method

.method public vpAnswer(Landroid/os/Message;)Z
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public vpAnswerForVoice(Landroid/os/Message;)Z
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public vpCancel(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 815
    return-void
.end method

.method public vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .param p1, "strTelphoneCode"    # Ljava/lang/String;
    .param p2, "anyonePath"    # Ljava/lang/String;
    .param p3, "remotPath"    # Ljava/lang/String;
    .param p4, "displayType"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public vpReject(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 828
    return-void
.end method

.method public vpSendUserNum(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cDigit"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 834
    return-void
.end method

.method public vpSetMicorphone(SLandroid/os/Message;)Z
    .locals 1
    .param p1, "iCommand"    # S
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 206
    return-void
.end method

.method public writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 653
    return-void
.end method

.method public writeSmsToRuimEx(IILjava/lang/String;[BLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "encoding"    # I
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "content"    # [B
    .param p5, "dateTime"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 659
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 203
    return-void
.end method

.method public writeSmsToSimEx(II[B[BLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "encoding"    # I
    .param p3, "telNumber"    # [B
    .param p4, "content"    # [B
    .param p5, "dateTime"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 665
    return-void
.end method
