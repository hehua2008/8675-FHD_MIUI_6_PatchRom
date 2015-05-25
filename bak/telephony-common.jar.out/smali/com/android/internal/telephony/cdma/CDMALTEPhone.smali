.class public Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "CDMALTEPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;,
        Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final DBG:Z = true


# instance fields
.field private final LOG_LTE_TAG:Ljava/lang/String;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 58
    const-string v0, "CDMALTEPhone"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->LOG_LTE_TAG:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 206
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 207
    const-string v3, "unexpected result from user object."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    .line 215
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 216
    const-string v3, "sending original message to recipient"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 217
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 218
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 224
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const-string v3, "failed to commit network selection preference"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSuspendDataByAnotherPhoneVoice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isQcDSDAofDSDX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    const-string v2, "isSuspendDataByAnotherPhoneVoice: current is DSDA mode"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isCdmaTech()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const-string v1, "isSuspendDataByAnotherPhoneVoice: current rat support concurrent in DSDA"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 409
    :goto_0
    return v0

    .line 396
    :cond_0
    const-string v0, "isSuspendDataByAnotherPhoneVoice: suspend data for other tech in DSDA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    move v0, v1

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isQcDSDSofDSDX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    const-string v0, "isSuspendDataByAnotherPhoneVoice: suspend data for other tech in DSDS mode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    move v0, v1

    .line 401
    goto :goto_0

    .line 403
    :cond_2
    const-string v1, "isSuspendDataByAnotherPhoneVoice: other mode"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    const-string v1, "isSuspendDataByAnotherPhoneVoice: current is Phone two, not possible for Yulong design"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isVoiceCallingOfAnotherPhone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 415
    const-string v2, "isVoiceCallingOfAnotherPhone: current is PHONEID_ONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 417
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInVoiceCall()Z

    move-result v1

    or-int/2addr v0, v1

    .line 421
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceCallingOfAnotherPhone: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 422
    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_1
    const-string v1, "isVoiceCallingOfAnotherPhone: not possible for Yulong Design"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 381
    const-string v0, "CDMALTEPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 117
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 119
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v1, :cond_0

    .line 123
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 174
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 175
    return-object v0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isQcDSDX()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 140
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 141
    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInVoiceCall()Z

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isVoiceCallingOfAnotherPhone()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isSuspendDataByAnotherPhoneVoice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 137
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState: psState = 1, data connection state is CONNECTED, converted to state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 144
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 147
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 149
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInVoiceCall()Z

    move-result v1

    if-ne v1, v3, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isVoiceCallingOfAnotherPhone()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->isSuspendDataByAnotherPhoneVoice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 161
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 154
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 155
    goto/16 :goto_0

    .line 163
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 165
    goto/16 :goto_0

    .line 169
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    const-string v1, ""

    .line 282
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 283
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v1

    .line 284
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 286
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId from cdma phone imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    .line 96
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 101
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 372
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 376
    const-string v0, "CDMALTEPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 6

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 364
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 338
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v0, 0x0

    .line 340
    .local v0, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .end local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 343
    .restart local v0    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v2, :cond_2

    .line 350
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 352
    .restart local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eq v3, v1, :cond_4

    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_3

    .line 354
    const-string v3, "Removing stale SIMRecords object."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 355
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 357
    :cond_3
    if-eqz v1, :cond_4

    .line 358
    const-string v3, "New SIMRecords found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 359
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 363
    :cond_4
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onUpdateIccAvailability()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 113
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 327
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 7
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 184
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;)V

    .line 185
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 190
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "s":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 198
    .end local v2    # "s":[Ljava/lang/String;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p1, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 429
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone$1;)V

    .line 430
    .local v1, "nsm":Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 431
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 432
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 435
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->LOG_TAG:Ljava/lang/String;

    const-string v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 440
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mIsManualSelectNW:Z

    .line 441
    return-void
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "fromMcc"    # Z

    .prologue
    .line 447
    if-eqz p3, :cond_0

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_0

    .line 260
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 261
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v1, "map":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "operatorNumeric":Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from UICC: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    const/4 v4, 0x1

    .line 274
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "Can\'t store current operator ret false"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 274
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 272
    :cond_0
    const-string v4, "updateCurrentCarrierInProvider mIccRecords == null ret false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
