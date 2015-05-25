.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4729
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4732
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$29900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4733
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTetherConnectNum:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4735
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->initHotspotClientsList()Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4736
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$27900()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 4737
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$27900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4738
    monitor-exit v1

    .line 4740
    :cond_0
    return-void

    .line 4738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 4789
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTetherConnectNum:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4790
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$27900()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 4791
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$27900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4792
    monitor-exit v1

    .line 4793
    return-void

    .line 4792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 4744
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v3, v2

    .line 4784
    :cond_0
    :goto_0
    return v3

    .line 4746
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4747
    .local v1, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4748
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Tethering reports wifi as untethered!, shut down soft Ap"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$30100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4749
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v6, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4750
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v6, v3}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 4754
    .end local v1    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Untethering before stopping AP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$30200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4755
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v4, 0xa

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4756
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$30300(Landroid/net/wifi/WifiStateMachine;)V

    .line 4757
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$30400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$30500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4759
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$30600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 4766
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "TetheredState cmd block client"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/net/wifi/WifiStateMachine;->access$30700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4767
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/HotspotClient;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->BlockClientNative(Landroid/net/wifi/HotspotClient;I)Z
    invoke-static {v5, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/HotspotClient;I)Z

    move-result v0

    .line 4768
    .local v0, "ok":Z
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v6, v2}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 4772
    .end local v0    # "ok":Z
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "TetheredState cmd unblock client"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/net/wifi/WifiStateMachine;->access$30800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4773
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/HotspotClient;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    # invokes: Landroid/net/wifi/WifiStateMachine;->unBlockClientNative(Landroid/net/wifi/HotspotClient;I)Z
    invoke-static {v5, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/HotspotClient;I)Z

    move-result v0

    .line 4774
    .restart local v0    # "ok":Z
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4779
    .end local v0    # "ok":Z
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Softap monitor is stopped"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$30900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4744
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x2008f -> :sswitch_2
        0x20090 -> :sswitch_3
        0x24002 -> :sswitch_4
    .end sparse-switch
.end method
