.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3888
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3889
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3890
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3895
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_0

    .line 4004
    :cond_0
    :goto_0
    return-void

    .line 3897
    :sswitch_0
    const/4 v1, 0x0

    .line 3898
    .local v1, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 3899
    :try_start_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3901
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    .line 3904
    :cond_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3905
    if-eqz v1, :cond_0

    .line 3906
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NetTransition Wakelock for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " released by timeout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 3904
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 3911
    .end local v1    # "causedBy":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 3912
    .local v14, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v14}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_0

    .line 3916
    .end local v14    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_2
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 3917
    .local v8, "netType":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 3918
    .local v2, "condition":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v15, v8, v2}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;II)V

    goto :goto_0

    .line 3922
    .end local v2    # "condition":I
    .end local v8    # "netType":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 3923
    .restart local v8    # "netType":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 3924
    .local v11, "sequence":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v15, v8, v11}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3928
    .end local v8    # "netType":I
    .end local v11    # "sequence":I
    :sswitch_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 3929
    .local v10, "preference":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v15, v10}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 3933
    .end local v10    # "preference":I
    :sswitch_5
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v3, 0x1

    .line 3934
    .local v3, "enabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v15, v3}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 3933
    .end local v3    # "enabled":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 3938
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3942
    :sswitch_7
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v6, 0x1

    .line 3943
    .local v6, "met":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v15, v0, v6}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3942
    .end local v6    # "met":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 3947
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 3948
    .local v5, "intent":Landroid/content/Intent;
    const-string v15, "networkInfo"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 3949
    .local v4, "infoa":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v15

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getPhoneID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkType(I)I

    move-result v15

    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v16

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getPhoneID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualNetworkTypeName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 3951
    const-string v15, "networkInfo"

    invoke-virtual {v5, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3952
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3956
    .end local v4    # "infoa":Landroid/net/NetworkInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 3957
    .local v9, "networkType":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v3, 0x1

    .line 3958
    .restart local v3    # "enabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v15, v9, v3}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3957
    .end local v3    # "enabled":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 3962
    .end local v9    # "networkType":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 3963
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/net/NetworkInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3968
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    .line 3969
    .local v12, "tag":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-ne v15, v12, :cond_5

    .line 3970
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    check-cast v7, Landroid/net/MobileDataStateTracker;

    .line 3972
    .local v7, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v7, :cond_0

    .line 3973
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v15}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 3976
    .end local v7    # "mobileDst":Landroid/net/MobileDataStateTracker;
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " != tag:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3982
    .end local v12    # "tag":I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3986
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v15}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 3991
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v15}, Lcom/android/server/ConnectivityService;->onDefaultDataNetworkChanged()V

    goto/16 :goto_0

    .line 3997
    :sswitch_f
    const-string v15, "ConnectivityService"

    const-string v16, "EVENT_CW_DELAY_RECONNECT"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkStateTracker;

    .line 3999
    .local v13, "tracker":Landroid/net/NetworkStateTracker;
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto/16 :goto_0

    .line 3895
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x32 -> :sswitch_f
        0x33 -> :sswitch_e
    .end sparse-switch
.end method
