.class Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftapStoppingState"
.end annotation


# instance fields
.field localIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->localIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Sending terminate command to hostapd"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$28400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->stopSupplicant()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20011

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$10204(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xb

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleHostapdConnectionLoss()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;)V

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WifiStateMachine.action.SOFTAP_CONNECT_NUMBER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->localIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->localIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Exception in stopAccessPoint()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_2

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleHostapdConnectionLoss()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;)V

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WifiStateMachine.action.SOFTAP_CONNECT_NUMBER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->localIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->localIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftapStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Exception in stopAccessPoint()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$28800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_1
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method
