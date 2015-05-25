.class abstract Lcom/android/internal/telephony/sip/SipPhoneBase;
.super Lcom/android/internal/telephony/PhoneBase;
.source "SipPhoneBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"


# instance fields
.field private mRingbackRegistrants:Landroid/os/RegistrantList;

.field private state:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 62
    const-string v1, "SipPhone"

    new-instance v4, Lcom/android/internal/telephony/sip/SipCommandInterface;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/sip/SipCommandInterface;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 63
    return-void
.end method

.method static migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 3
    .param p0, "to"    # Landroid/os/RegistrantList;
    .param p1, "from"    # Landroid/os/RegistrantList;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/RegistrantList;->removeCleared()V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {p0, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 417
    const-string v0, "SipPhone"

    const-string v1, "Error! This functionality is not implemented for SIP."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public canDial()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 202
    .local v1, "serviceState":I
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(): serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "disableCall":Ljava/lang/String;
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(): disableCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(): ringingCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(): foregndCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v3, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canDial(): backgndCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 343
    return-void
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 305
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 327
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 421
    const-string v0, "SipPhone"

    const-string v1, "Error! This functionality is not implemented for SIP."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 360
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "0"

    return-object v0
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 354
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 315
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 316
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x3

    return v0
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 115
    .local v0, "s":Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 116
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 225
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 226
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 228
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method migrateFrom(Lcom/android/internal/telephony/sip/SipPhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/sip/SipPhoneBase;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    .line 82
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 198
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 178
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 165
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 174
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 194
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 241
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    .prologue
    .line 401
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 351
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 237
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 310
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 331
    const-string v0, "SipPhone"

    const-string v1, "call waiting not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 425
    const-string v0, "SipPhone"

    const-string v1, "Error! This functionality is not implemented for SIP."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 380
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {p3, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 294
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 346
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 357
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 322
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 247
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {p3, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 301
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method

.method protected startRingbackTone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 104
    return-void
.end method

.method protected stopRingbackTone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 108
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 109
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 99
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 244
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method updatePhoneState()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 431
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_0

    .line 441
    const-string v1, "SipPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ^^^ new phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyPhoneStateChanged()V

    .line 444
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 437
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method
