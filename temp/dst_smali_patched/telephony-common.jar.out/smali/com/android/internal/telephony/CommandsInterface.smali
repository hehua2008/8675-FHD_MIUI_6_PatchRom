.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;,
        Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;,
        Lcom/android/internal/telephony/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final GSM_SMS_FAIL_CAUSE_USIM_APP_TOOLKIT_BUSY:I = 0xd4

.field public static final GSM_SMS_FAIL_CAUSE_USIM_DATA_DOWNLOAD_ERROR:I = 0xd5

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SIM_REFRESH_FILE_UPDATED:I = 0x0

.field public static final SIM_REFRESH_INIT:I = 0x1

.field public static final SIM_REFRESH_RESET:I = 0x2

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field public static final USSD_MODE_TERMINATED:I = 0x2


# virtual methods
.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract addInvalidSidToList(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract apnProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract clearMru(Landroid/os/Message;)V
.end method

.method public abstract clearPrlOrPlmn(Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract deactivateDefaultPDP(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract execRuimEsnOp(ZLandroid/os/Message;)V
.end method

.method public abstract exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract getATR(Landroid/os/Message;)V
.end method

.method public abstract getAllG2NeighborCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getAllG3NeighborCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getAllInvalidSid(Landroid/os/Message;)V
.end method

.method public abstract getAllLteNeighborCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getAudioRevision(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCardAdnParam1(Landroid/os/Message;)V
.end method

.method public abstract getCardAdnParam2(Landroid/os/Message;)V
.end method

.method public abstract getCardSmsInfo(ILandroid/os/Message;)V
.end method

.method public abstract getCardSmsParam(Landroid/os/Message;)V
.end method

.method public abstract getCardType(Landroid/os/Message;)V
.end method

.method public abstract getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getCdmaLineNumber(Landroid/os/Message;)V
.end method

.method public abstract getCdmaPrlVersion(Landroid/os/Message;)V
.end method

.method public abstract getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getCellID(Landroid/os/Message;)V
.end method

.method public abstract getCellInfoList(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getCurrentInvalidSid(Landroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getDataSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getDataTransStats(Landroid/os/Message;)V
.end method

.method public abstract getDefaultNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract getEmergencyNumberList(Landroid/os/Message;)V
.end method

.method public abstract getG2ServiceCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getG3ServiceCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getGsmLineNumber(Landroid/os/Message;)V
.end method

.method public abstract getGsmRFCalibration(Landroid/os/Message;)V
.end method

.method public abstract getHiddenMenuValue(ILandroid/os/Message;)V
.end method

.method public abstract getICCID(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Landroid/os/Message;)V
.end method

.method public abstract getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getLteServiceCellInfo(Landroid/os/Message;)V
.end method

.method public abstract getModemStatus(Landroid/os/Message;)V
.end method

.method public abstract getModemVersion(Landroid/os/Message;)V
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getPhoneSlot()I
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredPLMNList(Landroid/os/Message;)V
.end method

.method public abstract getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getPrlOrPlmnCapacity(Landroid/os/Message;)V
.end method

.method public abstract getPrlOrPlmnVersion(Landroid/os/Message;)V
.end method

.method public abstract getQosStatus(ILandroid/os/Message;)V
.end method

.method public abstract getRFCalibration(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRilVersion()I
.end method

.method public abstract getSMSCAddr(Landroid/os/Message;)V
.end method

.method public abstract getSN(Landroid/os/Message;)V
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getUimIMSI(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRadioTechnology(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupAll(Landroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract hold(Landroid/os/Message;)V
.end method

.method public abstract iccCloseChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V
.end method

.method public abstract modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
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
.end method

.method public abstract notifyBindSlots()V
.end method

.method public abstract notifySmsMemFull(ILandroid/os/Message;)V
.end method

.method public abstract notifySocketConnectedInternal()V
.end method

.method public abstract notifySwitchSlots()V
.end method

.method public abstract nvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract operateFactoryNumber(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryAttachProfile(Landroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryPINPUKValidCount(ILandroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaFwim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSecret(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGsmCpi(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModemExceptionState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkInfoDetect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNoValidNetwork(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNvRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOperateInvalidSidDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRUIMPBMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilNeedReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMPBMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccCancel(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccCompleteFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccCompleteSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccStart(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSupplyPUKComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForV4Pcscf(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForV6Pcscf(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVIAStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCodecOperation(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoDataCanSend(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoDisConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoDisconnectCuase(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoNewRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoReceiveStrFromRemote(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceMailRec(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract releaseQos(ILandroid/os/Message;)V
.end method

.method public abstract removeAllInvalidSid(Landroid/os/Message;)V
.end method

.method public abstract removeSelectedInvalidSid(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract requestEnterCmdMode(Landroid/os/Message;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSecrecyConnecting(Landroid/os/Message;)V
.end method

.method public abstract requestSetProvSession(IIILandroid/os/Message;)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract resumeQos(ILandroid/os/Message;)V
.end method

.method public abstract rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms(Lcom/android/internal/telephony/cdma/sms/CdmaSmsSendStruct;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendCodecBack(Landroid/os/Message;I)V
.end method

.method public abstract sendCommandFromEngmode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendGpsOneCommand(ILandroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BIILandroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendPowerState(ILandroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMSMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setCardPbInfo(ILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCardPowerState(ILandroid/os/Message;)V
.end method

.method public abstract setCardProfileDownload(Landroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscriptionSource(ILandroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(ILandroid/os/Message;)V
.end method

.method public abstract setCnmiMode(ILandroid/os/Message;)V
.end method

.method public abstract setDataSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setDefaultNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setExtendFromVIA(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setGpsLocNotify(ILandroid/os/Message;)V
.end method

.method public abstract setGpsNotifyResp(ILandroid/os/Message;)V
.end method

.method public abstract setGpsPPPDialResult(ILandroid/os/Message;)V
.end method

.method public abstract setGpsPPPDiscResult(ILandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setLteImei(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMBBMSAuthenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPhoneSlot(I)V
.end method

.method public abstract setPhoneSub(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;I)V
.end method

.method public abstract setPhoneType(I)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V
.end method

.method public abstract setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setRasConnectFunction(ILandroid/os/Message;)V
.end method

.method public abstract setRemoteMute(ZLandroid/os/Message;)V
.end method

.method public abstract setRilPowerOff(Landroid/os/Message;)V
.end method

.method public abstract setSecretMode(ZLandroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSounddevice(ILandroid/os/Message;)V
.end method

.method public abstract setSubscriptionMode(ILandroid/os/Message;)V
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setThreeWayCall(ILandroid/os/Message;)V
.end method

.method public abstract setUiccSubscription(IIIILandroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
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
.end method

.method public abstract sleepDataFirewall(ILandroid/os/Message;)V
.end method

.method public abstract spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract startModemCellTest(Landroid/os/Message;)V
.end method

.method public abstract startRecording(Landroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract stopModemCellTest(Landroid/os/Message;)V
.end method

.method public abstract stopRecording(Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract suspendQos(ILandroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract testUARTchannel(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract testingEmergencyCall()V
.end method

.method public abstract unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCdmaSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaFwim(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaModemReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSecret(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCellInfoList(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataCallListChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForGsmCpi(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLostCard(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModemExceptionState(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkInfoDetect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNoValidNetwork(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNvRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOperateInvaidSidDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRUIMPBMReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilNeedReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIMPBMReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccCancel(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccCompleteFail(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccCompleteSuccess(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccStart(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForV4Pcscf(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForV6Pcscf(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVIAStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCodecOperation(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoDataCanSend(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoDisConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoDisconnectCuase(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoReceiveStrFromRemote(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceMailRec(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSupplyPUKComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterVideoNewRing(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract updatePrlOrPlmn([BLandroid/os/Message;)V
.end method

.method public abstract vpAnswer(Landroid/os/Message;)Z
.end method

.method public abstract vpAnswerForVoice(Landroid/os/Message;)Z
.end method

.method public abstract vpCancel(Landroid/os/Message;)V
.end method

.method public abstract vpMakeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
.end method

.method public abstract vpReject(Landroid/os/Message;)V
.end method

.method public abstract vpSendUserNum(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract vpSetMicorphone(SLandroid/os/Message;)Z
.end method

.method public abstract writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToRuim(I[BLandroid/os/Message;)V
.end method

.method public abstract writeSmsToRuimEx(IILjava/lang/String;[BLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSimEx(II[B[BLjava/lang/String;Landroid/os/Message;)V
.end method
