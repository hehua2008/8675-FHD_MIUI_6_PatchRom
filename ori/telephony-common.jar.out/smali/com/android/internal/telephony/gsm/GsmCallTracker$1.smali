.class Lcom/android/internal/telephony/gsm/GsmCallTracker$1;
.super Landroid/os/Handler;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;->makeQueueLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1545
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1546
    .local v1, "completeMessage":Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CALL_QUEUE:handleMessage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1549
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->CALL_QUEUE_THREAD_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1580
    monitor-exit v6

    .line 1593
    .end local v1    # "completeMessage":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1552
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 1582
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const-string v7, "CALL_QUEUE:LOCK.wait()"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1584
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 1586
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->CALL_QUEUE_THREAD_LOCK:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1584
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1555
    .end local v4    # "i":I
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_1
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;

    move-object v2, v0

    .line 1556
    .local v2, "dialInfo":Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    iget v8, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    iget-object v9, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v10, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1558
    const/4 v2, 0x0

    .line 1559
    goto :goto_1

    .line 1561
    .end local v2    # "dialInfo":Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v7, p1, Landroid/os/Message;->arg1:I

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1589
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1590
    :catch_0
    move-exception v3

    .line 1591
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1565
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_3
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1568
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1571
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    goto :goto_1

    .line 1574
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->hold(Landroid/os/Message;)V

    goto :goto_1

    .line 1577
    .restart local v1    # "completeMessage":Ljava/lang/Object;
    :pswitch_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Landroid/os/Message;

    .end local v1    # "completeMessage":Ljava/lang/Object;
    invoke-interface {v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    goto :goto_1

    .line 1589
    .restart local v4    # "i":I
    :cond_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method
