.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2496
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2497
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2498
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v7, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z

    .line 2499
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIntentReceiver mIsScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextRegStatePoll()V
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 2501
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 2548
    :cond_0
    :goto_0
    return-void

    .line 2502
    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2503
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v8, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z

    .line 2504
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIntentReceiver mIsScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2506
    :cond_2
    const-string v4, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2508
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2513
    const-string v4, "PHONEID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2514
    .local v2, "phoneid":I
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2515
    .local v3, "type":I
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTIVE_OR_DEACTIVE_CARD phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mphoneid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2518
    if-ne v3, v7, :cond_3

    .line 2520
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2521
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x31

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2522
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2523
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput v7, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IsActive:I

    goto/16 :goto_0

    .line 2526
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2527
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x32

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2528
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2529
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput v8, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IsActive:I

    goto/16 :goto_0

    .line 2532
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "phoneid":I
    .end local v3    # "type":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2533
    const-string v4, "CdmaSST"

    const-string v5, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v7, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isLanguageChanged:Z

    .line 2535
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 2536
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yulong.intent.action.ACTION_TDD_DIALOG_CANCEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2538
    const-string v4, "CdmaSST"

    const-string v5, "ACTION_TDD_DIALOG_CANCEL"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v8, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsTDDOnlyNotified:Z

    .line 2540
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    .line 2541
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v8, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->showSignalSmoothTag:Z

    .line 2542
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x41

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    .line 2543
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2544
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLockforCheckNetWork:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2546
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0
.end method
