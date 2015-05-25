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

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v1, "SMSDispat"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    const-string v1, "com.android.internal.telephony.SMSDispatcher.PROCESS_TIMOUEOUT"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    const-string v1, "com.android.internal.telephony.SMSDispatcher.SEND_SMS_TIMOUEOUT"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    const-string v1, "cdma.sendlock.state"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->PROPERTIES_CDMA_SENDLOCK_STATE:Ljava/lang/String;

    const-string v1, "gsm.sendlock.state"

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->PROPERTIES_GSM_SENDLOCK_STATE:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    new-instance v1, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager$1;-><init>(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setLogTag(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object p2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: register mSendResultReturnTimeoutIntent alarm Receiver."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessIntervalTime()V

    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/SmsQueueManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    return v0
.end method

.method static synthetic access$100(Lcom/yulong/android/internal/telephony/SmsQueueManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/SmsQueueManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/SmsQueueManager;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    return-void
.end method

.method private cancelProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "taskType"

    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, "processtimeoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

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

    return-void
.end method

.method private deleteSmsQueue()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process deleteSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .local v0, "index":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->deleteCardSmsbyIndex(I)V

    return-void
.end method

.method private initSmsQueueManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    return-void
.end method

.method private isOtherPhoneSending()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "smsWorkStatus":Z
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

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

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

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

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "resultCode":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private readSmsQueue()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process readSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .local v0, "index":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSms(I)V

    return-void
.end method

.method private run()V
    .locals 0

    .prologue
    return-void
.end method

.method private sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .param p1, "tmpTracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

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

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_0
    return-void

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
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->startSmsQueue()Z

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

    :cond_0
    return-void

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
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

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

    return-void
.end method

.method private setProcessIntervalTime()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1770

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "SQM_PROCESS_INTERVAL_TIME = 50;"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x32

    iput v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

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

    return-void

    :cond_2
    iput v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0
.end method

.method private setProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "taskType"

    iget v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "phoneId"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, "processtimeoutIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x57e40

    add-long v2, v4, v6

    .local v2, "triggerAtTime":J
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x3a980

    add-long v2, v4, v6

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

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

    return-void

    :cond_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x64

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    if-ne v4, v5, :cond_0

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
    new-instance v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/yulong/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "tmpMessage":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    return-void

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
    new-instance v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/yulong/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "tmpMessage":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    return-void

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
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "tmpMessage":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessage(Landroid/os/Message;)Z

    return-void

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
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    return-void
.end method

.method public deleteIccSmsDone(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList is empty,retrun! deleteIccSmsDone index =  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList success  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .end local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "CP_COMM:dispose SmsQueueManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v1, :cond_0

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

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher EVENT_SMS_QUEUE_MANAGE begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendSmsQueueInDsds()V

    monitor-exit v2

    goto :goto_0

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

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

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: Other phone is now sending sms, return! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iput v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSmsQueue()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSmsQueue()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x3

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->processingEventType:I

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

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v0, "tempTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    monitor-exit v2

    goto/16 :goto_0

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

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public isSendTrackEmpty()Ljava/lang/Boolean;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

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
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deleteSms Timeout.."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteIccSmsDone(Ljava/lang/Exception;)V

    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method notifySmsReadFailed()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ReadSms Timeout.."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .local v0, "exception":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    iget v1, v2, Lcom/yulong/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .local v1, "index":I
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readIccSmsDone(Ljava/lang/Exception;)V

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
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

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

    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    if-lez v4, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    if-ge v4, v5, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    sub-int v2, v4, v5

    .local v2, "sendFailedNum":I
    const/4 v3, 0x0

    .local v3, "tmpSmsTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "i":I
    .end local v2    # "sendFailedNum":I
    .end local v3    # "tmpSmsTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

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

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    invoke-direct {p0, v3, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList is empty,retrun! readSmsDone  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;

    .local v0, "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList success "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    iget v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/IccIndexEntity;->retryCount:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .end local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "tmpEntity":Lcom/yulong/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v0, v3, :cond_2

    if-ne p1, v3, :cond_1

    const-string v0, "cdma.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cdma.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v3, :cond_3

    const-string v0, "gsm.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "gsm.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSmsQueue()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v0, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

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
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "tmpMessage":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    add-int/lit16 v2, p1, 0xc8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public startSmsQueueHanler()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "tmpMessage":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

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

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v2, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .local v2, "total":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v5, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .end local v0    # "index":I
    .end local v2    # "total":I
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeMessages(I)V

    :cond_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    int-to-long v3, v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v4, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    add-int/lit16 v4, v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    .restart local v0    # "index":I
    .restart local v2    # "total":I
    :cond_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    const/16 v3, 0x7d0

    :try_start_1
    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .end local v0    # "index":I
    .end local v2    # "total":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0    # "index":I
    .restart local v2    # "total":I
    :cond_2
    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    const/16 v3, 0xfa0

    :try_start_2
    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    :cond_3
    const/16 v3, 0x1770

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v5, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1770

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .end local v0    # "index":I
    .end local v2    # "total":I
    :cond_6
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x7d0

    iput v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

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

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    const/16 v1, 0x64

    :try_start_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    if-ne v1, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "fillIn":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    if-ne p1, v9, :cond_1

    const-string v1, "errorCode"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

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

    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    monitor-exit v2

    .end local v0    # "fillIn":Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v0    # "fillIn":Landroid/content/Intent;
    :cond_1
    const-string v1, "errorCode"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

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

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

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

    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    :cond_5
    monitor-exit v2

    goto :goto_1

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

    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    iget v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_7

    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

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

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0    # "fillIn":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    if-ne p1, v9, :cond_9

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

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

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .end local v0    # "fillIn":Landroid/content/Intent;
    :cond_a
    iget v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    iget v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

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

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_1
.end method
