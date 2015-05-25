.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field private static final DEFAULT_CMCC_SMS_DISPATCH_TIMOUEOUT:I = 0xa4cb800

.field public static DEFAULT_SMS_DISPATCH_TIMOUEOUT:I = 0x0

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field static final EVENT_DISPATCH_MULTIPART_SMS_TIMEOUT:I = 0x9

.field public static final EVENT_ICC_SMS_LOADED:I = 0x7

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_PROCESS_MULTIPART_SMS_DISPLAY:I = 0x8

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field public static final EVENT_VOICE_MAIL_RECEIVED:I = 0xa

.field static final ID_COLUMN:I = 0x7

.field private static final MULTI_FRAGMENT_KEEP_TIMEOUT:I = 0x2932e00

.field public static final NEW_CDMA_SMS:I = 0x1

.field public static final NEW_GSM_SMS:I = 0x2

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field protected static final RAW_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static SEGMENT_DISPLAY_INTERVAL:I = 0x0

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND network_type IN(?,?)"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field protected static final WAKELOCK_TIMEOUT:I = 0xbb8

.field public static mObjeCheckTimeoutLock:Ljava/lang/Object;

.field public static mObjeProcessTimeoutLock:Ljava/lang/Object;

.field public static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

.field protected INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field protected mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

.field protected mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field protected mExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mLastAcknowledgedSmsFingerprint:[B

.field protected mLastDispatchedSmsFingerprint:[B

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private final mTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field protected final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 97
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 137
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 171
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "reference_number"

    aput-object v1, v0, v3

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

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mObjeCheckTimeoutLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mObjeProcessTimeoutLock:Ljava/lang/Object;

    .line 218
    const v0, 0x1b7740

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    .line 229
    const/16 v0, 0x4e20

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->SEGMENT_DISPLAY_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 152
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 155
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 158
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 161
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 195
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .line 196
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    .line 211
    const-string v2, "com.android.internal.telephony.SMSDispatcher.DISPATCH_TIMOUEOUT"

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 213
    const-string v2, "com.android.internal.telephony.SMSDispatcher.DISPATCH_DISPLAY_TIMOUEOUT"

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    .line 1248
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 242
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 243
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 245
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x111003a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 249
    .local v1, "smsCapable":Z
    const-string v2, "telephony.sms.receive"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 253
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->init()V

    .line 264
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 265
    return-void

    .line 249
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 24
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 895
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 897
    const/4 v9, 0x0

    .line 900
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v21

    .line 903
    .local v21, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 904
    .local v7, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 905
    .local v17, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 906
    .local v8, "count":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 908
    .local v20, "seqNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v12

    .line 915
    .local v12, "networkType":I
    const/4 v1, 0x5

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v10, v1

    const/4 v1, 0x1

    aput-object v17, v10, v1

    const/4 v1, 0x2

    aput-object v8, v10, v1

    const/4 v1, 0x3

    div-int/lit8 v2, v12, 0xa

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x4

    div-int/lit8 v2, v12, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 918
    .local v10, "deleteWhereArgs":[Ljava/lang/String;
    const-string v1, "address=? AND reference_number=? AND count=? AND network_type IN(?,?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v4, "address=? AND reference_number=? AND count=? AND sequence=? AND network_type IN(?,?)"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v17, v5, v6

    const/4 v6, 0x2

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v20, v5, v6

    const/4 v6, 0x4

    div-int/lit8 v23, v12, 0xa

    mul-int/lit8 v23, v23, 0xa

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v6

    const/4 v6, 0x5

    div-int/lit8 v23, v12, 0xa

    mul-int/lit8 v23, v23, 0xa

    add-int/lit8 v23, v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 929
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seqNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 932
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 933
    .local v15, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v16

    .line 934
    .local v16, "pdu":[B
    invoke-static {v15}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 935
    .local v14, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v1

    invoke-static {v14, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: dup message segment PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different from existing PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :cond_0
    const/4 v1, 0x5

    .line 946
    if-eqz v9, :cond_1

    .line 947
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v12    # "networkType":I
    .end local v14    # "oldPdu":[B
    .end local v15    # "oldPduString":Ljava/lang/String;
    .end local v16    # "pdu":[B
    .end local v17    # "refNumber":Ljava/lang/String;
    .end local v20    # "seqNumber":Ljava/lang/String;
    .end local v21    # "sequence":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 966
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v1

    .line 941
    .restart local v7    # "address":Ljava/lang/String;
    .restart local v8    # "count":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v12    # "networkType":I
    .restart local v17    # "refNumber":Ljava/lang/String;
    .restart local v20    # "seqNumber":Ljava/lang/String;
    .restart local v21    # "sequence":I
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    if-eqz v9, :cond_3

    .line 947
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 952
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v12    # "networkType":I
    .end local v17    # "refNumber":Ljava/lang/String;
    .end local v20    # "seqNumber":Ljava/lang/String;
    .end local v21    # "sequence":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v22

    .line 954
    .local v22, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding content values to raw table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 956
    .local v13, "newUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI of new row -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 958
    :try_start_2
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 959
    .local v18, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 961
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 963
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 942
    .end local v13    # "newUri":Landroid/net/Uri;
    .end local v18    # "rowId":J
    .end local v22    # "values":Landroid/content/ContentValues;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 943
    .local v11, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v1, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 944
    const/4 v1, 0x2

    .line 946
    if-eqz v9, :cond_1

    goto :goto_0

    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_5

    .line 947
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 946
    :cond_5
    throw v1

    .line 964
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "newUri":Landroid/net/Uri;
    .restart local v22    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 965
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing URI for new row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    const/4 v1, 0x2

    goto/16 :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isCmccTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    const v0, 0xa4cb800

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    .line 1310
    :goto_0
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xea60

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->SEGMENT_DISPLAY_INTERVAL:I

    .line 1313
    :cond_0
    new-instance v0, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;->start()V

    .line 1317
    return-void

    .line 1307
    :cond_1
    const v0, 0x2932e00

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    goto :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 975
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 976
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLogTag()V
    .locals 4

    .prologue
    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 1326
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 1328
    .local v0, "commType":I
    packed-switch v0, :pswitch_data_0

    .line 1342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_NO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    .line 1344
    :goto_0
    return-void

    .line 1330
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1333
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1336
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_W"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1339
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1328
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

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 700
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 710
    :goto_0
    :sswitch_0
    return v0

    .line 702
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 877
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 878
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    const/4 v4, 0x0

    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1119
    return-void
.end method

.method dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 867
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 870
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x2

    .line 556
    :goto_0
    return v0

    .line 549
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchMultipartMessageTimeout()Z
    .locals 39

    .prologue
    .line 1695
    const/4 v10, 0x0

    .line 1696
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide v26, 0x7fffffffffffffffL

    .line 1697
    .local v26, "lDelayTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getSmsFamilyValue()I

    move-result v17

    .line 1699
    .local v17, "familyVal":I
    new-instance v36, Ljava/lang/StringBuffer;

    const-string v3, "count != \'1\' AND (network_type="

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1700
    .local v36, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v17

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1701
    const-string v3, " OR network_type="

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v17

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1703
    const-string v3, ")"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1704
    const/16 v29, 0x0

    .line 1706
    .local v29, "ret":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: dispatchMultipartMessageTimeout  begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1708
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 1709
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: dispatchMultipartMessageTimeout  cursor == 0;"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    const/4 v3, 0x0

    .line 1809
    if-eqz v10, :cond_1

    .line 1810
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1812
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v26, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v26, v4

    if-eqz v4, :cond_2

    .line 1814
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v32, v4, v26

    .line 1815
    .local v32, "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v32

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1818
    .end local v32    # "timeout":J
    :cond_2
    :goto_0
    return v3

    .line 1712
    :cond_3
    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1713
    .local v13, "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 1714
    .local v35, "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1715
    .local v24, "lCurrentTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/16 v20, 0x1

    .line 1717
    .local v20, "isCurrentFormat3gpp2":Z
    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_d

    .line 1720
    :try_start_2
    new-instance v34, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1725
    .local v34, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v11

    .line 1726
    .local v11, "date":J
    sub-long v22, v24, v11

    .line 1727
    .local v22, "lCmpTime":J
    new-instance v18, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1728
    .local v18, "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    .line 1729
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    .line 1730
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lCmpTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 1739
    .local v30, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v30

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 1740
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1806
    .end local v11    # "date":J
    .end local v13    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v18    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v20    # "isCurrentFormat3gpp2":Z
    .end local v22    # "lCmpTime":J
    .end local v24    # "lCurrentTime":J
    .end local v30    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    .end local v34    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v35    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :catch_0
    move-exception v14

    .line 1807
    .local v14, "e":Landroid/database/SQLException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: Can\'t access multipart SMS database"

    invoke-static {v3, v4, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1809
    if-eqz v10, :cond_5

    .line 1810
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1812
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v26, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v26, v3

    if-eqz v3, :cond_6

    .line 1814
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v32, v3, v26

    .line 1815
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .end local v14    # "e":Landroid/database/SQLException;
    :goto_2
    move-wide/from16 v0, v32

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v32    # "timeout":J
    :cond_6
    move/from16 v3, v29

    .line 1818
    goto/16 :goto_0

    .line 1715
    .restart local v13    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .restart local v24    # "lCurrentTime":J
    .restart local v35    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1721
    .restart local v20    # "isCurrentFormat3gpp2":Z
    :catch_1
    move-exception v14

    .line 1722
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading SmsTracker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1809
    .end local v13    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "isCurrentFormat3gpp2":Z
    .end local v24    # "lCurrentTime":J
    .end local v35    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_8

    .line 1810
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1812
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v26, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v26, v4

    if-eqz v4, :cond_9

    .line 1814
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v32, v4, v26

    .line 1815
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v32

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1809
    .end local v32    # "timeout":J
    :cond_9
    throw v3

    .line 1742
    .restart local v11    # "date":J
    .restart local v13    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .restart local v18    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .restart local v20    # "isCurrentFormat3gpp2":Z
    .restart local v22    # "lCmpTime":J
    .restart local v24    # "lCurrentTime":J
    .restart local v34    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .restart local v35    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :cond_a
    :try_start_6
    sget v3, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v3, v3

    cmp-long v3, v22, v3

    if-lez v3, :cond_b

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPATCH_TIMOUEOUT(min) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    new-instance v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1749
    .local v31, "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    .line 1750
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 1751
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->networkType:I

    .line 1752
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1755
    .end local v31    # "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    :cond_b
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v26, v3

    if-eqz v3, :cond_c

    cmp-long v3, v22, v26

    if-lez v3, :cond_4

    .line 1756
    :cond_c
    move-wide/from16 v26, v22

    goto/16 :goto_1

    .line 1761
    .end local v11    # "date":J
    .end local v18    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v22    # "lCmpTime":J
    .end local v34    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isCmccTestMode()Z

    move-result v15

    .line 1762
    .local v15, "enable":Z
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1763
    .local v21, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;>;"
    :cond_e
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1764
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 1765
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    .line 1766
    .restart local v18    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 1767
    .restart local v30    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1768
    .restart local v34    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    if-eqz v34, :cond_e

    .line 1769
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setNeedDelete(Z)V

    .line 1770
    new-instance v28, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1771
    .local v28, "resultReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    if-nez v15, :cond_10

    .line 1772
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1776
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    .line 1777
    .local v9, "componentName":Landroid/content/ComponentName;
    if-eqz v9, :cond_f

    .line 1779
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1783
    :cond_f
    const-string v3, "ref"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1784
    const-string v3, "act"

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1785
    const-string v3, "count"

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1786
    const-string v3, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1789
    const/16 v29, 0x1

    .line 1791
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_10
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1792
    .local v38, "wheredelete":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1793
    const-string v3, " AND count ="

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1795
    const-string v3, " AND (network_type ="

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v17

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1797
    const-string v3, " OR network_type="

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v17

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1799
    const-string v3, ") AND address = ?"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    aput-object v4, v37, v3

    .line 1801
    .local v37, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMultipartMessageTimeout delete sms ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1804
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v18    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v28    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v30    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    .end local v34    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v37    # "whereArgs":[Ljava/lang/String;
    .end local v38    # "wheredelete":Ljava/lang/StringBuilder;
    :cond_11
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 1805
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->clear()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1809
    if-eqz v10, :cond_12

    .line 1810
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1812
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v26, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v26, v3

    if-eqz v3, :cond_6

    .line 1814
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v32, v3, v26

    .line 1815
    .restart local v32    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_2
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 28
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 625
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v27

    .line 629
    .local v27, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getSmsFamilyValue()I

    move-result v24

    .line 631
    .local v24, "familyVal":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v10, v3, 0xa

    .line 638
    .local v10, "networkType":I
    :goto_0
    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_5

    .line 640
    :cond_0
    const/4 v6, -0x1

    .line 641
    .local v6, "destPort":I
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_3

    .line 643
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchMessage]delete wap sms index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 661
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;ZI)V

    .line 688
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created tracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :goto_2
    return v3

    .line 634
    .end local v10    # "networkType":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "networkType":I
    goto/16 :goto_0

    .line 650
    .restart local v6    # "destPort":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 651
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v25, v0

    .line 652
    .local v25, "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v25, v3

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusOnIcc([[BII)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v3, v4, :cond_4

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 657
    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    .line 664
    .end local v6    # "destPort":I
    .end local v25    # "pdus":[[B
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v3, :cond_6

    .line 668
    const-string v3, "long sms in card, dispatchPdusOnIcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 669
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v25, v0

    .line 670
    .restart local v25    # "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v25, v3

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusOnIcc([[BII)V

    .line 672
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 674
    .end local v25    # "pdus":[[B
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchMessage]delete long sms index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setNeedDeleteSmsIndex(I)V

    .line 679
    :cond_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v23, v0

    .line 680
    .local v23, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v26, v0

    .line 681
    .local v26, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v26, :cond_8

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 683
    .restart local v6    # "destPort":I
    :goto_3
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object v11, v2

    move v15, v6

    move/from16 v22, v10

    invoke-direct/range {v11 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZI)V

    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto/16 :goto_1

    .line 681
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_8
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public dispatchPbParam(III)I
    .locals 3
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: dispatchPbParam. state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.provider.Telephony.DUAL_PB_PARAM_ON_ICC_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "total"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    const-string v1, "used"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    const-string v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    const-string v1, "phoneIdKey"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1101
    const/4 v1, -0x1

    return v1
.end method

.method protected dispatchPdusOnIcc([[BII)V
    .locals 5
    .param p1, "pdus"    # [[B
    .param p2, "index"    # I
    .param p3, "status"    # I

    .prologue
    const/16 v4, 0x10

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: dispatchPdusOnIcc. index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_ON_ICC_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1144
    const-string v2, "index"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1145
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1146
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1156
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_ON_ICC_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1158
    const-string v2, "index"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    const-string v2, "status"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1163
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/16 v5, 0x10

    .line 1173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: dispatchPortAddressedPdus,port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1175
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1176
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "pdus"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1178
    const-string v3, "phoneIdKey"

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1180
    const-string v3, "format"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v3, v5, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1185
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.DUAL_DATA_SMS_RECEIVED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1186
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v3, "pdus"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1187
    const-string v3, "format"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const-string v3, "phoneIdKey"

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1189
    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v3, v5, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1191
    const/4 v3, 0x1

    return v3
.end method

.method public dispatchSmsParam(III)I
    .locals 5
    .param p1, "total"    # I
    .param p2, "used"    # I
    .param p3, "state"    # I

    .prologue
    const/16 v4, 0x10

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: dispatchSmsParam. state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1076
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_PARAM_ON_ICC_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "total"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    const-string v2, "used"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1079
    const-string v2, "state"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1083
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_PARAM_ON_ICC_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "total"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string v2, "used"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const-string v2, "state"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1087
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1089
    const/4 v2, -0x1

    return v2
.end method

.method protected dispatchVoiceMail(I)V
    .locals 3
    .param p1, "iNumVoiceMail"    # I

    .prologue
    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.VOICEMAIL_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "number_voicemail"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1387
    return-void
.end method

.method protected dispatchVoicemail(Landroid/os/AsyncResult;)I
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 1365
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 1366
    .local v2, "voicemailCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voicemail count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1368
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1369
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1370
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "vm_count_key_cdma"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 1373
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchVoiceMail(I)V

    .line 1374
    return v5
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 272
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "3gpp2"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method public getSmsFamilyValue()I
    .locals 3

    .prologue
    .line 1122
    const/4 v0, -0x1

    .line 1123
    .local v0, "val":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsFamilyValue format is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gpp2"

    if-ne v1, v2, :cond_0

    .line 1125
    const/4 v0, 0x1

    .line 1129
    :goto_0
    return v0

    .line 1127
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 508
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 515
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 516
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v5, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 517
    .local v2, "result":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-ne v2, v1, :cond_2

    .line 519
    .local v1, "handled":Z
    :cond_1
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "Exception dispatching message"

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "result":I
    .restart local v3    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    move v1, v4

    .line 517
    goto :goto_1
.end method

.method public handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "statusOnIcc"    # I

    .prologue
    .line 1201
    if-nez p1, :cond_0

    const/4 v11, 0x0

    .line 1244
    :goto_0
    return v11

    .line 1202
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v14, v1, [Landroid/telephony/SmsMessage;

    .line 1204
    .local v14, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v6, 0x0

    .line 1205
    .local v6, "userdata":[B
    const/4 v13, 0x0

    .line 1206
    .local v13, "indexNotNull":I
    const/4 v11, 0x0

    .line 1208
    .local v11, "bRet":I
    if-eqz p4, :cond_3

    .line 1209
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 1210
    const/4 v1, -0x2

    aget-object v2, p1, v12

    move-object/from16 v0, p2

    invoke-static {v1, v2, v0}, Landroid/telephony/SmsMessage;->createFromEfRecordByFormat(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v14, v12

    .line 1212
    aget-object v1, v14, v12

    if-eqz v1, :cond_1

    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1213
    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    move v13, v12

    .line 1209
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1215
    :cond_1
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: handleSmsFilter() ProductMode,SMS not replace with (...)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v11, 0x1

    .line 1219
    goto :goto_0

    .line 1221
    :cond_2
    const-string v1, "(...)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1225
    .end local v12    # "i":I
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_6

    .line 1226
    aget-object v1, p1, v12

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v14, v12

    .line 1227
    aget-object v1, v14, v12

    if-eqz v1, :cond_4

    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1228
    aget-object v1, v14, v12

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    move v13, v12

    .line 1225
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1230
    :cond_4
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: handleSmsFilter() ProductMode,SMS not replace with (...)"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v11, 0x1

    .line 1234
    goto/16 :goto_0

    .line 1236
    :cond_5
    const-string v1, "(...)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1240
    :cond_6
    aget-object v1, v14, v13

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    .line 1241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mExtInterfaceParse:Lcom/yulong/android/internal/telephony/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

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

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmsFilter bRet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract is3gpp2()Z
.end method

.method public isCmccTestMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1353
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isProductMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v2, "CMCC operator and run mode is net mode, timeout sms fragment will not dispatch!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_0
    return v0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v1, "current operator is not CMCC Operator."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 588
    if-nez p1, :cond_1

    .line 594
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 600
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.provider.Telephony.DUAL_SMS_REJECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v1, "intentDual":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const-string v2, "slotIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSlotId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 606
    .end local v1    # "intentDual":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 607
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 24
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 722
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v13

    .line 724
    .local v13, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v7

    .line 726
    .local v7, "destPort":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_0

    .line 728
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v22

    aput-object v22, v17, v21

    .line 796
    .local v17, "pdus":[[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsStatusOnIcc()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 798
    .local v10, "iRet":I
    if-eqz v10, :cond_3

    const/16 v21, 0x1

    .line 854
    .end local v10    # "iRet":I
    .end local v17    # "pdus":[[B
    :goto_0
    return v21

    .line 777
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 780
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 783
    :cond_2
    sget-object v22, Lcom/android/internal/telephony/InboundSmsHandler;->mObjeProcessTimeoutLock:Ljava/lang/Object;

    monitor-enter v22
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 784
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->processMultipartMessageDisplay()Z

    move-result v21

    monitor-exit v22

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v21
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 786
    :catch_0
    move-exception v8

    .line 787
    .local v8, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v21, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 788
    const/16 v21, 0x0

    goto :goto_0

    .line 789
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v21

    throw v21

    .line 800
    .restart local v10    # "iRet":I
    .restart local v17    # "pdus":[[B
    :cond_3
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setNeedDelete(Z)V

    .line 801
    new-instance v19, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 803
    .local v19, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v21, 0xb84

    move/from16 v0, v21

    if-ne v7, v0, :cond_7

    .line 805
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 806
    .local v15, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    .line 807
    .local v20, "scAddr":Ljava/lang/String;
    move-object/from16 v5, v17

    .local v5, "arr$":[[B
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_5

    aget-object v16, v5, v9

    .line 809
    .local v16, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v21

    if-nez v21, :cond_4

    .line 810
    const-string v21, "3gpp"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 811
    .local v14, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v16

    .line 812
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v20

    .line 814
    .end local v14    # "msg":Landroid/telephony/SmsMessage;
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 807
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 816
    .end local v16    # "pdu":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 817
    const/16 v18, -0x1

    .line 818
    .local v18, "result":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dispatchWapPdu() returned "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 820
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 824
    .end local v5    # "arr$":[[B
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "result":I
    .end local v20    # "scAddr":Ljava/lang/String;
    :cond_7
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_9

    .line 825
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 830
    .local v6, "componentName":Landroid/content/ComponentName;
    if-eqz v6, :cond_8

    .line 832
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 833
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Delivering SMS to: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 842
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CP_COMM: dispatch Normal sms.status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsStatusOnIcc()I

    move-result v21

    if-nez v21, :cond_a

    const/16 v21, -0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 843
    const-string v21, "pdus"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 844
    const-string v21, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v21, "index"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    const-string v22, "status"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsStatusOnIcc()I

    move-result v21

    if-nez v21, :cond_b

    const/16 v21, -0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v21, "ParseResult"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string v21, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    const-string v21, "ref"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    const-string v21, "act"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    const-string v21, "count"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    const-string v21, "android.permission.RECEIVE_SMS"

    const/16 v22, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 854
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 839
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)Z

    move-result v21

    goto/16 :goto_0

    .line 842
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 846
    :cond_b
    const/16 v21, 0x0

    goto :goto_3
.end method

.method protected processMultipartMessageDisplay()Z
    .locals 56

    .prologue
    .line 1434
    const/4 v12, 0x0

    .line 1435
    .local v12, "cursor":Landroid/database/Cursor;
    const-wide v13, 0x7fffffffffffffffL

    .line 1436
    .local v13, "delay":J
    const-wide v34, 0x7fffffffffffffffL

    .line 1437
    .local v34, "lDelayTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getSmsFamilyValue()I

    move-result v24

    .line 1438
    .local v24, "familyVal":I
    new-instance v53, Ljava/lang/StringBuffer;

    const-string v3, "count != \'1\' AND (network_type="

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v53, "where":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1440
    const-string v3, " OR network_type="

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1442
    const-string v3, ")"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    const/16 v44, 0x0

    .line 1446
    .local v44, "ret":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: processMultipartMessageDisplay() begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1448
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1449
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    const-string v4, "CP_COMM: processMultipartMessageDisplay() cursor == 0, return"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    const/4 v3, 0x0

    .line 1670
    if-eqz v12, :cond_1

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next display delay time(s) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v34, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v13, v4

    if-eqz v4, :cond_2

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v49, v4, v13

    .line 1677
    .local v49, "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v34, v4

    if-eqz v4, :cond_3

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v49, v4, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    :goto_0
    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1685
    .end local v49    # "timeout":J
    :cond_3
    :goto_1
    return v3

    .line 1452
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursorcount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const/16 v28, 0x1

    .line 1454
    .local v28, "isCurrentFormat3gpp2":Z
    :goto_2
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1455
    .local v17, "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1456
    .local v15, "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    new-instance v52, Ljava/util/HashMap;

    invoke-direct/range {v52 .. v52}, Ljava/util/HashMap;-><init>()V

    .line 1457
    .local v52, "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1458
    .local v32, "lCurrentTime":J
    :cond_5
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_11

    .line 1461
    :try_start_2
    new-instance v51, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v51

    move/from16 v1, v28

    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1466
    .local v51, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tracker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v36

    .line 1468
    .local v36, "lOldTime":J
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v46

    .line 1470
    .local v46, "seqNum":I
    new-instance v25, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1471
    .local v25, "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    .line 1472
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    .line 1473
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    .line 1475
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/android/internal/telephony/InboundSmsHandler;->SEGMENT_DISPLAY_INTERVAL:I

    mul-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 1476
    .local v18, "displayTimeout":J
    sub-long v30, v32, v36

    .line 1480
    .local v30, "lCmpTime":J
    move-object/from16 v0, v52

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    .line 1485
    .local v47, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v46, -0x1

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 1486
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v47

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    .line 1487
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :goto_4
    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef contains ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    check-cast v47, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 1508
    .local v47, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v47

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 1509
    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1667
    .end local v15    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v17    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .end local v18    # "displayTimeout":J
    .end local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v28    # "isCurrentFormat3gpp2":Z
    .end local v30    # "lCmpTime":J
    .end local v32    # "lCurrentTime":J
    .end local v36    # "lOldTime":J
    .end local v46    # "seqNum":I
    .end local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    .end local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v52    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :catch_0
    move-exception v20

    .line 1668
    .local v20, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1670
    if-eqz v12, :cond_6

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v34, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_7

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v49, v3, v13

    .line 1677
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v34, v3

    if-eqz v3, :cond_8

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v49, v3, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .end local v20    # "e":Ljava/lang/Exception;
    :goto_5
    move-wide/from16 v0, v49

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v49    # "timeout":J
    :cond_8
    move/from16 v3, v44

    .line 1685
    goto/16 :goto_1

    .line 1453
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 1462
    .restart local v15    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .restart local v17    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .restart local v28    # "isCurrentFormat3gpp2":Z
    .restart local v32    # "lCurrentTime":J
    .restart local v52    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :catch_1
    move-exception v20

    .line 1463
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading SmsTracker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 1670
    .end local v15    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v17    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .end local v28    # "isCurrentFormat3gpp2":Z
    .end local v32    # "lCurrentTime":J
    .end local v52    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_a

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next display delay time(s) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v34, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v13, v4

    if-eqz v4, :cond_b

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v49, v4, v13

    .line 1677
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_b
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v34, v4

    if-eqz v4, :cond_c

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v49, v4, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1670
    .end local v49    # "timeout":J
    :cond_c
    throw v3

    .line 1489
    .restart local v15    # "deleteRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .restart local v17    # "dispatchRef":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .restart local v18    # "displayTimeout":J
    .restart local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .restart local v28    # "isCurrentFormat3gpp2":Z
    .restart local v30    # "lCmpTime":J
    .restart local v32    # "lCurrentTime":J
    .restart local v36    # "lOldTime":J
    .restart local v46    # "seqNum":I
    .restart local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .restart local v52    # "trackers":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsTracker;>;"
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPLAY_TIMOUEOUT(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v18, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lCmpTime(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v30, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    new-instance v47, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1493
    .local v47, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    new-array v3, v3, [[B

    move-object/from16 v0, v47

    iput-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    .line 1494
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    add-int/lit8 v4, v46, -0x1

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 1495
    const/4 v3, 0x1

    move-object/from16 v0, v47

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    .line 1496
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    move-object/from16 v0, v47

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    .line 1497
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v3

    move-object/from16 v0, v47

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->networkType:I

    .line 1498
    move-wide/from16 v0, v30

    move-object/from16 v2, v47

    iput-wide v0, v2, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    .line 1499
    move-wide/from16 v0, v18

    move-object/from16 v2, v47

    iput-wide v0, v2, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    .line 1500
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1511
    :cond_e
    sget v3, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v3, v3

    cmp-long v3, v30, v3

    if-lez v3, :cond_f

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteRef add ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SMS_DISPATCH_TIMOUEOUT(min) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v48, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1518
    .local v48, "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    .line 1519
    const/4 v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    .line 1520
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getNetworkType()I

    move-result v3

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->networkType:I

    .line 1521
    move-object/from16 v0, v25

    move-object/from16 v1, v48

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1524
    .end local v48    # "smsinfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    :cond_f
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v34, v3

    if-eqz v3, :cond_10

    cmp-long v3, v30, v34

    if-lez v3, :cond_5

    .line 1525
    :cond_10
    move-wide/from16 v34, v30

    goto/16 :goto_3

    .line 1530
    .end local v18    # "displayTimeout":J
    .end local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v30    # "lCmpTime":J
    .end local v36    # "lOldTime":J
    .end local v46    # "seqNum":I
    .end local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    .end local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isCmccTestMode()Z

    move-result v21

    .line 1531
    .local v21, "enable":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 1532
    .local v29, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;>;"
    :cond_12
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1533
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1534
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    .line 1535
    .restart local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;

    .line 1537
    .restart local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_14

    if-nez v21, :cond_13

    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    .line 1538
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg not all received, smsInfo.destPort = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not dispatch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1542
    :cond_14
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_16

    move-object/from16 v0, v47

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    move-object/from16 v0, v47

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_16

    .line 1543
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_15

    move-object/from16 v0, v47

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    move-object/from16 v0, v47

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    sub-long/2addr v3, v5

    cmp-long v3, v13, v3

    if-lez v3, :cond_12

    .line 1544
    :cond_15
    move-object/from16 v0, v47

    iget-wide v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->displayTimeout:J

    move-object/from16 v0, v47

    iget-wide v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->delay:J

    sub-long v13, v3, v5

    goto/16 :goto_6

    .line 1548
    :cond_16
    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1549
    .restart local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    if-eqz v51, :cond_12

    .line 1550
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ne v3, v4, :cond_18

    .line 1551
    const/4 v3, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setNeedDelete(Z)V

    .line 1556
    :goto_7
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsFilter([[BLjava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 1558
    .local v10, "bRet":I
    if-nez v10, :cond_12

    .line 1559
    new-instance v43, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1561
    .local v43, "resultReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    const/16 v4, 0xb84

    if-ne v3, v4, :cond_1d

    .line 1563
    new-instance v40, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1564
    .local v40, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v45, 0x0

    .line 1565
    .local v45, "scAddr":Ljava/lang/String;
    move-object/from16 v0, v47

    iget-object v9, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    .local v9, "arr$":[[B
    array-length v0, v9

    move/from16 v38, v0

    .local v38, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v38

    if-ge v0, v1, :cond_19

    aget-object v41, v9, v26

    .line 1567
    .local v41, "pdu":[B
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1568
    const-string v3, "3gpp"

    move-object/from16 v0, v41

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v39

    .line 1569
    .local v39, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v41

    .line 1570
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v45

    .line 1572
    .end local v39    # "msg":Landroid/telephony/SmsMessage;
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, v41

    array-length v4, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1565
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 1553
    .end local v9    # "arr$":[[B
    .end local v10    # "bRet":I
    .end local v26    # "i$":I
    .end local v38    # "len$":I
    .end local v40    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v41    # "pdu":[B
    .end local v43    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v45    # "scAddr":Ljava/lang/String;
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setNeedDelete(Z)V

    goto :goto_7

    .line 1574
    .restart local v9    # "arr$":[[B
    .restart local v10    # "bRet":I
    .restart local v26    # "i$":I
    .restart local v38    # "len$":I
    .restart local v40    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v43    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v45    # "scAddr":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->setAdddress(Ljava/lang/String;)V

    .line 1575
    const/16 v42, -0x1

    .line 1576
    .local v42, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1578
    const/4 v3, -0x1

    move/from16 v0, v42

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    .line 1670
    :goto_9
    if-eqz v12, :cond_1a

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next display delay time(s) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v34, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v13, v4

    if-eqz v4, :cond_1b

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v49, v4, v13

    .line 1677
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_1b
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v34, v4

    if-eqz v4, :cond_3

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v49, v4, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 1578
    .end local v49    # "timeout":J
    :cond_1c
    const/4 v3, 0x0

    goto :goto_9

    .line 1582
    .end local v9    # "arr$":[[B
    .end local v26    # "i$":I
    .end local v38    # "len$":I
    .end local v40    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v42    # "result":I
    .end local v45    # "scAddr":Ljava/lang/String;
    :cond_1d
    :try_start_7
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    .line 1583
    new-instance v27, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v27, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v11

    .line 1588
    .local v11, "componentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_1e

    .line 1590
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1600
    :cond_1e
    const-string v3, "pdus"

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1601
    const-string v3, "index"

    const/4 v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    const-string v3, "ParseResult"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1603
    const-string v3, "format"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string v3, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->networkType:I

    rem-int/lit8 v3, v3, 0xa

    if-eqz v3, :cond_1f

    .line 1606
    const-string v3, "status"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1608
    :cond_1f
    const-string v3, "ref"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1609
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    array-length v4, v4

    if-ne v3, v4, :cond_23

    .line 1610
    const-string v3, "act"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1614
    :goto_a
    const-string v3, "count"

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->size:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1617
    const/16 v44, 0x1

    .line 1618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMultipartMessageDisplay dispatch ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1597
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v27    # "intent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->pdus:[[B

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v47

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;->destPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    .line 1670
    if-eqz v12, :cond_21

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next display delay time(s) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v13, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lDelayTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v34, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v13, v4

    if-eqz v4, :cond_22

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v49, v4, v13

    .line 1677
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_22
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v34, v4

    if-eqz v4, :cond_3

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v49, v4, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 1612
    .end local v49    # "timeout":J
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_23
    :try_start_8
    const-string v3, "act"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a

    .line 1622
    .end local v10    # "bRet":I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;>;"
    .end local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v43    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDispatchInfo;
    .end local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_24
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1623
    .local v16, "deleteiter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;>;"
    :cond_25
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1624
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1625
    .local v22, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;

    .line 1626
    .restart local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;

    .line 1627
    .local v47, "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1628
    .restart local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    if-eqz v51, :cond_25

    .line 1629
    const/4 v3, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setNeedDelete(Z)V

    .line 1630
    new-instance v43, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1631
    .restart local v43    # "resultReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->destport:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27

    if-nez v21, :cond_27

    .line 1632
    new-instance v27, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1636
    .restart local v27    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v11

    .line 1637
    .restart local v11    # "componentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_26

    .line 1639
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1643
    :cond_26
    const-string v3, "ref"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1644
    const-string v3, "act"

    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    const-string v3, "count"

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;->count:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1646
    const-string v3, "phoneIdKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1647
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1649
    const/16 v44, 0x1

    .line 1651
    .end local v11    # "componentName":Landroid/content/ComponentName;
    .end local v27    # "intent":Landroid/content/Intent;
    :cond_27
    new-instance v55, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v55

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v55, "wheredelete":Ljava/lang/StringBuilder;
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1653
    const-string v3, " AND count ="

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->msgCount:I

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1655
    const-string v3, " AND (network_type ="

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v3, v3, 0xa

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1657
    const-string v3, " OR network_type="

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int v3, v3, v24

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1659
    const-string v3, ") AND address = ?"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v54, v0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->addr:Ljava/lang/String;

    aput-object v4, v54, v3

    .line 1661
    .local v54, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete sms ref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;->ref:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1664
    .end local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;>;"
    .end local v25    # "header":Lcom/android/internal/telephony/InboundSmsHandler$QueryHeader;
    .end local v43    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v47    # "smsInfo":Lcom/android/internal/telephony/InboundSmsHandler$SmsDeleteInfo;
    .end local v51    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v54    # "whereArgs":[Ljava/lang/String;
    .end local v55    # "wheredelete":Ljava/lang/StringBuilder;
    :cond_28
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 1665
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 1666
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->clear()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1670
    if-eqz v12, :cond_29

    .line 1671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next display delay time(s) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v13, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lDelayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v34, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_2a

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v49, v3, v13

    .line 1677
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    move-wide/from16 v0, v49

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1679
    .end local v49    # "timeout":J
    :cond_2a
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v34, v3

    if-eqz v3, :cond_8

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v5, Lcom/android/internal/telephony/InboundSmsHandler;->DEFAULT_SMS_DISPATCH_TIMOUEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long v49, v3, v34

    .line 1682
    .restart local v49    # "timeout":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    goto/16 :goto_5
.end method

.method protected registerTimeoutReceiver()V
    .locals 9

    .prologue
    const/high16 v8, 0x8000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1270
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->setLogTag()V

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    .line 1277
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1278
    .local v2, "rawFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1279
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1280
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1285
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootcomplete init alarm current time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSMSTimeoutIntent:Landroid/app/PendingIntent;

    .line 1291
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->INTENT_DISPATCH_MULTIPART_SMS_DISPLAY_TIMEOUT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v1, "intentdisplay":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCheckLongSmsDisplayTimeoutIntent:Landroid/app/PendingIntent;

    .line 1294
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentdisplay":Landroid/content/Intent;
    .end local v2    # "rawFilter":Landroid/content/IntentFilter;
    :cond_0
    move v3, v5

    .line 1271
    goto/16 :goto_0

    :cond_1
    move v4, v5

    .line 1273
    goto :goto_1
.end method
