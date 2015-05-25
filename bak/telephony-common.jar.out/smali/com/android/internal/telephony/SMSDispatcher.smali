.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;,
        Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CDMA_SMS_INVALID_SUBS:I = 0x26

.field static final DBG:Z = true

.field private static final DEFAULT_CMCC_SMS_DISPATCH_TIMOUEOUT:I = 0xa4cb800

.field private static DEFAULT_SMS_DISPATCH_TIMOUEOUT:I = 0x0

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x67

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_DISPATCH_MULTIPART_SMS_TIMEOUT:I = 0x6c

.field protected static final EVENT_ICC_FULL:I = 0x65

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0x428

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field protected static final EVENT_POST_ALERT:I = 0x66

.field protected static final EVENT_PROCESS_MULTIPART_SMS:I = 0x6d

.field protected static final EVENT_PROCESS_MULTIPART_SMS_DISPLAY:I = 0x6f

.field protected static final EVENT_RADIO_ON:I = 0x69

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x68

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:I = 0x6e

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final EVENT_VOICE_MAIL_RECEIVED:I = 0x6b

.field protected static final GENERIC_NEW_SMS:I = 0x0

.field private static final GSM_SMS_INVALID_SUBS:I = 0x1c

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I = 0x4

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final MULTI_FRAGMENT_KEEP_TIMEOUT:I = 0x2932e00

.field private static final NEW_CDMA_SMS:I = 0x1

.field private static final NEW_GSM_SMS:I = 0x2

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PREF_REF_NUM:Ljava/lang/String; = "ref_num"

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field protected static final RAW_PROJECTION:[Ljava/lang/String;

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static SEGMENT_DISPLAY_INTERVAL:I = 0x0

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field public static final SEND_RETRY_DELAY:I = 0x1388

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field protected static final WAP_PUSH_SMS:I = 0x1

.field private static mObjeCheckTimeoutLock:Ljava/lang/Object;

.field private static mObjeProcessTimeoutLock:Ljava/lang/Object;

.field protected static mRemainingMessages:I

.field private static sConcatenatedRef:I

.field private static sConcatenatedRef2:I

.field protected static smsref:I


# instance fields
.field protected ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

.field protected INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

.field protected INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

.field protected INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

.field private final MAX_SMS_CONT:I

.field SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

.field protected TAG:Ljava/lang/String;

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected longSmsTimeoutIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

.field protected mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field mManagerThread:Landroid/os/HandlerThread;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mRawUri:Landroid/net/Uri;

.field protected mReportMemoryStatusPending:Z

.field protected final mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field protected mSMS_COUTER:I

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected mStartUpCheckLongSmsTimeoutIntent:Landroid/app/PendingIntent;

.field protected mStorageAvailable:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field public smsResultLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    const v0, 0x1b7740

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    .line 132
    const/16 v0, 0x4e20

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->SEGMENT_DISPLAY_INTERVAL:I

    .line 147
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v2

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 250
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "reference_number"

    aput-object v1, v0, v2

    const-string v1, "count"

    aput-object v1, v0, v4

    const-string v1, "sequence"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 313
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 315
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    .line 352
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 358
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mObjeCheckTimeoutLock:Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mObjeProcessTimeoutLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/16 v8, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 442
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    const-string v2, "SMSDispatcher"

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    .line 166
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    .line 167
    iput v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SMS_CONT:I

    .line 169
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    const-string v2, "com.android.internal.telephony.SMSDispatcher.DISPATCH_TIMOUEOUT"

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 175
    const-string v2, "com.android.internal.telephony.SMSDispatcher.DISPATCH_DISPLAY_TIMOUEOUT"

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    .line 177
    const-string v2, "com.android.internal.telephony.SMSDispatcher.START_UP_CHECK_MULTIPART_SMS_TIMEOUT"

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 181
    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->longSmsTimeoutIntent:Landroid/app/PendingIntent;

    .line 270
    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .line 271
    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    .line 272
    iput-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStartUpCheckLongSmsTimeoutIntent:Landroid/app/PendingIntent;

    .line 292
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw"

    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 344
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 345
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 348
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 355
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->smsResultLock:Z

    .line 389
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2196
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2888
    new-array v2, v8, [Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    .line 443
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 444
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v2, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 445
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 447
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 448
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 449
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 451
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sms_short_code_rule"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 455
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 457
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111003a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 459
    const-string v2, "telephony.sms.receive"

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 461
    const-string v2, "telephony.sms.send"

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsReceiveDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsSendDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SmsQueueManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mManagerThread:Landroid/os/HandlerThread;

    .line 470
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 472
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v2, v1, p1, v3}, Lcom/yulong/android/internal/telephony/SmsQueueManager;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/PhoneBase;Landroid/os/PowerManager$WakeLock;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    .line 474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->initVar(Lcom/android/internal/telephony/PhoneBase;)V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->registerTimeoutReceiver()V

    .line 486
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 487
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x65

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 488
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x69

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x6b

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceMailRec(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 495
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    new-instance v2, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    .line 503
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->start()V

    .line 506
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_0
    move v2, v4

    .line 459
    goto/16 :goto_0

    :cond_1
    move v3, v4

    .line 461
    goto/16 :goto_1
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mObjeCheckTimeoutLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mObjeProcessTimeoutLock:Ljava/lang/Object;

    return-object v0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 780
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 782
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x5

    .line 1836
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_1

    .line 1839
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1840
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1848
    :goto_1
    return v1

    .line 1842
    :catch_0
    move-exception v0

    .line 1843
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1847
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 1848
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1857
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1859
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1860
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1863
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "appPackage":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1861
    .restart local p1    # "appPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1862
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIccFull()V
    .locals 5

    .prologue
    .line 2329
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2331
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2333
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SIM_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2340
    const-string v2, "slotIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSlotId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2341
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2342
    return-void
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    .line 1043
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1044
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initVar(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3355
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCmccTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    const v0, 0xa4cb800

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    .line 3366
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3367
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->readSavedRefNum(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 3372
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->setLogTag(Lcom/android/internal/telephony/PhoneBase;)V

    .line 3376
    return-void

    .line 3360
    :cond_0
    const v0, 0x2932e00

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    goto :goto_0

    .line 3369
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->readSavedRefNum(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    goto :goto_1
.end method

.method private isCmccInNetMode()Z
    .locals 2

    .prologue
    .line 2396
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "CHINA MOBILE test mode, send SMS failed will not retry! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const/4 v0, 0x1

    .line 2402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmccTestMode()Z
    .locals 2

    .prologue
    .line 2413
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "CMCC operator and run mode is net mode, timeout sms fragment will not dispatch!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const/4 v0, 0x1

    .line 2419
    :goto_0
    return v0

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "current operator is not CMCC Operator."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRetry(Landroid/os/AsyncResult;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2355
    const/4 v3, 0x0

    .line 2356
    .local v3, "needRetry":Z
    const/4 v2, 0x0

    .line 2358
    .local v2, "isInvalidSubs":Z
    const/4 v0, 0x0

    .line 2360
    .local v0, "errorCode":I
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 2361
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v0, v4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 2368
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 2369
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    move v2, v5

    .line 2374
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedRetry errorCode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", tracker.mRetryCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", getCommandError= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v1, 0x4

    .line 2378
    .local v1, "iMaxRetryCount":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    .line 2379
    const/4 v1, 0x3

    .line 2381
    :cond_1
    if-nez v2, :cond_2

    iget v4, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v4, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCmccInNetMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v5, :cond_2

    .line 2384
    const/4 v3, 0x1

    .line 2387
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedRetry needRetry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    return v3

    .end local v1    # "iMaxRetryCount":I
    :cond_3
    move v2, v6

    .line 2369
    goto :goto_0

    .line 2371
    :cond_4
    const/16 v4, 0x1c

    if-ne v0, v4, :cond_5

    move v2, v5

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2040
    if-nez p1, :cond_1

    .line 2041
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2043
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2045
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2049
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2051
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_REJECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2053
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2054
    const-string v2, "slotIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSlotId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2055
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2057
    .end local v1    # "intentDual":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2058
    return-void
.end method

.method private readSavedRefNum(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 3749
    const/4 v2, 0x0

    .line 3752
    .local v2, "retNum":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3753
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ref_num"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3757
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read retNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    return v2

    .line 3754
    :catch_0
    move-exception v0

    .line 3755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerTimeoutReceiver()V
    .locals 12

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    .line 3382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 3384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    .line 3386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 3390
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3391
    .local v3, "rawFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3392
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3393
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3394
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3399
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3401
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bootcomplete init alarm current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3403
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .line 3405
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3406
    .local v2, "intentdisplay":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    .line 3408
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->INTENT_START_UP_CHECK_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3409
    .local v1, "intentStart":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStartUpCheckLongSmsTimeoutIntent:Landroid/app/PendingIntent;

    .line 3412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long v4, v6, v8

    .line 3414
    .local v4, "timeout":J
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStartUpCheckLongSmsTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3417
    return-void
.end method

.method private saveRefNum(II)V
    .locals 5
    .param p1, "refNum"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 3735
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3736
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3737
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save refNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ref_num"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3740
    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1995
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1997
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1998
    .local v1, "destinationAddress":Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2000
    .local v2, "scAddress":Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2001
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2002
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2005
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 2006
    .local v10, "ss":I
    if-eqz v10, :cond_1

    .line 2007
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 2008
    const/4 v9, 0x0

    .line 2009
    .local v9, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 2010
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2014
    .restart local v9    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0, v10, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2007
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v9    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 2019
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2020
    :cond_2
    return-void
.end method

.method private setLogTag(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3425
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 3426
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 3428
    .local v0, "commType":I
    packed-switch v0, :pswitch_data_0

    .line 3442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_NO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    .line 3445
    :goto_0
    return-void

    .line 3430
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 3433
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 3436
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 3439
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 3428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method public addDeleteSmsList(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->addDeleteSmsList(I)V

    .line 3707
    return-void
.end method

.method public addReadSmsList(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->addReadSmsList(I)V

    .line 3699
    return-void
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 1765
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return v6

    .line 1769
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1770
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1771
    .local v5, "smsCategory":I
    if-eq v3, v6, :cond_2

    if-ne v3, v11, :cond_5

    .line 1772
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1773
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 1774
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1778
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1780
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_5
    if-eq v3, v10, :cond_6

    if-ne v3, v11, :cond_9

    .line 1781
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1782
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v10, :cond_8

    .line 1783
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1787
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1791
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    if-eq v5, v10, :cond_0

    .line 1798
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1800
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_a

    .line 1802
    const/4 v2, 0x1

    .line 1805
    :cond_a
    packed-switch v2, :pswitch_data_0

    .line 1818
    if-ne v5, v11, :cond_b

    .line 1819
    const/16 v0, 0x8

    .line 1823
    .local v0, "event":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1824
    goto :goto_0

    .line 1807
    .end local v0    # "event":I
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v8, "User approved this app to send to premium SMS"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1811
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v8, "User denied this app from sending to premium SMS"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1813
    goto/16 :goto_0

    .line 1821
    :cond_b
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_1

    .line 1805
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteIccSmsDone(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 3723
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0, p1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->deleteIccSmsDone(Ljava/lang/Exception;)V

    .line 3724
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    const/4 v7, 0x0

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 799
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 817
    return-void
.end method

.method protected dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    .line 2245
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2248
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Dispatching emergency SMS CB"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2257
    :goto_0
    return-void

    .line 2252
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2253
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2254
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Dispatching SMS CB"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected dispatchBroadcastPdus([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 3682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3683
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3686
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3689
    return-void
.end method

.method protected dispatchCMASPdus([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 3768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CMAS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3769
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3770
    const-string v1, "phoneIdKey"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3771
    const-string v1, "slotIdKey"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSlotId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3772
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3773
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3774
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3775
    return-void
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchMultipartMessageDisplayTimeout()V
    .locals 49

    .prologue
    .line 2467
    const/4 v13, 0x0

    .line 2468
    .local v13, "cursor":Landroid/database/Cursor;
    const-wide v37, 0x7fffffffffffffffL

    .line 2469
    .local v37, "lDelayTime":J
    const-wide v21, 0x7fffffffffffffffL

    .line 2470
    .local v21, "displayDelayTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsFamilyValue()I

    move-result v28

    .line 2471
    .local v28, "familyVal":I
    const/4 v3, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_1

    .line 2472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "family not supported, return"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_0
    :goto_0
    return-void

    .line 2475
    :cond_1
    new-instance v46, Ljava/lang/StringBuffer;

    const-string v3, "(network_type="

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v46, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2477
    const-string v3, " OR network_type="

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2479
    const-string v3, ") AND count>0"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: dispatchMultipartMessageDisplayTimeout() begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2483
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 2484
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: dispatchMultipartMessageDisplayTimeout() cursor == 0;"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2684
    if-eqz v13, :cond_3

    .line 2685
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2687
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v21, v3

    if-eqz v3, :cond_4

    .line 2690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v44, v3, v21

    .line 2691
    .local v44, "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next display timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v44

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2694
    .end local v44    # "timeout":J
    :cond_4
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v37, v3

    if-eqz v3, :cond_0

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v44, v3, v37

    .line 2696
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next store timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    :goto_1
    move-wide/from16 v0, v44

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2487
    .end local v44    # "timeout":J
    :cond_5
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2488
    .local v9, "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2489
    .local v19, "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    .line 2490
    .local v35, "lCurrentTime":J
    const-wide/16 v17, 0x0

    .line 2491
    .local v17, "delay":J
    :cond_6
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2492
    const-string v3, "date"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2494
    .local v14, "date":J
    const-string v3, "sequence"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 2495
    .local v41, "seqNum":I
    const-string v3, "pdu"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 2496
    .local v40, "pduColumn":I
    const-string v3, "destination_port"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2497
    .local v20, "destport":I
    const-string v3, "network_type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 2499
    .local v39, "networkType":I
    new-instance v29, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2500
    .local v29, "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    const-string v3, "reference_number"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    .line 2501
    const-string v3, "address"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    .line 2502
    const-string v3, "count"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    .line 2504
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x5

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->SEGMENT_DISPLAY_INTERVAL:I

    mul-int v23, v3, v4

    .line 2505
    .local v23, "displayInterval":I
    sub-long v33, v35, v14

    .line 2506
    .local v33, "lCmpTime":J
    move/from16 v0, v23

    int-to-long v3, v0

    sub-long v17, v3, v33

    .line 2507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", seqNum ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lCmpTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    move-object/from16 v0, v29

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alNeedDispatchRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    move-object/from16 v0, v29

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    .line 2512
    .local v42, "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v41, -0x1

    move/from16 v0, v40

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 2513
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    .line 2514
    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    .end local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :cond_7
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    .line 2535
    .local v43, "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    .line 2536
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2681
    .end local v9    # "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v14    # "date":J
    .end local v17    # "delay":J
    .end local v19    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v20    # "destport":I
    .end local v23    # "displayInterval":I
    .end local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v33    # "lCmpTime":J
    .end local v35    # "lCurrentTime":J
    .end local v39    # "networkType":I
    .end local v40    # "pduColumn":I
    .end local v41    # "seqNum":I
    .end local v43    # "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    :catch_0
    move-exception v24

    .line 2682
    .local v24, "e":Landroid/database/SQLException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: Can\'t access multipart SMS database"

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2684
    if-eqz v13, :cond_8

    .line 2685
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2687
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v21, v3

    if-eqz v3, :cond_9

    .line 2690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v44, v3, v21

    .line 2691
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next display timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v44

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2694
    .end local v44    # "timeout":J
    :cond_9
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v37, v3

    if-eqz v3, :cond_0

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v44, v3, v37

    .line 2696
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next store timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1

    .line 2515
    .end local v24    # "e":Landroid/database/SQLException;
    .end local v44    # "timeout":J
    .restart local v9    # "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .restart local v14    # "date":J
    .restart local v17    # "delay":J
    .restart local v19    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .restart local v20    # "destport":I
    .restart local v23    # "displayInterval":I
    .restart local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v33    # "lCmpTime":J
    .restart local v35    # "lCurrentTime":J
    .restart local v39    # "networkType":I
    .restart local v40    # "pduColumn":I
    .restart local v41    # "seqNum":I
    :cond_a
    const-wide/16 v3, 0x0

    cmp-long v3, v33, v3

    if-ltz v3, :cond_b

    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-gtz v3, :cond_f

    .line 2516
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alNeedDispatchRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPLAY_TIMOUEOUT(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    new-instance v42, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2519
    .restart local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    new-array v3, v3, [[B

    move-object/from16 v0, v42

    iput-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    .line 2520
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v41, -0x1

    move/from16 v0, v40

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 2521
    move/from16 v0, v39

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    .line 2522
    move/from16 v0, v20

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->destPort:I

    .line 2523
    const/4 v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    .line 2524
    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2684
    .end local v9    # "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v14    # "date":J
    .end local v17    # "delay":J
    .end local v19    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v20    # "destport":I
    .end local v23    # "displayInterval":I
    .end local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v33    # "lCmpTime":J
    .end local v35    # "lCurrentTime":J
    .end local v39    # "networkType":I
    .end local v40    # "pduColumn":I
    .end local v41    # "seqNum":I
    .end local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_c

    .line 2685
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2687
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchMultipartMessageDisplayTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v21, v4

    if-eqz v4, :cond_d

    .line 2690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v44, v4, v21

    .line 2691
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchMultipartMessageDisplayTimeout() next display timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v44

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2694
    .end local v44    # "timeout":J
    :cond_d
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v37, v4

    if-eqz v4, :cond_e

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v44, v4, v37

    .line 2696
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchMultipartMessageDisplayTimeout() next store timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v44

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2684
    .end local v44    # "timeout":J
    :cond_e
    throw v3

    .line 2526
    .restart local v9    # "alNeedDispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .restart local v14    # "date":J
    .restart local v17    # "delay":J
    .restart local v19    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .restart local v20    # "destport":I
    .restart local v23    # "displayInterval":I
    .restart local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v33    # "lCmpTime":J
    .restart local v35    # "lCurrentTime":J
    .restart local v39    # "networkType":I
    .restart local v40    # "pduColumn":I
    .restart local v41    # "seqNum":I
    :cond_f
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v21, v3

    if-eqz v3, :cond_10

    cmp-long v3, v21, v17

    if-lez v3, :cond_7

    .line 2527
    :cond_10
    move-wide/from16 v21, v17

    goto/16 :goto_3

    .line 2537
    :cond_11
    const-wide/16 v3, 0x0

    cmp-long v3, v33, v3

    if-ltz v3, :cond_12

    :try_start_4
    sget v3, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v3, v3

    cmp-long v3, v33, v3

    if-lez v3, :cond_13

    .line 2538
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPATCH_TIMOUEOUT(h) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    const v6, 0x36ee80

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    new-instance v43, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2542
    .restart local v43    # "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    move/from16 v0, v20

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->destport:I

    .line 2543
    const/4 v3, 0x1

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    .line 2544
    move/from16 v0, v39

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->networkType:I

    .line 2545
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2548
    .end local v43    # "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    :cond_13
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v37, v3

    if-eqz v3, :cond_14

    cmp-long v3, v33, v37

    if-lez v3, :cond_6

    .line 2549
    :cond_14
    move-wide/from16 v37, v33

    goto/16 :goto_2

    .line 2558
    .end local v14    # "date":J
    .end local v20    # "destport":I
    .end local v23    # "displayInterval":I
    .end local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v33    # "lCmpTime":J
    .end local v39    # "networkType":I
    .end local v40    # "pduColumn":I
    .end local v41    # "seqNum":I
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCmccTestMode()Z

    move-result v25

    .line 2559
    .local v25, "enable":Z
    if-nez v25, :cond_1c

    .line 2560
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 2561
    .local v32, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;>;"
    :cond_16
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2562
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 2563
    .local v27, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    .line 2564
    .restart local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    .line 2565
    .restart local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->destPort:I

    if-eqz v3, :cond_17

    .line 2566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "destPort != 0,don\'t dispatch."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2570
    :cond_17
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 2571
    .local v11, "bRet":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout sms filter bRet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/4 v3, 0x1

    if-eq v11, v3, :cond_16

    .line 2574
    const/16 v30, 0x0

    .line 2575
    .local v30, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1a

    .line 2577
    new-instance v30, Landroid/content/Intent;

    .end local v30    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2578
    .restart local v30    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_18
    :goto_5
    const-string v3, "pdus"

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2597
    const-string v3, "index"

    const/4 v4, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2598
    const-string v3, "ParseResult"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2599
    const-string v3, "format"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2600
    const-string v3, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2601
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v3, v3, 0xa

    if-eqz v3, :cond_19

    .line 2602
    const-string v3, "status"

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2605
    :cond_19
    const-string v3, "ref"

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2606
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ne v3, v4, :cond_1b

    .line 2607
    const-string v3, "act"

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2609
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2610
    .local v16, "delStr":Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2611
    const-string v3, " AND count ="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2613
    const-string v3, " AND (network_type ="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2615
    const-string v3, " OR network_type="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2617
    const-string v3, ") AND address = ?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    aput-object v4, v10, v3

    .line 2619
    .local v10, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "all segment received, delete them after handling"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    .end local v10    # "args":[Ljava/lang/String;
    .end local v16    # "delStr":Ljava/lang/StringBuilder;
    :goto_6
    const-string v3, "count"

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2625
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() display timeout,dispatch ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2581
    :cond_1a
    new-instance v30, Landroid/content/Intent;

    .end local v30    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2582
    .restart local v30    # "intent":Landroid/content/Intent;
    const-string v3, "persist.yulong.ctstest"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2584
    new-instance v12, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.transaction.PrivilegedSmsReceiver"

    invoke-direct {v12, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    .local v12, "componentName":Landroid/content/ComponentName;
    if-eqz v12, :cond_18

    .line 2589
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2622
    .end local v12    # "componentName":Landroid/content/ComponentName;
    :cond_1b
    const-string v3, "act"

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 2630
    .end local v11    # "bRet":I
    .end local v27    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v32    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;>;"
    .end local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :cond_1c
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 2633
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 2634
    .local v31, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;>;"
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2635
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 2636
    .local v26, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    .line 2637
    .restart local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    .line 2638
    .local v42, "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->destport:I

    if-nez v3, :cond_1e

    if-nez v25, :cond_1e

    .line 2639
    const/16 v30, 0x0

    .line 2640
    .restart local v30    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1f

    .line 2642
    new-instance v30, Landroid/content/Intent;

    .end local v30    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2643
    .restart local v30    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_1d
    :goto_8
    const-string v3, "ref"

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2661
    const-string v3, "act"

    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2662
    const-string v3, "count"

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2663
    const-string v3, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2666
    .end local v30    # "intent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() delete sms refnum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    new-instance v48, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2669
    .local v48, "wheredelete":Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2670
    const-string v3, " AND count ="

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2672
    const-string v3, " AND (network_type ="

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2674
    const-string v3, " OR network_type="

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v28

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2676
    const-string v3, ") AND address = ?"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v3, 0x0

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    aput-object v4, v47, v3

    .line 2678
    .local v47, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2646
    .end local v47    # "whereArgs":[Ljava/lang/String;
    .end local v48    # "wheredelete":Ljava/lang/StringBuilder;
    .restart local v30    # "intent":Landroid/content/Intent;
    :cond_1f
    new-instance v30, Landroid/content/Intent;

    .end local v30    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2647
    .restart local v30    # "intent":Landroid/content/Intent;
    const-string v3, "persist.yulong.ctstest"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2649
    new-instance v12, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.transaction.PrivilegedSmsReceiver"

    invoke-direct {v12, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    if-eqz v12, :cond_1d

    .line 2654
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2680
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v26    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v29    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v42    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    :cond_20
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2684
    if-eqz v13, :cond_21

    .line 2685
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2687
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v21, v3

    if-eqz v3, :cond_22

    .line 2690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v44, v3, v21

    .line 2691
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next display timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v44

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2694
    .end local v44    # "timeout":J
    :cond_22
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v37, v3

    if-eqz v3, :cond_0

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v44, v3, v37

    .line 2696
    .restart local v44    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageDisplayTimeout() next store timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1
.end method

.method protected dispatchMultipartMessageTimeout()V
    .locals 32

    .prologue
    .line 2710
    const/4 v8, 0x0

    .line 2711
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide v23, 0x7fffffffffffffffL

    .line 2712
    .local v23, "lDelayTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsFamilyValue()I

    move-result v15

    .line 2713
    .local v15, "familyVal":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_1

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "family not supported, return"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    new-instance v29, Ljava/lang/StringBuffer;

    const-string v2, "(network_type="

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2719
    .local v29, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2720
    const-string v2, " OR network_type="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2722
    const-string v2, ") AND count>0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2724
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: dispatchMultipartMessageTimeout  begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2726
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2727
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: dispatchMultipartMessageTimeout  cursor == 0;"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    if-eqz v8, :cond_3

    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2862
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lDelayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v23, v2

    if-eqz v2, :cond_0

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v27, v2, v23

    .line 2873
    .local v27, "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    :goto_1
    move-wide/from16 v0, v27

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2732
    .end local v27    # "timeout":J
    :cond_4
    :try_start_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2733
    .local v11, "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 2735
    .local v21, "lCurrentTime":J
    :cond_5
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2737
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2738
    .local v9, "date":J
    sub-long v19, v21, v9

    .line 2739
    .local v19, "lCmpTime":J
    new-instance v16, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2740
    .local v16, "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    const-string v2, "reference_number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    .line 2741
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    .line 2742
    const-string v2, "count"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refnum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lCmpTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRef contains ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    .line 2751
    .local v25, "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    .line 2752
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2856
    .end local v9    # "date":J
    .end local v11    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v19    # "lCmpTime":J
    .end local v21    # "lCurrentTime":J
    .end local v25    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    :catch_0
    move-exception v12

    .line 2857
    .local v12, "e":Landroid/database/SQLException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: Can\'t access multipart SMS database"

    invoke-static {v2, v3, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2859
    if-eqz v8, :cond_6

    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2862
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lDelayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v23, v2

    if-eqz v2, :cond_0

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v27, v2, v23

    .line 2873
    .restart local v27    # "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1

    .line 2754
    .end local v12    # "e":Landroid/database/SQLException;
    .end local v27    # "timeout":J
    .restart local v9    # "date":J
    .restart local v11    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .restart local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v19    # "lCmpTime":J
    .restart local v21    # "lCurrentTime":J
    :cond_7
    :try_start_3
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v2, v2

    cmp-long v2, v19, v2

    if-lez v2, :cond_a

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRef add ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SMS_DISPATCH_TIMOUEOUT(min) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2761
    .local v26, "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    const-string v2, "destination_port"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->destport:I

    .line 2762
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    .line 2763
    const-string v2, "network_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->networkType:I

    .line 2764
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 2859
    .end local v9    # "date":J
    .end local v11    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v19    # "lCmpTime":J
    .end local v21    # "lCurrentTime":J
    .end local v26    # "smsinfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2862
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v23, v3

    if-eqz v3, :cond_9

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v27, v3, v23

    .line 2873
    .restart local v27    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageTimeout() timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v27

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2859
    .end local v27    # "timeout":J
    :cond_9
    throw v2

    .line 2767
    .restart local v9    # "date":J
    .restart local v11    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .restart local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v19    # "lCmpTime":J
    .restart local v21    # "lCurrentTime":J
    :cond_a
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v23, v2

    if-eqz v2, :cond_b

    cmp-long v2, v19, v23

    if-lez v2, :cond_5

    .line 2768
    :cond_b
    move-wide/from16 v23, v19

    goto/16 :goto_2

    .line 2820
    .end local v9    # "date":J
    .end local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v19    # "lCmpTime":J
    :cond_c
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCmccTestMode()Z

    move-result v13

    .line 2821
    .local v13, "enable":Z
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 2822
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;>;"
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2823
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2824
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    .line 2825
    .restart local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;

    .line 2826
    .restart local v25    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->destport:I

    if-nez v2, :cond_d

    if-nez v13, :cond_d

    .line 2827
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2828
    .local v17, "intent":Landroid/content/Intent;
    const-string v2, "ref"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2829
    const-string v2, "act"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2830
    const-string v2, "count"

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;->count:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2831
    const-string v2, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2832
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2834
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout delete sms refnum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2836
    .local v31, "wheredelete":Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2837
    const-string v2, " AND count ="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2839
    const-string v2, " AND (network_type ="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2841
    const-string v2, " OR network_type="

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v15

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2843
    const-string v2, ") AND address = ?"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    aput-object v3, v30, v2

    .line 2845
    .local v30, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2847
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;>;"
    .end local v16    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v25    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDeleteInfo;
    .end local v30    # "whereArgs":[Ljava/lang/String;
    .end local v31    # "wheredelete":Ljava/lang/StringBuilder;
    :cond_e
    invoke-interface {v11}, Ljava/util/Map;->clear()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2859
    if-eqz v8, :cond_f

    .line 2860
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2862
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lDelayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v23, v2

    if-eqz v2, :cond_0

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v27, v2, v23

    .line 2873
    .restart local v27    # "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMultipartMessageTimeout() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1
.end method

.method public dispatchParam(III)I
    .locals 6
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    const/16 v5, 0x10

    .line 3448
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: dispatchSmsParam. state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3451
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_PARAM_ON_ICC_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3452
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "total"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3453
    const-string v2, "used"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3454
    const-string v2, "state"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3457
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3459
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_PARAM_ON_ICC_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3460
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "total"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3461
    const-string v2, "used"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3462
    const-string v2, "state"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3463
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3464
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3465
    const/4 v2, -0x1

    return v2
.end method

.method public dispatchParamPb(III)I
    .locals 4
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    .line 3481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.provider.Telephony.DUAL_PB_PARAM_ON_ICC_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "total"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3483
    const-string v1, "used"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3484
    const-string v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3485
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: dispatchParamPb. state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    const-string v1, "phoneIdKey"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3488
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3489
    const/4 v1, -0x1

    return v1
.end method

.method public abstract dispatchPbParam(III)I
.end method

.method protected dispatchPdus([[B)V
    .locals 5
    .param p1, "pdus"    # [[B

    .prologue
    .line 1312
    const/4 v1, 0x0

    .line 1313
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 1315
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    :goto_0
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1335
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1337
    return-void

    .line 1318
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "persist.yulong.ctstest"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1321
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.transaction.PrivilegedSmsReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1327
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchPdus([[BI)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "iRet"    # I

    .prologue
    .line 1349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1350
    aget-object v3, p1, v1

    if-nez v3, :cond_0

    .line 1398
    :goto_1
    return-void

    .line 1349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1354
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: dispatchPdus."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v2, 0x0

    .line 1358
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    .line 1360
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_2
    :goto_2
    const-string v3, "pdus"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1380
    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1381
    const-string v3, "ParseResult"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    const-string v3, "phoneIdKey"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    const-string v3, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_1

    .line 1363
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "persist.yulong.ctstest"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1366
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.transaction.PrivilegedSmsReceiver"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 1371
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected dispatchPdus([[BIIII)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "iRet"    # I
    .param p3, "status"    # I
    .param p4, "ref"    # I
    .param p5, "msgCount"    # I

    .prologue
    .line 1266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1267
    aget-object v3, p1, v1

    if-nez v3, :cond_0

    .line 1304
    :goto_1
    return-void

    .line 1266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: dispatchPdus.status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v2, 0x0

    .line 1273
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    .line 1275
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_2
    :goto_2
    const-string v3, "pdus"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1295
    const-string v3, "index"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1296
    const-string v3, "status"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const-string v3, "ParseResult"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1298
    const-string v3, "phoneIdKey"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    const-string v3, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const-string v3, "ref"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    const-string v3, "act"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1302
    const-string v3, "count"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_1

    .line 1278
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "persist.yulong.ctstest"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1281
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.transaction.PrivilegedSmsReceiver"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 1286
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1287
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected dispatchPdusOnIcc([[BII)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "index"    # I
    .param p3, "status"    # I

    .prologue
    const/16 v5, 0x10

    .line 3500
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: dispatchPdusOnIcc. index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3503
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_ON_ICC_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3504
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3505
    const-string v2, "index"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3506
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3507
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3515
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3517
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_ON_ICC_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3518
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3519
    const-string v2, "index"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3520
    const-string v2, "status"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3521
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3522
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3523
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3524
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xb

    .line 1409
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: dispatchPortAddressedPdus,port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms://localhost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1411
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1413
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1414
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 1416
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    :goto_0
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1434
    const-string v4, "phoneIdKey"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    const-string v4, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1440
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.DUAL_DATA_SMS_RECEIVED"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1441
    .local v2, "intentDual":Landroid/content/Intent;
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1443
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "do nothing in XianWangMode of CHINA_MOBILE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_2
    :goto_1
    const-string v4, "pdus"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1461
    const-string v4, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    const-string v4, "phoneIdKey"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1463
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v2, v4, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1464
    return-void

    .line 1418
    .end local v2    # "intentDual":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "persist.yulong.ctstest"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1420
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.transaction.PushReceiver"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1426
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering SMS to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1445
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intentDual":Landroid/content/Intent;
    :cond_4
    const-string v4, "persist.yulong.ctstest"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1447
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.transaction.PushReceiver"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 1452
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1453
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering SMS to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public abstract dispatchSmsParam(III)I
.end method

.method protected abstract dispatchVoicemail(I)I
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->dispose()V

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceMailRec(Landroid/os/Handler;)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public getCRC16([B)I
    .locals 6
    .param p1, "bs"    # [B

    .prologue
    .line 3868
    const/16 v3, 0x100

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 3883
    .local v2, "table":[I
    const/4 v0, 0x0

    .line 3884
    .local v0, "crc":I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hongjb SMS PDU length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 3886
    shl-int/lit8 v3, v0, 0x8

    ushr-int/lit8 v4, v0, 0x8

    aget-byte v5, p1, v1

    xor-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v4, v2, v4

    xor-int v0, v3, v4

    .line 3885
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3888
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hongjb SMS PDU CRC result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0xffff

    and-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    return v0

    .line 3868
    :array_0
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
        0x1231
        0x210
        0x3273
        0x2252
        0x52b5
        0x4294
        0x72f7
        0x62d6
        0x9339
        0x8318
        0xb37b
        0xa35a
        0xd3bd
        0xc39c
        0xf3ff
        0xe3de
        0x2462
        0x3443
        0x420
        0x1401
        0x64e6
        0x74c7
        0x44a4
        0x5485
        0xa56a
        0xb54b
        0x8528
        0x9509
        0xe5ee
        0xf5cf
        0xc5ac
        0xd58d
        0x3653
        0x2672
        0x1611
        0x630
        0x76d7
        0x66f6
        0x5695
        0x46b4
        0xb75b
        0xa77a
        0x9719
        0x8738
        0xf7df
        0xe7fe
        0xd79d
        0xc7bc
        0x48c4
        0x58e5
        0x6886
        0x78a7
        0x840
        0x1861
        0x2802
        0x3823
        0xc9cc
        0xd9ed
        0xe98e
        0xf9af
        0x8948
        0x9969
        0xa90a
        0xb92b
        0x5af5
        0x4ad4
        0x7ab7
        0x6a96
        0x1a71
        0xa50
        0x3a33
        0x2a12
        0xdbfd
        0xcbdc
        0xfbbf
        0xeb9e
        0x9b79
        0x8b58
        0xbb3b
        0xab1a
        0x6ca6
        0x7c87
        0x4ce4
        0x5cc5
        0x2c22
        0x3c03
        0xc60
        0x1c41
        0xedae
        0xfd8f
        0xcdec
        0xddcd
        0xad2a
        0xbd0b
        0x8d68
        0x9d49
        0x7e97
        0x6eb6
        0x5ed5
        0x4ef4
        0x3e13
        0x2e32
        0x1e51
        0xe70
        0xff9f
        0xefbe
        0xdfdd
        0xcffc
        0xbf1b
        0xaf3a
        0x9f59
        0x8f78
        0x9188
        0x81a9
        0xb1ca
        0xa1eb
        0xd10c
        0xc12d
        0xf14e
        0xe16f
        0x1080
        0xa1
        0x30c2
        0x20e3
        0x5004
        0x4025
        0x7046
        0x6067
        0x83b9
        0x9398
        0xa3fb
        0xb3da
        0xc33d
        0xd31c
        0xe37f
        0xf35e
        0x2b1
        0x1290
        0x22f3
        0x32d2
        0x4235
        0x5214
        0x6277
        0x7256
        0xb5ea
        0xa5cb
        0x95a8
        0x8589
        0xf56e
        0xe54f
        0xd52c
        0xc50d
        0x34e2
        0x24c3
        0x14a0
        0x481
        0x7466
        0x6447
        0x5424
        0x4405
        0xa7db
        0xb7fa
        0x8799
        0x97b8
        0xe75f    # 8.3E-41f
        0xf77e
        0xc71d
        0xd73c
        0x26d3
        0x36f2
        0x691
        0x16b0
        0x6657
        0x7676
        0x4615
        0x5634
        0xd94c
        0xc96d
        0xf90e
        0xe92f
        0x99c8
        0x89e9
        0xb98a
        0xa9ab
        0x5844
        0x4865
        0x7806
        0x6827
        0x18c0
        0x8e1
        0x3882
        0x28a3
        0xcb7d
        0xdb5c
        0xeb3f
        0xfb1e
        0x8bf9
        0x9bd8
        0xabbb
        0xbb9a
        0x4a75
        0x5a54
        0x6a37
        0x7a16
        0xaf1
        0x1ad0
        0x2ab3
        0x3a92
        0xfd2e
        0xed0f
        0xdd6c
        0xcd4d
        0xbdaa
        0xad8b
        0x9de8
        0x8dc9
        0x7c26
        0x6c07
        0x5c64
        0x4c45
        0x3ca2
        0x2c83
        0x1ce0
        0xcc1
        0xef1f
        0xff3e
        0xcf5d
        0xdf7c
        0xaf9b
        0xbfba
        0x8fd9
        0x9ff8
        0x6e17
        0x7e36
        0x4e55
        0x5e74
        0x2e93
        0x3eb2
        0xed1
        0x1ef0
    .end array-data
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method protected getNextConcatenatedRef()S
    .locals 5

    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 420
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 421
    .local v1, "tmpRef":S
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 423
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 424
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 425
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    int-to-short v1, v2

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextConcatenatedRef tmpRef = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->saveRefNum(II)V

    .line 433
    return v1

    .line 427
    :cond_0
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    .line 428
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    .line 429
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef2:I

    int-to-short v1, v2

    goto :goto_0
.end method

.method protected abstract getPhoneId()I
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSmsFamilyValue()I
    .locals 5

    .prologue
    .line 2435
    const/4 v1, -0x1

    .line 2436
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, "family":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocal family is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const-string v2, "3gpp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2439
    const/4 v1, 0x2

    .line 2443
    :cond_0
    :goto_0
    return v1

    .line 2440
    :cond_1
    const-string v2, "3gpp2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2441
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSmsWorkStatus()Z
    .locals 3

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: get smsWorkStatus , smsSendLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    return v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 18
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1901
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1950
    :goto_0
    return-void

    .line 1906
    :cond_0
    if-eqz p1, :cond_1

    .line 1907
    const v4, 0x1040448

    .line 1912
    .local v4, "detailsId":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1913
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1914
    .local v12, "r":Landroid/content/res/Resources;
    const v14, 0x1040446

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 1917
    .local v10, "messageText":Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1919
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x10900a4

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1921
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v14, 0x102032a

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1925
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x1020324

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1926
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    const v14, 0x1020325

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1930
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x1020327

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1932
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1934
    const v14, 0x1020328

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1936
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1938
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040449

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104044a

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1945
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d3

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1946
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1948
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1949
    const/4 v14, -0x2

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1909
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Landroid/text/Spanned;
    .end local v11    # "messageView":Landroid/widget/TextView;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x1040447

    .restart local v4    # "detailsId":I
    goto/16 :goto_1
.end method

.method public handleDualSmsFilter(ILjava/lang/String;II)V
    .locals 5
    .param p1, "ref"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "segnum"    # I
    .param p4, "crc"    # I

    .prologue
    .line 3837
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 3838
    .local v0, "sms1":Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;
    iput p1, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->refNumber:I

    .line 3839
    iput-object p2, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->addressNum:Ljava/lang/String;

    .line 3840
    iput p3, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->seqNumber:I

    .line 3841
    iput p4, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->crcResult:I

    .line 3843
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    aput-object v0, v1, v2

    .line 3845
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms1.refNumber= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sms1.addressNum= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sms1.seqNumber= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->seqNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sms1.UserDataCrcResult= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->crcResult:I

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",storgesms_SMS_COUTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    .line 3850
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 3852
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMS_COUTER:I

    .line 3862
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 580
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: SMSDispatcher handleMessage, msg.what = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 584
    :sswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v10, "New SMS Message Received"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 590
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 591
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMessage;

    .line 596
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_2

    .line 598
    const-string v8, "sms_code_decode_exception"

    invoke-static {v8, v12, v12}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 603
    :cond_2
    :try_start_0
    iget-object v8, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    .line 604
    .local v3, "result":I
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: dispatchMessage result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    if-ne v3, v2, :cond_4

    .line 609
    .local v2, "handled":Z
    :cond_3
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v2, v3, v8}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    .end local v2    # "handled":Z
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 612
    .local v1, "ex":Ljava/lang/RuntimeException;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v10, "Exception dispatching message"

    invoke-static {v8, v10, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    const/4 v8, 0x2

    invoke-direct {p0, v9, v8, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "result":I
    :cond_4
    move v2, v9

    .line 607
    goto :goto_1

    .line 620
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 624
    :sswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "SMS retry.."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 629
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 633
    :sswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 637
    :sswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/AlertDialog;

    check-cast v8, Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 638
    iput-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 639
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 641
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 642
    .local v4, "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v8, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 648
    .end local v4    # "sTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "CP_COMM: EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    :catch_1
    move-exception v1

    .line 644
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "CP_COMM: failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 653
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :sswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 657
    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 661
    :sswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 666
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 667
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 668
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 672
    :goto_3
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 670
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .line 678
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 679
    .restart local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v8, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_7

    .line 681
    :try_start_2
    iget-object v8, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 686
    :cond_7
    :goto_4
    iget v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 682
    :catch_2
    move-exception v1

    .line 683
    .restart local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 690
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 691
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    .line 692
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 693
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 696
    :cond_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_0

    .line 701
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    if-eqz v8, :cond_0

    .line 702
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    const/16 v10, 0x68

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 711
    :sswitch_d
    const/16 v8, 0x6d

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 714
    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher$2;->start()V

    goto/16 :goto_0

    .line 727
    :sswitch_e
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 730
    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher$3;->start()V

    goto/16 :goto_0

    .line 741
    :sswitch_f
    const/16 v8, 0x6f

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 742
    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$4;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$4;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher$4;->start()V

    goto/16 :goto_0

    .line 754
    :sswitch_10
    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$5;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$5;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher$5;->start()V

    goto/16 :goto_0

    .line 769
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 770
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    aget v7, v8, v9

    .line 771
    .local v7, "voicemailCount":I
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Voicemail count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchVoicemail(I)I

    goto/16 :goto_0

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6b -> :sswitch_11
        0x6c -> :sswitch_e
        0x6d -> :sswitch_d
        0x6e -> :sswitch_10
        0x6f -> :sswitch_f
    .end sparse-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1872
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1893
    :goto_0
    return-void

    .line 1876
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1877
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1878
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x1040443

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1880
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1882
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040442

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040444

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040445

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1891
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1892
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 829
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 830
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 832
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMSDispatcher handleSendComplete, end synchronized= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    .line 839
    .local v0, "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v8

    if-ne v8, v13, :cond_0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendCompleteLongSmsTest(Landroid/os/AsyncResult;)V

    .line 948
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    .line 845
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_1

    .line 847
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v3, v8, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    .line 848
    .local v3, "messageRef":I
    iput v3, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 850
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tracker.mIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tracker.mTotal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tracker.mMessageRef = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .end local v3    # "messageRef":I
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->removeFristElement(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 858
    if-eqz v5, :cond_3

    .line 860
    :try_start_0
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v12, :cond_2

    .line 861
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 864
    :cond_2
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_4

    .line 865
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v4, "sendNext":Landroid/content/Intent;
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v4    # "sendNext":Landroid/content/Intent;
    :cond_3
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->smsResultLock:Z

    .line 945
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->isSendTrackEmpty()Ljava/lang/Boolean;

    .line 947
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    .line 869
    :cond_4
    const/4 v8, -0x1

    :try_start_1
    invoke-virtual {v5, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 871
    :catch_0
    move-exception v8

    goto :goto_1

    .line 875
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "CP_COMM: SMS send failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm()V

    .line 879
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 881
    .local v6, "ss":I
    if-eqz v6, :cond_6

    .line 888
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8, v6, v7}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 892
    :cond_6
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedRetry(Landroid/os/AsyncResult;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 903
    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 904
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send SEND_RETRY_DELAY retrycount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_0

    .line 916
    :cond_7
    const/4 v1, 0x1

    .line 918
    .local v1, "error":I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_8

    .line 920
    const/4 v1, 0x6

    .line 925
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 926
    .local v2, "fillIn":Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_9

    .line 927
    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    :cond_9
    const-string v8, "result"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v12, :cond_a

    .line 933
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 936
    :cond_a
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_b

    .line 937
    const-string v8, "SendNextMsg"

    invoke-virtual {v2, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 940
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v8, v7, v2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method protected handleSendCompleteLongSmsTest(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, -0x1

    .line 957
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 958
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 960
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    .line 961
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 965
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v2, v8, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    .line 966
    .local v2, "messageRef":I
    iput v2, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 967
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v2    # "messageRef":I
    :cond_0
    if-eqz v5, :cond_2

    .line 972
    :try_start_0
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_1

    .line 973
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 976
    :cond_1
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_3

    .line 977
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 978
    .local v4, "sendNext":Landroid/content/Intent;
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1029
    .end local v4    # "sendNext":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 981
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v8

    goto :goto_0

    .line 986
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v9, "SMS send failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 990
    .local v6, "ss":I
    if-eqz v6, :cond_5

    .line 991
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v6, v8}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 992
    :cond_5
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedRetry(Landroid/os/AsyncResult;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1001
    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1002
    const/4 v8, 0x3

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1003
    .local v3, "retryMsg":Landroid/os/Message;
    const-wide/16 v8, 0x1388

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1004
    .end local v3    # "retryMsg":Landroid/os/Message;
    :cond_6
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_2

    .line 1005
    const/4 v0, 0x1

    .line 1007
    .local v0, "error":I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_7

    .line 1009
    const/4 v0, 0x6

    .line 1013
    :cond_7
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1014
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_8

    .line 1015
    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    :cond_8
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v11, :cond_9

    .line 1018
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1021
    :cond_9
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_a

    .line 1022
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    :cond_a
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1026
    .end local v1    # "fillIn":Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "cardSmsInd"    # I

    .prologue
    .line 3789
    if-nez p1, :cond_0

    const/4 v11, 0x0

    .line 3831
    :goto_0
    return v11

    .line 3790
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3791
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v14, v1, [Landroid/telephony/SmsMessage;

    .line 3792
    .local v14, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v13, 0x0

    .line 3793
    .local v13, "indexNotNull":I
    const/4 v11, 0x0

    .line 3795
    .local v11, "bRet":I
    if-eqz p4, :cond_3

    .line 3796
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 3797
    const/4 v1, -0x2

    aget-object v2, p1, v12

    move-object/from16 v0, p2

    invoke-static {v1, v2, v0}, Landroid/telephony/SmsMessage;->createFromEfRecordByFormat(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v14, v12

    .line 3799
    aget-object v1, v14, v12

    if-eqz v1, :cond_1

    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3800
    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    move v13, v12

    .line 3796
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3802
    :cond_1
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: handleSmsFilter() ProductMode,SMS not replace with (...)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    const/4 v11, 0x1

    .line 3806
    goto :goto_0

    .line 3808
    :cond_2
    const-string v1, "(...)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3812
    .end local v12    # "i":I
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 3813
    aget-object v1, p1, v12

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v14, v12

    .line 3814
    aget-object v1, v14, v12

    if-eqz v1, :cond_4

    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3815
    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    move v13, v12

    .line 3812
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3817
    :cond_4
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3819
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: handleSmsFilter() ProductMode,SMS not replace with (...)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    const/4 v11, 0x1

    .line 3821
    goto/16 :goto_0

    .line 3823
    :cond_5
    const-string v1, "(...)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3827
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->ExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v3, v14, v13

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v8

    aget-object v3, v14, v13

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v9

    move-object/from16 v3, p3

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I

    move-result v11

    .line 3830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsFilter bRet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected processDualMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;I)I
    .locals 37
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "concatRef"    # Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .param p3, "portAddrs"    # Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .param p4, "iPhoneId"    # I

    .prologue
    .line 3127
    sget-object v36, Lcom/android/internal/telephony/SMSDispatcher;->mObjeProcessTimeoutLock:Ljava/lang/Object;

    monitor-enter v36

    .line 3128
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v24

    .line 3129
    .local v24, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 3131
    .local v13, "addressNum":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 3132
    const-string v13, ""

    .line 3136
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsFamilyValue()I

    move-result v21

    .line 3137
    .local v21, "familyVal":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 3138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "get wrong protocal family ,return RESULT_SMS_UNSUPPORTED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const/4 v2, 0x4

    monitor-exit v36

    .line 3345
    :goto_0
    return v2

    .line 3142
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v21

    mul-int/lit8 v28, v2, 0xa

    .line 3147
    .local v28, "networkType":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: processDualMessagePart , seqNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", refNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addressNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3153
    .local v35, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3154
    const-string v2, " AND count="

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3156
    const-string v2, " AND network_type IN(?,?)"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    const-string v2, " AND address = ?"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    mul-int/lit8 v3, p4, 0xa

    add-int v3, v3, v21

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    mul-int/lit8 v3, p4, 0xa

    add-int v3, v3, v21

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v13, v6, v2

    .line 3161
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    check-cast v8, [[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3162
    .local v8, "pdus":[[B
    const/4 v14, 0x0

    .line 3164
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3165
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 3166
    .local v15, "cursorCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: cursorCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    const/16 v33, 0x0

    .line 3177
    .local v33, "sn":I
    const-wide/16 v18, 0x0

    .line 3178
    .local v18, "delay":J
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "date"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sub-long v18, v2, v4

    .line 3180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: first segment delay(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :cond_2
    const-string v2, "sequence"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 3183
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v33

    if-ne v0, v2, :cond_3

    .line 3184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: duplicate seqment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3189
    :cond_4
    const/16 v25, 0x0

    .line 3191
    .local v25, "j":I
    const/16 v31, 0x0

    .line 3192
    .local v31, "pduCrcResult":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3193
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getCRC16([B)I

    move-result v31

    .line 3195
    :cond_5
    const/16 v25, 0x0

    :goto_2
    const/16 v2, 0x64

    move/from16 v0, v25

    if-ge v0, v2, :cond_9

    .line 3196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM.begin smsfiter j="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    array-length v2, v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    aget-object v2, v2, v25

    if-eqz v2, :cond_8

    .line 3198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    aget-object v2, v2, v25

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->refNumber:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    aget-object v2, v2, v25

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->addressNum:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    aget-object v2, v2, v25

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->seqNumber:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->SmsStorage:[Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;

    aget-object v2, v2, v25

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$Sms_Filter;->crcResult:I

    move/from16 v0, v31

    if-ne v2, v0, :cond_8

    .line 3201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM.smsfilter refNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seqNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3202
    const/4 v2, 0x1

    .line 3285
    if-eqz v14, :cond_6

    .line 3286
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3289
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "send EVENT_PROCESS_MULTIPART_SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 3291
    .local v27, "msgdisplay":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3292
    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 3293
    .local v26, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3202
    monitor-exit v36

    goto/16 :goto_0

    .line 3344
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "pdus":[[B
    .end local v13    # "addressNum":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "cursorCount":I
    .end local v18    # "delay":J
    .end local v21    # "familyVal":I
    .end local v24    # "index":I
    .end local v25    # "j":I
    .end local v26    # "msg":Landroid/os/Message;
    .end local v27    # "msgdisplay":Landroid/os/Message;
    .end local v28    # "networkType":I
    .end local v31    # "pduCrcResult":I
    .end local v33    # "sn":I
    .end local v35    # "where":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v36
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3145
    .restart local v13    # "addressNum":Ljava/lang/String;
    .restart local v21    # "familyVal":I
    .restart local v24    # "index":I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v21

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v28, v2, 0x1

    .restart local v28    # "networkType":I
    goto/16 :goto_1

    .line 3195
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v8    # "pdus":[[B
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "cursorCount":I
    .restart local v18    # "delay":J
    .restart local v25    # "j":I
    .restart local v31    # "pduCrcResult":I
    .restart local v33    # "sn":I
    .restart local v35    # "where":Ljava/lang/StringBuilder;
    :cond_8
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 3206
    :cond_9
    const/4 v2, -0x1

    :try_start_4
    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: moveToPosition(-1)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v2, v2, -0x1

    if-eq v15, v2, :cond_d

    .line 3216
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 3217
    .local v34, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3218
    const-string v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    const-string v2, "address"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v2, "reference_number"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3221
    const-string v2, "count"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3222
    const-string v2, "sequence"

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3227
    const-string v2, "network_type"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3230
    if-eqz p3, :cond_b

    .line 3231
    const-string v2, "destination_port"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3235
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3238
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v2, v13, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleDualSmsFilter(ILjava/lang/String;II)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3240
    const/4 v2, 0x1

    .line 3285
    if-eqz v14, :cond_a

    .line 3286
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3289
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "send EVENT_PROCESS_MULTIPART_SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 3291
    .restart local v27    # "msgdisplay":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3292
    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 3293
    .restart local v26    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3240
    monitor-exit v36
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3233
    .end local v26    # "msg":Landroid/os/Message;
    .end local v27    # "msgdisplay":Landroid/os/Message;
    :cond_b
    :try_start_6
    const-string v2, "destination_port"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 3278
    .end local v15    # "cursorCount":I
    .end local v18    # "delay":J
    .end local v25    # "j":I
    .end local v31    # "pduCrcResult":I
    .end local v33    # "sn":I
    .end local v34    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v20

    .line 3279
    .local v20, "e":Landroid/database/SQLException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: Can\'t access multipart SMS database"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3283
    const/4 v2, 0x2

    .line 3285
    if-eqz v14, :cond_c

    .line 3286
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3289
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "send EVENT_PROCESS_MULTIPART_SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 3291
    .restart local v27    # "msgdisplay":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3292
    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 3293
    .restart local v26    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3283
    monitor-exit v36
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 3243
    .end local v20    # "e":Landroid/database/SQLException;
    .end local v26    # "msg":Landroid/os/Message;
    .end local v27    # "msgdisplay":Landroid/os/Message;
    .restart local v15    # "cursorCount":I
    .restart local v18    # "delay":J
    .restart local v25    # "j":I
    .restart local v31    # "pduCrcResult":I
    .restart local v33    # "sn":I
    :cond_d
    :try_start_9
    const-string v2, "pdu"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3244
    .local v30, "pduColumn":I
    const-string v2, "sequence"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v32

    .line 3247
    .local v32, "sequenceColumn":I
    :try_start_a
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v8, v2, [[B

    .line 3248
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v15, :cond_e

    .line 3249
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 3250
    move/from16 v0, v32

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 3251
    .local v16, "cursorSequence":I
    add-int/lit8 v2, v16, -0x1

    move/from16 v0, v30

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v8, v2

    .line 3248
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 3254
    .end local v16    # "cursorSequence":I
    :cond_e
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v8, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3260
    .end local v23    # "i":I
    :goto_5
    :try_start_b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v2, v13, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleDualSmsFilter(ILjava/lang/String;II)V

    .line 3269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_f

    .line 3273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3275
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_10

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3285
    :cond_10
    if-eqz v14, :cond_11

    .line 3286
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3289
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "send EVENT_PROCESS_MULTIPART_SMS"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 3291
    .restart local v27    # "msgdisplay":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3292
    const/16 v2, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 3293
    .restart local v26    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3310
    if-eqz p3, :cond_15

    .line 3311
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0xb84

    if-ne v2, v3, :cond_14

    .line 3313
    new-instance v29, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3314
    .local v29, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v22

    .line 3315
    .local v22, "format":Ljava/lang/String;
    const/16 v23, 0x0

    .end local v26    # "msg":Landroid/os/Message;
    .restart local v23    # "i":I
    :goto_6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v0, v23

    if-ge v0, v2, :cond_13

    .line 3316
    aget-object v2, v8, v23

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v26

    .line 3317
    .local v26, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v17

    .line 3318
    .local v17, "data":[B
    const/4 v2, 0x0

    move-object/from16 v0, v17

    array-length v3, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3315
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 3255
    .end local v17    # "data":[B
    .end local v22    # "format":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v26    # "msg":Landroid/telephony/SmsMessage;
    .end local v27    # "msgdisplay":Landroid/os/Message;
    .end local v29    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v20

    .line 3256
    .local v20, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_5

    .line 3285
    .end local v15    # "cursorCount":I
    .end local v18    # "delay":J
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v25    # "j":I
    .end local v30    # "pduColumn":I
    .end local v31    # "pduCrcResult":I
    .end local v32    # "sequenceColumn":I
    .end local v33    # "sn":I
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_12

    .line 3286
    :try_start_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3289
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "send EVENT_PROCESS_MULTIPART_SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 3291
    .restart local v27    # "msgdisplay":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3292
    const/16 v3, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 3293
    .local v26, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3285
    throw v2

    .line 3321
    .end local v26    # "msg":Landroid/os/Message;
    .restart local v15    # "cursorCount":I
    .restart local v18    # "delay":J
    .restart local v22    # "format":Ljava/lang/String;
    .restart local v23    # "i":I
    .restart local v25    # "j":I
    .restart local v29    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v30    # "pduColumn":I
    .restart local v31    # "pduCrcResult":I
    .restart local v32    # "sequenceColumn":I
    .restart local v33    # "sn":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 3322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v2

    monitor-exit v36

    goto/16 :goto_0

    .line 3325
    .end local v22    # "format":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v29    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "msg":Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 3344
    :goto_7
    monitor-exit v36

    .line 3345
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 3330
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    rem-int/lit8 v3, v28, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v13, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 3333
    .local v9, "bRet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processDualMessagePart bRet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    const/4 v2, 0x1

    if-ne v9, v2, :cond_16

    .line 3339
    const/4 v2, 0x1

    monitor-exit v36

    goto/16 :goto_0

    .line 3342
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v10

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BIIII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 24
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "sequenceNumber"    # I
    .param p5, "messageCount"    # I
    .param p6, "timestamp"    # J
    .param p8, "destPort"    # I
    .param p9, "isCdmaWapPush"    # Z

    .prologue
    .line 1124
    const/16 v20, 0x0

    check-cast v20, [[B

    .line 1125
    .local v20, "pdus":[[B
    const/4 v9, 0x0

    .line 1128
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1129
    .local v21, "refNumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 1132
    .local v22, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v21, v7, v8

    const/4 v8, 0x2

    aput-object v22, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1137
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1141
    .local v18, "oldPduString":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 1142
    .local v17, "oldPdu":[B
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    :cond_0
    const/4 v3, 0x1

    .line 1204
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1250
    .end local v17    # "oldPdu":[B
    .end local v18    # "oldPduString":Ljava/lang/String;
    .end local v21    # "refNumber":Ljava/lang/String;
    .end local v22    # "seqNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1148
    .restart local v21    # "refNumber":Ljava/lang/String;
    .restart local v22    # "seqNumber":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1151
    const-string v6, "address=? AND reference_number=?"

    .line 1152
    .local v6, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v21, v7, v3

    .line 1153
    .local v7, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1155
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1156
    .local v10, "cursorCount":I
    add-int/lit8 v3, p5, -0x1

    if-eq v10, v3, :cond_4

    .line 1158
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1159
    .local v23, "values":Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1160
    const-string v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v3, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1166
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    const/4 v3, 0x1

    .line 1204
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1173
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v20, v0

    .line 1174
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v10, :cond_7

    .line 1175
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1176
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1178
    .local v11, "cursorSequence":I
    if-nez p9, :cond_5

    .line 1179
    add-int/lit8 v11, v11, -0x1

    .line 1181
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v20, v11

    .line 1186
    if-nez v11, :cond_6

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1187
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1174
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1192
    .end local v11    # "cursorSequence":I
    :cond_7
    if-eqz p9, :cond_9

    .line 1193
    aput-object p1, v20, p4

    .line 1199
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1204
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_8
    if-eqz p9, :cond_d

    .line 1210
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1211
    .local v19, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, p5

    if-ge v15, v0, :cond_b

    .line 1213
    aget-object v3, v20, v15

    const/4 v4, 0x0

    aget-object v5, v20, v15

    array-length v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1211
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1195
    .end local v19    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v3, p4, -0x1

    :try_start_3
    aput-object p1, v20, v3
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1200
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "cursorCount":I
    .end local v15    # "i":I
    .end local v21    # "refNumber":Ljava/lang/String;
    .end local v22    # "seqNumber":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1201
    .local v14, "e":Landroid/database/SQLException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1202
    const/4 v3, 0x2

    .line 1204
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 1215
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v10    # "cursorCount":I
    .restart local v15    # "i":I
    .restart local v19    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "refNumber":Ljava/lang/String;
    .restart local v22    # "seqNumber":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1218
    .local v13, "datagram":[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_c

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_0

    .line 1222
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v20, v0

    .line 1223
    const/4 v3, 0x0

    aput-object v13, v20, v3

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1226
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1231
    .end local v13    # "datagram":[B
    .end local v19    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_10

    .line 1232
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_f

    .line 1234
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1235
    .restart local v19    # "output":Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p5

    if-ge v15, v0, :cond_e

    .line 1236
    aget-object v3, v20, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 1237
    .local v16, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 1238
    .local v12, "data":[B
    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1235
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1241
    .end local v12    # "data":[B
    .end local v16    # "msg":Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_0

    .line 1244
    .end local v19    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1250
    :goto_5
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1248
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_5
.end method

.method protected processMultipartMessage()V
    .locals 21

    .prologue
    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsFamilyValue()I

    move-result v10

    .line 3058
    .local v10, "familyVal":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_1

    .line 3059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "family not supported, return"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    :cond_0
    :goto_0
    return-void

    .line 3062
    :cond_1
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v2, "(network_type="

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3063
    .local v20, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3064
    const-string v2, " OR network_type="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3066
    const-string v2, ") AND count>0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3069
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3073
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 3074
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3081
    :cond_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3082
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3083
    .local v15, "lOldTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 3084
    .local v13, "lCurrentTime":J
    sub-long v11, v13, v15

    .line 3090
    .local v11, "lCmppTime":J
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v2, v2

    cmp-long v2, v11, v2

    if-lez v2, :cond_5

    .line 3092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "send,EVENT_DISPATCH_MULTIPART_SMS_TIMEOUT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 3094
    .local v19, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3108
    .end local v11    # "lCmppTime":J
    .end local v13    # "lCurrentTime":J
    .end local v15    # "lOldTime":J
    .end local v19    # "timeoutMsg":Landroid/os/Message;
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 3109
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3113
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: processMultipartMessage end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3096
    .restart local v11    # "lCmppTime":J
    .restart local v13    # "lCurrentTime":J
    .restart local v15    # "lOldTime":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessage raw lCmppTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v17, v2, v11

    .line 3099
    .local v17, "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessage SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessage timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3105
    .end local v11    # "lCmppTime":J
    .end local v13    # "lCurrentTime":J
    .end local v15    # "lOldTime":J
    .end local v17    # "timeout":J
    :catch_0
    move-exception v9

    .line 3106
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3108
    if-eqz v8, :cond_4

    goto/16 :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_6

    .line 3109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3108
    :cond_6
    throw v2
.end method

.method protected processMultipartMessageDisplay()V
    .locals 35

    .prologue
    .line 2920
    const/4 v10, 0x0

    .line 2921
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide v12, 0x7fffffffffffffffL

    .line 2922
    .local v12, "delay":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsFamilyValue()I

    move-result v19

    .line 2923
    .local v19, "familyVal":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    .line 2924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "family not supported, return"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    new-instance v34, Ljava/lang/StringBuffer;

    const-string v2, "(network_type="

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2928
    .local v34, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v19

    mul-int/lit8 v2, v2, 0xa

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2929
    const-string v2, " OR network_type="

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v19

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2931
    const-string v2, ") AND count>0"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2934
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: processMultipartMessageDisplay() begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2936
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2937
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: processMultipartMessageDisplay() cursor == 0, return"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3034
    if-eqz v10, :cond_3

    .line 3035
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3037
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next display delay time(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v12, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v12, v2

    if-eqz v2, :cond_0

    .line 3039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v32, v2, v12

    .line 3040
    .local v32, "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    :goto_1
    move-wide/from16 v0, v32

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2940
    .end local v32    # "timeout":J
    :cond_4
    :try_start_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2941
    .local v14, "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 2942
    .local v25, "lCurrentTime":J
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2943
    const-string v2, "date"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 2944
    .local v27, "lOldTime":J
    const-string v2, "sequence"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2945
    .local v30, "seqNum":I
    const-string v2, "pdu"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 2947
    .local v29, "pduColumn":I
    new-instance v20, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2948
    .local v20, "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    const-string v2, "reference_number"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    .line 2949
    const-string v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    .line 2950
    const-string v2, "count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    .line 2952
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x5

    sget v3, Lcom/android/internal/telephony/SMSDispatcher;->SEGMENT_DISPLAY_INTERVAL:I

    mul-int/2addr v2, v3

    int-to-long v15, v2

    .line 2953
    .local v15, "displayTimeout":J
    sub-long v23, v25, v27

    .line 2955
    .local v23, "lCmpTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seqNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lCmpTime(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v23, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchRef contains ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    .line 2961
    .local v31, "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v3, v30, -0x1

    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 2962
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    .line 2963
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 3031
    .end local v14    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v15    # "displayTimeout":J
    .end local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v23    # "lCmpTime":J
    .end local v25    # "lCurrentTime":J
    .end local v27    # "lOldTime":J
    .end local v29    # "pduColumn":I
    .end local v30    # "seqNum":I
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :catch_0
    move-exception v17

    .line 3032
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3034
    if-eqz v10, :cond_6

    .line 3035
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3037
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next display delay time(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v12, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v12, v2

    if-eqz v2, :cond_0

    .line 3039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v32, v2, v12

    .line 3040
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1

    .line 2964
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v32    # "timeout":J
    .restart local v14    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .restart local v15    # "displayTimeout":J
    .restart local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v23    # "lCmpTime":J
    .restart local v25    # "lCurrentTime":J
    .restart local v27    # "lOldTime":J
    .restart local v29    # "pduColumn":I
    .restart local v30    # "seqNum":I
    :cond_7
    cmp-long v2, v23, v15

    if-lez v2, :cond_a

    .line 2965
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchRef add ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SMS_DISPLAY_TIMOUEOUT(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v15, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    new-instance v31, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 2969
    .restart local v31    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    new-array v2, v2, [[B

    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    .line 2970
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v3, v30, -0x1

    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 2971
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    .line 2972
    const-string v2, "destination_port"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->destPort:I

    .line 2973
    const-string v2, "network_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v31

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    .line 2974
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 3034
    .end local v14    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v15    # "displayTimeout":J
    .end local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v23    # "lCmpTime":J
    .end local v25    # "lCurrentTime":J
    .end local v27    # "lOldTime":J
    .end local v29    # "pduColumn":I
    .end local v30    # "seqNum":I
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 3035
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3037
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v12, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v12, v3

    if-eqz v3, :cond_9

    .line 3039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v32, v3, v12

    .line 3040
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMultipartMessageDisplay() SystemClock.elapsedRealtime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMultipartMessageDisplay() timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v32

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3034
    .end local v32    # "timeout":J
    :cond_9
    throw v2

    .line 2976
    .restart local v14    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .restart local v15    # "displayTimeout":J
    .restart local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .restart local v23    # "lCmpTime":J
    .restart local v25    # "lCurrentTime":J
    .restart local v27    # "lOldTime":J
    .restart local v29    # "pduColumn":I
    .restart local v30    # "seqNum":I
    :cond_a
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v12, v2

    if-eqz v2, :cond_b

    sub-long v2, v15, v23

    cmp-long v2, v12, v2

    if-lez v2, :cond_5

    .line 2977
    :cond_b
    sub-long v12, v15, v23

    goto/16 :goto_2

    .line 2981
    .end local v15    # "displayTimeout":J
    .end local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v23    # "lCmpTime":J
    .end local v27    # "lOldTime":J
    .end local v29    # "pduColumn":I
    .end local v30    # "seqNum":I
    :cond_c
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCmccTestMode()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2982
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 2983
    .local v22, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;>;"
    :cond_d
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2984
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 2985
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;

    .line 2986
    .restart local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;

    .line 2987
    .restart local v31    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->destPort:I

    if-eqz v2, :cond_e

    .line 2988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "destPort != 0,don\'t dispatch."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2992
    :cond_e
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v5, v5, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 2993
    .local v9, "bRet":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay sms filter bRet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    const/4 v2, 0x1

    if-eq v9, v2, :cond_d

    .line 2996
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2997
    .local v21, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2998
    const-string v2, "index"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2999
    const-string v2, "ParseResult"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3000
    const-string v2, "format"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3001
    const-string v2, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3002
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_f

    .line 3003
    const-string v2, "status"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3005
    :cond_f
    const-string v2, "ref"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3006
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->pdus:[[B

    array-length v3, v3

    if-ne v2, v3, :cond_10

    .line 3007
    const-string v2, "act"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3009
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3010
    .local v11, "delStr":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3011
    const-string v2, " AND count ="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->msgCount:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3013
    const-string v2, " AND (network_type ="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v19

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3015
    const-string v2, " OR network_type="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v19

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    const-string v2, ") AND address = ?"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    aput-object v3, v8, v2

    .line 3019
    .local v8, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "all segment received, delete them after handling"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    .end local v8    # "args":[Ljava/lang/String;
    .end local v11    # "delStr":Ljava/lang/StringBuilder;
    :goto_4
    const-string v2, "count"

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;->size:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3025
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay dispatch ref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->ref:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3022
    :cond_10
    const-string v2, "act"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 3030
    .end local v9    # "bRet":I
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;"
    .end local v20    # "header":Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v22    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/SMSDispatcher$QueryHeader;Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;>;>;"
    .end local v31    # "smsInfo":Lcom/android/internal/telephony/SMSDispatcher$SmsDispatchInfo;
    :cond_11
    invoke-interface {v14}, Ljava/util/Map;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3034
    if-eqz v10, :cond_12

    .line 3035
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3037
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next display delay time(s) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v12, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v12, v2

    if-eqz v2, :cond_0

    .line 3039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v32, v2, v12

    .line 3040
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() SystemClock.elapsedRealtime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMultipartMessageDisplay() timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_1
.end method

.method public readIccSmsDone(ILjava/lang/Exception;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0, p2}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->readIccSmsDone(Ljava/lang/Exception;)V

    .line 3716
    return-void
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 14
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "destAddr"    # Ljava/lang/String;

    .prologue
    .line 1654
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v2, :cond_2

    .line 1655
    if-eqz p3, :cond_0

    .line 1657
    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1660
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Device does not support sending sms."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_1
    :goto_1
    return-void

    .line 1664
    :cond_2
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    .line 1665
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher sendRawPdu, pdu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", smsref ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1668
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "smsc"

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const-string v2, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1673
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 1675
    .local v11, "packageNames":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v2, v11

    if-nez v2, :cond_4

    .line 1677
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    if-eqz p3, :cond_1

    .line 1680
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1681
    :catch_0
    move-exception v10

    .line 1682
    .local v10, "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "failed to send error result"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1689
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    const/4 v6, 0x0

    .line 1692
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    :try_start_2
    aget-object v2, v11, v2

    const/16 v4, 0x40

    invoke-virtual {v12, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 1707
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static/range {p5 .. p5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1711
    .local v1, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    iput v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    .line 1712
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher sentIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v8

    .line 1720
    .local v8, "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    invoke-virtual {v8}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1722
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1724
    .local v13, "ss":I
    if-eqz v13, :cond_5

    .line 1725
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v13, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1693
    .end local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .end local v13    # "ss":I
    :catch_1
    move-exception v9

    .line 1694
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    if-eqz p3, :cond_1

    .line 1697
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1698
    :catch_2
    move-exception v10

    .line 1699
    .restart local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "failed to send error result"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1727
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .restart local v13    # "ss":I
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1730
    .end local v13    # "ss":I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 1658
    .end local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .end local v11    # "packageNames":[Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .locals 14
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "totalNum"    # I

    .prologue
    .line 3567
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v2, :cond_2

    .line 3568
    if-eqz p3, :cond_0

    .line 3570
    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3573
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Device does not support sending sms."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_1
    :goto_1
    return-void

    .line 3577
    :cond_2
    if-nez p2, :cond_4

    .line 3578
    if-eqz p3, :cond_3

    .line 3580
    const/4 v2, 0x3

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3583
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher sendRawPdu, pdu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3587
    :cond_4
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    .line 3588
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher sendRawPdu, pdu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", smsref ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3591
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "smsc"

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    const-string v2, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 3596
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 3598
    .local v11, "packageNames":[Ljava/lang/String;
    if-eqz v11, :cond_5

    array-length v2, v11

    if-nez v2, :cond_6

    .line 3600
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    if-eqz p3, :cond_1

    .line 3603
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3604
    :catch_0
    move-exception v10

    .line 3605
    .local v10, "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "failed to send error result"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3612
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    const/4 v6, 0x0

    .line 3615
    .local v6, "appInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    :try_start_3
    aget-object v2, v11, v2

    const/16 v4, 0x40

    invoke-virtual {v12, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 3630
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static/range {p5 .. p5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 3634
    .local v1, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->smsref:I

    iput v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    .line 3635
    move/from16 v0, p6

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    .line 3636
    move/from16 v0, p7

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .line 3637
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: SMSDispatcher sentIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v8

    .line 3645
    .local v8, "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLongMsgSendAndStatusChangeImplType(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    invoke-virtual {v8}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3647
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 3649
    .local v13, "ss":I
    if-eqz v13, :cond_7

    .line 3650
    iget-object v2, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v13, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 3616
    .end local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .end local v13    # "ss":I
    :catch_1
    move-exception v9

    .line 3617
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    if-eqz p3, :cond_1

    .line 3620
    const/4 v2, 0x1

    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 3621
    :catch_2
    move-exception v10

    .line 3622
    .restart local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "failed to send error result"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3652
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .restart local v13    # "ss":I
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 3655
    .end local v13    # "ss":I
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 3571
    .end local v1    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "RunMode":Lcom/yulong/android/telephony/CPDefaultRunMode;
    .end local v11    # "packageNames":[Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 3581
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract setCnmiMode(I)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1976
    return-void
.end method

.method public startSendSms()Z
    .locals 3

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: startsendsms  , mPhone.getPhoneId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsQueueManager:Lcom/yulong/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SmsQueueManager;->startSmsQueue()V

    .line 3540
    const/4 v0, 0x0

    return v0
.end method
