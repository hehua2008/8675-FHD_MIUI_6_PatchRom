.class public Lcom/yulong/android/internal/telephony/SmsQueueManager;
.super Landroid/os/Handler;
.source "SmsQueueManager.java"


# static fields
.field private static final EVENT_SMS_QUEUE_MANAGE:I = 0xc8

.field private static final EVENT_TYPE_DELETE:I = 0x1

.field private static final EVENT_TYPE_NULL:I = -0x1

.field private static final EVENT_TYPE_READ:I = 0x2

.field private static final EVENT_TYPE_SEND:I = 0x3

.field private static final FOUR_SECOND:I = 0xfa0

.field private static final ICC_MAX_RETRY_NUM:I = 0x4

.field private static final ICC_RETRY_DELAY:I = 0x3

.field private static final IS_SEND_SMS_FLAG:I = 0x1

.field private static final NOT_IN_SERVICE_MAX_RETRY_COUNT:I = 0x5

.field private static final SIX_SECOND:I = 0x1770

.field private static final SMS_SEND_TIMEOUT_DSDS:I = 0x57e40

.field private static final SQM_PROCESS_INTERVAL_TIME_DSDS:I = 0x1770

.field private static final SQM_PROCESS_INTERVAL_TIME_PHONE1:I = 0x7d0

.field private static final SQM_PROCESS_INTERVAL_TIME_PHONE2:I = 0x7d0

.field private static final SQM_PROCESS_TIMOUEOUT:I = 0x3a980

.field private static final TWO_SECOND:I = 0x7d0


# instance fields
.field public final PROPERTIES_CDMA_SENDLOCK_STATE:Ljava/lang/String;

.field public final PROPERTIES_GSM_SENDLOCK_STATE:Ljava/lang/String;

.field private SQM_PROCESS_INTERVAL_TIME:I

.field protected TAG:Ljava/lang/String;

.field private bProcessing:Z

.field protected deleteSMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/IccIndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mContext:Landroid/content/Context;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field protected mSendResultReturnTimeoutIntent:Ljava/lang/String;

.field protected mSmsSendTimeoutIntent:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private notInServiceRef:I

.field private notInServiceRetryCount:I

.field private notInServiceTime:J

.field private processingEventType:I

.field protected readSMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/IccIndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field public smsSendLock:Z

.field public smsTrackerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/PhoneBase;Landroid/os/PowerManager$WakeLock;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    const-string v1, "SMSDispat"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    .line 70
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 99
    const-string v1, "com.android.internal.telephony.SMSDispatcher.PROCESS_TIMOUEOUT"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    .line 103
    const-string v1, "com.android.internal.telephony.SMSDispatcher.SEND_SMS_TIMOUEOUT"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    .line 121
    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 124
    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 126
    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 132
    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    .line 136
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    .line 139
    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 144
    const-string v1, "cdma.sendlock.state"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->PROPERTIES_CDMA_SENDLOCK_STATE:Ljava/lang/String;

    .line 145
    const-string v1, "gsm.sendlock.state"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->PROPERTIES_GSM_SENDLOCK_STATE:Ljava/lang/String;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    .line 244
    new-instance v1, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;-><init>(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setLogTag(Lcom/android/internal/telephony/PhoneBase;)V

    .line 165
    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 166
    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    .line 170
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: register mSendResultReturnTimeoutIntent alarm Receiver."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessIntervalTime()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/SmsQueueManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    return v0
.end method

.method static synthetic access$100(Lcom/yulong/android/internal/telephony/SmsQueueManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    return-void
.end method

.method private cancelProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 709
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "taskType"

    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 713
    .local v1, "processtimeoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 714
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: cancel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alarm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method private deleteSmsQueue()V
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process deleteSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 729
    .local v0, "index":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->deleteCardSmsbyIndex(I)V

    .line 730
    return-void
.end method

.method private initSmsQueueManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 562
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 564
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 565
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 566
    return-void
.end method

.method private isOtherPhoneSending()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, "smsWorkStatus":Z
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 550
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    .line 554
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 552
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    goto :goto_0
.end method

.method private markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "fillIn"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 839
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 842
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 845
    .local v0, "resultCode":I
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tracker.mref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v0    # "resultCode":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 853
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 854
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: SMS send failed complete. Broadcasting , oldmref = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mref = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v3, :cond_2

    .line 857
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 860
    :cond_2
    monitor-exit v2

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 847
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private readSmsQueue()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process readSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 738
    .local v0, "index":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSms(I)V

    .line 739
    return-void
.end method

.method private run()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method private sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tmpTracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 745
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 746
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 747
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher now process sendSmsQueue begin... , sendQueue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 754
    .local v0, "ss":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher sendRawPdu, sendpdu mref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0, v0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 771
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method private sendSmsQueueInDsds()V
    .locals 3

    .prologue
    .line 529
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 532
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->startSmsQueue()Z

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: SMSDispatcher EVENT_SMS_QUEUE_MANAGE end. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhone.getPhoneId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    return-void

    .line 534
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->startSmsQueue()Z

    goto :goto_0
.end method

.method private setLogTag(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 212
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    .line 213
    return-void
.end method

.method private setProcessIntervalTime()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 219
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 220
    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 226
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/16 v0, 0x1770

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 232
    :cond_0
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "SQM_PROCESS_INTERVAL_TIME = 50;"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v0, 0x32

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: SQM_PROCESS_INTERVAL_TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 222
    :cond_2
    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0
.end method

.method private setProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 664
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "taskType"

    iget v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string v4, "phoneId"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 670
    .local v1, "processtimeoutIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x57e40

    add-long v2, v4, v6

    .line 671
    .local v2, "triggerAtTime":J
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x3a980

    add-long v2, v4, v6

    .line 678
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 680
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alarm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x64

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x4650

    add-long v2, v4, v6

    goto :goto_0
.end method


# virtual methods
.method public addDeleteSmsList(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 426
    new-instance v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/yulong/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .line 428
    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: add to deleteSMSList index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 434
    .local v1, "tmpMessage":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 435
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void

    .line 430
    .end local v1    # "tmpMessage":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addReadSmsList(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 408
    new-instance v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/yulong/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .line 410
    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: add to ReadSmsList index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 416
    .local v1, "tmpMessage":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 417
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void

    .line 412
    .end local v1    # "tmpMessage":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 396
    .local v0, "tmpMessage":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 399
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    .line 400
    return-void

    .line 394
    .end local v0    # "tmpMessage":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancelProcessTimeoutAlarm()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public deleteIccSmsDone(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 480
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList is empty,retrun! deleteIccSmsDone index =  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 486
    monitor-exit v2

    .line 508
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    .line 492
    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList success  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    .line 496
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 497
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    .line 498
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .line 506
    .end local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 501
    .restart local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: deleteSMSList failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPhone.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "CP_COMM:dispose SmsQueueManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 311
    :pswitch_0
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher is processing task, return! delList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",readList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",trackerList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher EVENT_SMS_QUEUE_MANAGE begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    .line 325
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendSmsQueueInDsds()V

    .line 326
    monitor-exit v2

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->isOtherPhoneSending()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: Other phone is now sending sms, return! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    :cond_2
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 341
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    iput v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 348
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSmsQueue()V

    goto/16 :goto_0

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    const/4 v1, 0x2

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 357
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSmsQueue()V

    goto/16 :goto_0

    .line 361
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 365
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 366
    const/4 v1, 0x3

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 369
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_SMS_QUEUE_MANAGE send sms begin  msg.arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_5

    .line 371
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 375
    :cond_5
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 376
    .local v0, "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 378
    monitor-exit v2

    goto/16 :goto_0

    .line 380
    .end local v0    # "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public isSendTrackEmpty()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 514
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 517
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 518
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method notifySmsDeleteFailed()V
    .locals 2

    .prologue
    .line 790
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deleteSms Timeout.."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteIccSmsDone(Ljava/lang/Exception;)V

    .line 794
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method notifySmsReadFailed()V
    .locals 4

    .prologue
    .line 778
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 779
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ReadSms Timeout.."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v1, v2, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 781
    .local v1, "index":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readIccSmsDone(Ljava/lang/Exception;)V

    .line 783
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "fillIn"    # Landroid/content/Intent;

    .prologue
    .line 803
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 805
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 807
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v4, v6, :cond_1

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 812
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    if-lez v4, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    if-ge v4, v5, :cond_0

    .line 815
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    sub-int v2, v4, v5

    .line 816
    .local v2, "sendFailedNum":I
    const/4 v3, 0x0

    .line 817
    .local v3, "tmpSmsTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 819
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 820
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 821
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 830
    .end local v1    # "i":I
    .end local v2    # "sendFailedNum":I
    .end local v3    # "tmpSmsTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 810
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_1

    .line 812
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 823
    .restart local v1    # "i":I
    .restart local v2    # "sendFailedNum":I
    .restart local v3    # "tmpSmsTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v3, v0

    .line 824
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 825
    if-eqz v3, :cond_3

    .line 826
    invoke-direct {p0, v3, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 817
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public readIccSmsDone(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 444
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList is empty,retrun! readSmsDone  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 450
    monitor-exit v2

    .line 472
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    .line 456
    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList success "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    .line 460
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 461
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    .line 462
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .line 470
    .end local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 465
    .restart local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: readSMSList failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPhone.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeFristElement(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 960
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 965
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMS send complete. Broadcasting , oldmref = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mref = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v0, v2, :cond_0

    .line 969
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 972
    :cond_0
    monitor-exit v1

    .line 973
    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSmsSendState(Z)V
    .locals 4
    .param p1, "mSendlock"    # Z

    .prologue
    const/4 v3, 0x1

    .line 976
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsSendState: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smsSendLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 978
    if-ne p1, v3, :cond_1

    .line 979
    const-string v0, "cdma.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    const-string v0, "cdma.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 983
    if-ne p1, v3, :cond_3

    .line 984
    const-string v0, "gsm.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_3
    const-string v0, "gsm.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSmsQueue()V
    .locals 4

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmsQueue, SMSDispatcher is processing task, return! delList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",readList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trackerList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 699
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: startsendsms count =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPhone.getPhoneId()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startSmsQueueHandler(I)V
    .locals 4
    .param p1, "TaskDelay"    # I

    .prologue
    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 646
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 648
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 649
    .local v0, "tmpMessage":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 652
    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    .line 653
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    add-int/lit16 v2, p1, 0xc8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 658
    return-void
.end method

.method public startSmsQueueHanler()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v3, 0x0

    .line 572
    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 573
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 574
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 575
    .local v1, "tmpMessage":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 578
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 582
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPPhoneProperties.isDsdsEnabled() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 586
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 587
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .line 588
    .local v2, "total":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    .line 589
    .local v0, "index":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 594
    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v5, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v3, 0x0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 624
    .end local v0    # "index":I
    .end local v2    # "total":I
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQM_PROCESS_INTERVAL_TIME = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasMessages(EVENT_SMS_QUEUE_MANAGE) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->hasMessages(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    .line 635
    :cond_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    int-to-long v3, v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 638
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    add-int/lit16 v4, v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 639
    return-void

    .line 598
    .restart local v0    # "index":I
    .restart local v2    # "total":I
    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 599
    const/16 v3, 0x7d0

    :try_start_1
    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 624
    .end local v0    # "index":I
    .end local v2    # "total":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 600
    .restart local v0    # "index":I
    .restart local v2    # "total":I
    :cond_2
    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    .line 601
    const/16 v3, 0xfa0

    :try_start_2
    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 603
    :cond_3
    const/16 v3, 0x1770

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 609
    :cond_4
    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 611
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v5, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v3, 0x0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 614
    :cond_5
    const/16 v3, 0x1770

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 618
    .end local v0    # "index":I
    .end local v2    # "total":I
    :cond_6
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 619
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 621
    :cond_7
    const/16 v3, 0x1770

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "ss"    # I
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x1388

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 873
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 874
    const/16 v1, 0x64

    :try_start_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 875
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 876
    .local v0, "fillIn":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 877
    if-ne p1, v9, :cond_1

    .line 878
    const-string v1, "errorCode"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    const-string v1, "result"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 889
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: Sprint sendsms not in service mref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ServiceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    .line 892
    monitor-exit v2

    .line 954
    .end local v0    # "fillIn":Landroid/content/Intent;
    :goto_1
    return-void

    .line 882
    .restart local v0    # "fillIn":Landroid/content/Intent;
    :cond_1
    const-string v1, "errorCode"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    const-string v1, "result"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 894
    .end local v0    # "fillIn":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: already in notInService\ufffd\ufffd return.... , ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    goto :goto_1

    .line 903
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    .line 907
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 910
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-eq v1, v3, :cond_6

    .line 911
    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 912
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 913
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 915
    :cond_5
    monitor-exit v2

    goto :goto_1

    .line 917
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 919
    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    iget v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v2, :cond_a

    .line 920
    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_7

    .line 921
    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 922
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu Retry, notInServiceRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1

    .line 927
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 928
    .restart local v0    # "fillIn":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 929
    if-ne p1, v9, :cond_9

    .line 930
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string v1, "result"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    :cond_8
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 941
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu failed, pdu  mref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1

    .line 934
    :cond_9
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    const-string v1, "result"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 946
    .end local v0    # "fillIn":Landroid/content/Intent;
    :cond_a
    iget v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    .line 947
    iput v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 948
    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 949
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu Retry, notInServiceRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tracker.mref ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1
.end method
