.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive: action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;

    invoke-direct {v12, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$1;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;

    invoke-direct {v12, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1$2;->start()V

    goto :goto_0

    :cond_2
    const-string v12, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reconnect alarm. Previous state was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v12, "com.android.internal.telephony.data-restart-trysetup"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "Restart trySetup alarm"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v12, "com.android.internal.telephony.data-stall"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v12, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received  WifiManager.NETWORK_STATE_CHANGED_ACTION  Intent  wifi is connected ? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "WIFI_DISCONNECTED"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "wifi_state"

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    const/4 v3, 0x1

    .local v3, "enabled":Z
    :goto_2
    if-nez v3, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    :cond_9
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mIsWifiConnected="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "enabled":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    const-string v12, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v8

    .local v8, "phoneManager":Lcom/yulong/android/internal/telephony/PhoneModeManager;
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v12, "selectCdmaStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v12

    iget v12, v12, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_d

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCdmaNetIsSelected:Z

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v12, "selectGsmStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->convertPhoneIdToSlotId(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v12

    iget v12, v12, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_e

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGsmNetIsSelected:Z

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT_NET_FINISH: mCdmaNetIsSelected = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCdmaNetIsSelected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mGsmNetIsSelected = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGsmNetIsSelected:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT_NET_FINISH: PhoneModeManager.getPreferredPhoneId() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mDefaultDataNetwork = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDefaultDataNetwork:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mPhone.getPhoneId() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mphoneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isQualCommDSDX()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCdmaNetIsSelected:Z

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGsmNetIsSelected:Z

    if-nez v12, :cond_11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDsUser()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "SELECT_NET_FINISH: only phone one is set radio on, setDataSubscription"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "str":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v13, 0x42066

    invoke-static {v12, v13, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "callback":Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isLTESwitched()Z

    move-result v5

    .local v5, "isLteSw":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDefaultDataNetwork:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    const/4 v12, 0x1

    :goto_5
    if-ne v12, v5, :cond_10

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    :goto_6
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "sub":I
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12, v10, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(ILandroid/os/Message;)V

    .end local v2    # "callback":Landroid/os/Message;
    .end local v5    # "isLteSw":Z
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "sub":I
    :cond_c
    :goto_7
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/16 v14, 0x68

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_4

    .restart local v2    # "callback":Landroid/os/Message;
    .restart local v5    # "isLteSw":Z
    .restart local v9    # "str":Ljava/lang/String;
    :cond_f
    const/4 v12, 0x0

    goto :goto_5

    :cond_10
    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_6

    .end local v2    # "callback":Landroid/os/Message;
    .end local v5    # "isLteSw":Z
    .end local v9    # "str":Ljava/lang/String;
    :cond_11
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCdmaNetIsSelected:Z

    if-nez v12, :cond_14

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGsmNetIsSelected:Z

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_14

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDsUser()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_14

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "SELECT_NET_FINISH: only phone two is set radio on, setDataSubscription"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "str":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v13, 0x42066

    invoke-static {v12, v13, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "callback":Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isLTESwitched()Z

    move-result v5

    .restart local v5    # "isLteSw":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDefaultDataNetwork:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    const/4 v12, 0x1

    :goto_8
    if-ne v12, v5, :cond_13

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    :goto_9
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .restart local v10    # "sub":I
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12, v10, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(ILandroid/os/Message;)V

    goto :goto_7

    .end local v10    # "sub":I
    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    :cond_13
    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_9

    .end local v2    # "callback":Landroid/os/Message;
    .end local v5    # "isLteSw":Z
    .end local v9    # "str":Ljava/lang/String;
    :cond_14
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCdmaNetIsSelected:Z

    if-nez v12, :cond_15

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mGsmNetIsSelected:Z

    if-nez v12, :cond_15

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "SELECT_NET_FINISH: close two network, setDsUser to -1"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    goto/16 :goto_7

    :cond_15
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_18

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_18

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "SELECT_NET_FINISH: setDataSubscription PHONEID_ONE"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "str":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v13, 0x42066

    invoke-static {v12, v13, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "callback":Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isLTESwitched()Z

    move-result v5

    .restart local v5    # "isLteSw":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDefaultDataNetwork:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    const/4 v12, 0x1

    :goto_a
    if-ne v12, v5, :cond_17

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    :goto_b
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .restart local v10    # "sub":I
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12, v10, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_7

    .end local v10    # "sub":I
    :cond_16
    const/4 v12, 0x0

    goto :goto_a

    :cond_17
    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_b

    .end local v2    # "callback":Landroid/os/Message;
    .end local v5    # "isLteSw":Z
    .end local v9    # "str":Ljava/lang/String;
    :cond_18
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "SELECT_NET_FINISH: setDataSubscription PHONEID_TWO"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "str":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v13, 0x42066

    invoke-static {v12, v13, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "callback":Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->isLTESwitched()Z

    move-result v5

    .restart local v5    # "isLteSw":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDefaultDataNetwork:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    const/4 v12, 0x1

    :goto_c
    if-ne v12, v5, :cond_1a

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    :goto_d
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .restart local v10    # "sub":I
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12, v10, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_7

    .end local v10    # "sub":I
    :cond_19
    const/4 v12, 0x0

    goto :goto_c

    :cond_1a
    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_d

    .end local v2    # "callback":Landroid/os/Message;
    .end local v5    # "isLteSw":Z
    .end local v8    # "phoneManager":Lcom/yulong/android/internal/telephony/PhoneModeManager;
    .end local v9    # "str":Ljava/lang/String;
    :cond_1b
    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "isAirplaneModeOn":Z
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BroadcastReceiver: isAirplaneModeOn = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->airplanecount:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->airplanecount:I

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setCurrentDataNetworkInAirplaneMode(Lcom/android/internal/telephony/PhoneBase;)V

    :cond_1c
    sget v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->airplanecount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BroadcastReceiver: xinghainan isAirplaneModeOn = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleAirBrocast(Z)Z

    goto/16 :goto_0

    .end local v4    # "isAirplaneModeOn":Z
    :cond_1d
    const-string v12, "yulong.intent.action.ROAMING_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "BroadcastReceiver: ACTION_ROAMING_STATE_CHANGED"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v14, 0x42078

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1e
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .local v7, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v13, "ctnet"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v12, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->testDns:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v13, "start ctnet dns test"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->testDns:Z

    new-instance v11, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;)V

    .local v11, "testThread":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;->start()V

    goto/16 :goto_0

    .end local v7    # "networkinfo":Landroid/net/NetworkInfo;
    .end local v11    # "testThread":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$dnsThread;
    :cond_1f
    const-string v12, "yulong.intent.action.ACTION_LTE_SWITCH_FINISHED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDsUser(I)V

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPreferredApn(I)V

    goto/16 :goto_0
.end method
