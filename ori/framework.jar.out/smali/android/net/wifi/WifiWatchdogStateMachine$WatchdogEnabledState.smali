.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 808
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 809
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 814
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 874
    :pswitch_0
    const/4 v3, 0x0

    .line 877
    :goto_0
    return v3

    .line 816
    :pswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v3, v4

    .line 877
    goto :goto_0

    .line 821
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 822
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 824
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network state change "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 826
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 827
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    :goto_2
    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 829
    sget-object v3, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    .line 852
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 827
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 831
    :pswitch_3
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "linkProperties"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 833
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 834
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    if-nez v3, :cond_4

    .line 835
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore, wifiinfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bssid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 838
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 841
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 845
    :pswitch_4
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->shouldCheckWalledGarden()Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 846
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 848
    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 858
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 859
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "newState"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    .line 861
    .local v2, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_0

    .line 862
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 863
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 868
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 869
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 814
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 829
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
