.class public Lcom/android/internal/telephony/CallManager$CmHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 2151
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2153
    :pswitch_0
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2157
    :pswitch_1
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2161
    :pswitch_2
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v1, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2163
    .local v1, "cTemp":Lcom/android/internal/telephony/Connection;
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2166
    .end local v1    # "cTemp":Lcom/android/internal/telephony/Connection;
    :pswitch_3
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2170
    :pswitch_4
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2173
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2177
    :pswitch_5
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2181
    :pswitch_6
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2185
    :pswitch_7
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2189
    :pswitch_8
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2193
    :pswitch_9
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2197
    :pswitch_a
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2201
    :pswitch_b
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2205
    :pswitch_c
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2209
    :pswitch_d
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2213
    :pswitch_e
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2217
    :pswitch_f
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2221
    :pswitch_10
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2225
    :pswitch_11
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2229
    :pswitch_12
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2233
    :pswitch_13
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2238
    :pswitch_14
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CALL_MODIFY)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2240
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2241
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    invoke-direct {v7, v8, v5, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2244
    :cond_1
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2253
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Registrant;

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .line 2254
    .local v3, "notifyMsg":Landroid/os/Message;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2255
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 2256
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2251
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2261
    .end local v2    # "i":I
    .end local v3    # "notifyMsg":Landroid/os/Message;
    :pswitch_16
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CALL_MODIFY_RESPONSE)"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2263
    .local v4, "res":Landroid/os/AsyncResult;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 2264
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    iget-object v7, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {v6, v8, v7, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2267
    :cond_2
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_MODIFY_CALL_RESPONSE AsyncResult res= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2151
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
