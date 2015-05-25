.class Lcom/yulong/android/internal/telephony/SmsQueueManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/SmsQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x7

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: mProcessTimeoutReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v6, "CP_COMM: receive task_process_timeout intent,mark processing task failed."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "taskType"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 257
    const-string v5, "phoneId"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 259
    .local v3, "tmpPhoneId":I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 303
    .end local v3    # "tmpPhoneId":I
    :cond_1
    :goto_0
    return-void

    .line 263
    .restart local v3    # "tmpPhoneId":I
    :cond_2
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    # getter for: Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->access$000(Lcom/yulong/android/internal/telephony/SmsQueueManager;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 301
    :goto_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    # invokes: Lcom/yulong/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->access$200(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsDeleteFailed()V

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v5}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsReadFailed()V

    goto :goto_1

    .line 272
    :pswitch_2
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v6, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 273
    :try_start_0
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 274
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 275
    .local v4, "tmpTrack":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v1, -0x1

    .line 276
    .local v1, "error":I
    const/16 v5, 0x64

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 277
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimeoutRetry:I

    const/4 v7, 0x1

    if-ge v5, v7, :cond_3

    .line 278
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimeoutRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimeoutRetry:I

    .line 279
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    # invokes: Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V
    invoke-static {v5, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->access$100(Lcom/yulong/android/internal/telephony/SmsQueueManager;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    .line 281
    monitor-exit v6

    goto :goto_0

    .line 296
    .end local v1    # "error":I
    .end local v4    # "tmpTrack":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 283
    .restart local v1    # "error":I
    .restart local v4    # "tmpTrack":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v1, 0x7

    .line 287
    :cond_4
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v2, "fillIn":Landroid/content/Intent;
    if-ne v1, v8, :cond_5

    .line 289
    const-string v5, "errorCode"

    const/4 v7, 0x7

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v5, "result"

    const/4 v7, 0x7

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    :cond_5
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v5, v4, v2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 293
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: mark send task timeout failed,tmpTrack.mref = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v1    # "error":I
    .end local v2    # "fillIn":Landroid/content/Intent;
    .end local v4    # "tmpTrack":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
