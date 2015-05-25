.class public Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    }
.end annotation


# static fields
.field private static final EVENT_CDMA_MODEM_RESET:I = 0x3e

.field private static final EVENT_CDMA_RADIO_AVAILABLE:I = 0x18

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GET_PREFERRED_NETWORK:I = 0x48

.field private static final EVENT_GSM_RADIO_AVAILABLE:I = 0x17

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_GTOC_REMOVE_INVALID_SID:I = 0x42

.field private static final EVENT_HOTSWAP_CHECK_CARD_FINISH:I = 0x3f

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_RESET_SWITCH_PROGRESS_VALUE:I = 0x50

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_CARD_POWER_OFF_DONE:I = 0x40

.field private static final EVENT_SET_CARD_POWER_ON_DONE:I = 0x41

.field private static final EVENT_SET_NEW_CARD_INSERT_STATE:I = 0x3d

.field private static final EVENT_SET_PREFERRED_NETWORK:I = 0x47

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x5

.field private static final HOT_SWAP_MILLIS:I = 0x4e20

.field private static final LOG_TAG:Ljava/lang/String; = "DualPhoneModeService"

.field private static final LTE_ON_SLOT_DEFAULT:I = 0x0

.field private static final LTE_ON_SLOT_ONE:I = 0x1

.field private static final LTE_ON_SLOT_TWO:I = 0x2

.field private static final OPERATE_C_RADIO_STEP:I = 0x6

.field private static final OPERATE_G_RADIO_STEP:I = 0x7

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x2

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final PWR_ACTION_RESET:I = 0x3

.field private static final PWR_ACTION_USB_RESET:I = 0x4

.field private static final PWR_CARD_OFF:I = 0x0

.field private static final PWR_CARD_ON:I = 0x1

.field private static final RESET_MODEM_MILLIS:I = 0x2710

.field private static final RESET_SWICH_VALUE_MILLIS:I = 0x7530

.field private static final RETRY_CLOSE_MODEM_TIMES_MAX:I = 0x3

.field private static final RETRY_OPEN_MODEM_TIMES_MAX:I = 0x3

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0x8

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0x9

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_LC_DSDS_MODE:I = 0x2

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field private static mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# instance fields
.field private checkCardThread:Ljava/lang/Thread;

.field private hotSwapUnlockPin:Z

.field private isCheckingCard:Z

.field private mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemStatus:I

.field mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemStatus:I

.field private mIntentPhoneoneType:I

.field private mIntentSwitchMode:I

.field private mIsUserSelectNet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field mNeedSwitchPhone:Z

.field mNeedSwitchTwoPhone:Z

.field private mNeetPowerOffCard:Z

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPinValues:[Ljava/lang/String;

.field private mPreferredNetwork:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterClientNo:I

.field private mRetryCloseModemTimes:I

.field private mRetryOpenModemTimes:I

.field private mRuimInserted:Z

.field private mSimInserted:Z

.field private mSlectNetTimes:I

.field private mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private final mSlotCardInfoLock:Ljava/lang/Object;

.field private mSlotConnectMode:I

.field protected mStateMonitor:Ljava/lang/Object;

.field private mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private nextselect:[I

.field private nextselectEx:[I

.field private reCheckCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    new-array v2, v9, [Ljava/lang/String;

    aput-object v7, v2, v5

    aput-object v7, v2, v6

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    iput-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    new-instance v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "CP_COMM: enter DualPhoneModeService add iPhoneModeService"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DualPhoneModeServiceHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    new-array v2, v9, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v8, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v3}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v6

    iput v8, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    new-array v2, v9, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    new-instance v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "yulong.intent.action.SIMCARD_SWITCH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "yulong.intent.action.reset_modem"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xb

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xe

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0x18

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xf

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xc

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0x17

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v2, "iPhoneModeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "iPhoneModeService"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-ne v6, v2, :cond_0

    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    :cond_0
    invoke-static {v6}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v2

    if-ne v9, v2, :cond_1

    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    :cond_1
    const-string v2, "gsm.sim.insert.state"

    const-string v3, "ABSENT"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cdma.ruim.insert.state"

    const-string v3, "ABSENT"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v2, "DualPhoneModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nofitySlotCardInfo mSlotCardInfos[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSlotCardInfos[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v8, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStaticSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    :cond_2
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0x3e

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v2, "CP_COMM: liuyong add 2012-06-28 w8260 reset"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-direct {v2, p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v4, 0x3e

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onBatteryInfoReceiver(II)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onIccSwap(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$1302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return v0
.end method

.method static synthetic access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I

    return v0
.end method

.method static synthetic access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I

    return p1
.end method

.method static synthetic access$2308(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryOpenModemTimes:I

    return v0
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return v0
.end method

.method static synthetic access$2402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V

    return-void
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I

    return v0
.end method

.method static synthetic access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I

    return p1
.end method

.method static synthetic access$2608(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRetryCloseModemTimes:I

    return v0
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    return v0
.end method

.method static synthetic access$2802(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchPhoneoneType()V

    return-void
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$3002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return p1
.end method

.method static synthetic access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return p1
.end method

.method static synthetic access$3608(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return p1
.end method

.method static synthetic access$4900()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    return v0
.end method

.method static synthetic access$5202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    return p1
.end method

.method static synthetic access$5300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    return p1
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 13
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "errNo"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", g = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "selectNetResult"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    .local v5, "mSlotConnectMode":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v8

    if-ne v8, v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, mSlotConnectMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v8, "slotConnectMode"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    .local v2, "dataState":I
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v8, :cond_5

    move v0, v6

    .local v0, "card1DataState":Z
    :goto_1
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v8, :cond_6

    move v1, v6

    .local v1, "card2DataState":Z
    :goto_2
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const/4 v2, 0x3

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, dataState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v8, "dataState"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "Success"

    if-ne p1, v8, :cond_c

    const-string v9, "selectCdmaStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v6, :cond_0

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v6, :cond_a

    :cond_0
    move v8, v6

    :goto_4
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "selectGsmStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v11, :cond_b

    :cond_1
    move v8, v6

    :goto_5
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_6
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUserWishSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUserWishSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUserWishSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[2] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v8, v8, v6

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v8, v9, :cond_e

    const-string v6, "DualPhoneModeService"

    const-string v8, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    :goto_7
    return-void

    .end local v0    # "card1DataState":Z
    .end local v1    # "card2DataState":Z
    .end local v2    # "dataState":I
    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v8

    if-gtz v8, :cond_4

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x2

    goto/16 :goto_0

    .restart local v2    # "dataState":I
    :cond_5
    move v0, v7

    goto/16 :goto_1

    .restart local v0    # "card1DataState":Z
    :cond_6
    move v1, v7

    goto/16 :goto_2

    .restart local v1    # "card2DataState":Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_a
    move v8, v7

    goto/16 :goto_4

    :cond_b
    move v8, v7

    goto/16 :goto_5

    :cond_c
    const-string v8, "TimeOut"

    if-eq p1, v8, :cond_d

    const-string v8, "RILError"

    if-ne p1, v8, :cond_2

    :cond_d
    const-string v8, "selectCdmaStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "selectGsmStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_e
    const-string v8, "DualPhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eq v8, v12, :cond_f

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v8, v8, v6

    if-eq v8, v12, :cond_f

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_7

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_f
    const-string v6, "DualPhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .param p1, "batteryStatus"    # I

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "HOTSWAP: cancle timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private checkUserSelectValid(III)Z
    .locals 3
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, -0x1

    if-lt p3, v2, :cond_3

    if-le p3, v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    if-eqz p1, :cond_1

    :cond_5
    if-nez p3, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    if-ne p3, v0, :cond_1

    if-nez p2, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private checkWhetherNeedSwitchBindMode(IIII)Z
    .locals 8
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iLeftSlotModemTypeTemp"    # I
    .param p4, "iRightSlotModemTypeTemp"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v0, -0x1

    .local v0, "connectMode":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "which_slot_regist_lte"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "lteId":I
    const-string v4, "DualPhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lteId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",connectMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v2, v3

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    if-ne v0, v3, :cond_3

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v2, v3

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_a

    if-ne p3, v7, :cond_4

    if-eq p4, v7, :cond_0

    :cond_4
    if-nez p3, :cond_5

    if-eq p4, v7, :cond_0

    :cond_5
    if-ne p3, v7, :cond_6

    if-eqz p4, :cond_0

    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p2, v3, :cond_8

    :cond_7
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    move v2, v3

    goto :goto_0

    :cond_8
    if-eq p1, v3, :cond_9

    if-ne p2, v7, :cond_0

    :cond_9
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z

    move v2, v3

    goto :goto_0

    :cond_a
    if-ne p3, v7, :cond_b

    if-eq p4, v3, :cond_b

    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    iput-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move v2, v3

    goto :goto_0

    :cond_b
    if-nez v0, :cond_d

    if-eq p1, v7, :cond_c

    if-ne p2, v3, :cond_0

    :cond_c
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v2, v3

    goto/16 :goto_0

    :cond_d
    if-ne v0, v3, :cond_0

    if-eq p1, v3, :cond_e

    if-ne p2, v7, :cond_0

    :cond_e
    if-eq v1, v7, :cond_0

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    move v2, v3

    goto/16 :goto_0
.end method

.method private checkWhetherNeedSwitchPhone(II)Z
    .locals 6
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .local v0, "phoneOneType":I
    if-ne v0, v5, :cond_2

    if-eq p1, v5, :cond_3

    :cond_2
    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    :cond_3
    if-ne p1, v5, :cond_4

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    goto :goto_1
.end method

.method private convertCardState(I)I
    .locals 1
    .param p1, "src"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "slotId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "phoneId":I
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    return-void

    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardStatusByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_2

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v1, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .locals 2

    .prologue
    const-class v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "myBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "myTp":Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method

.method private getModemPowerStatus(I)I
    .locals 9
    .param p1, "modemType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter into getModemPowerStatus(), init state, mCdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-ne v7, p1, :cond_2

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "GET_CDMA_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    :cond_2
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    :cond_3
    const-string v2, "GET_GSM_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto/16 :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "myBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, "myNS":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method private getPinPukNumByCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x1

    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getSlotConnectMode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getSlotConnectMode()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-gez v1, :cond_2

    const-string v1, "mSlotConnectMode < 0,set the value SLOT_PARALLEL_MODE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotConnectMode, mSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getSynPinPukValidCount(III)I
    .locals 6
    .param p1, "reqType"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualPhoneModeService::getSynPinPukValidCount(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    return v1

    :cond_1
    if-ne p1, v4, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_4

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    :cond_4
    if-nez v1, :cond_0

    if-ne p1, v4, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from getSynPinPukValidCount()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "iCardNum":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private isActivePhoneByPhoneId(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, "slotId":I
    const/4 v0, 0x0

    .local v0, "radioState":Z
    if-ne p1, v3, :cond_2

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v3, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_2
    if-ne p1, v4, :cond_0

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    :cond_3
    const-string v3, "CP_COMM: invalid phone ID"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getCardInfoBySlotId == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_1
.end method

.method private isLTEWhiteCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .local v3, "result":I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .local v2, "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedSwitchToUnlockPin(), slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-ne v2, v4, :cond_3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v5, v7, :cond_1

    :cond_3
    if-ne v2, v7, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v7, :cond_1

    :cond_4
    if-ne v2, v4, :cond_6

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .local v1, "gsmModemStatus":I
    if-nez v1, :cond_5

    const/4 v3, 0x1

    .end local v1    # "gsmModemStatus":I
    :cond_5
    :goto_1
    move v4, v3

    goto :goto_0

    :cond_6
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .local v0, "cdmaModemStatus":I
    if-nez v0, :cond_5

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 8
    .param p1, "checkType"    # I
    .param p2, "result"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "COMM:notifyPinPukCheckResult,mGsmImsiResponse is not null"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPinPukCheckResult(), mSlotCardInfoArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].mGsmImsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMCCMNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v0, "saveInfoToNativeService(mCardType,mMCCMNC,mGsmOperId,SlotId)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string v0, "notifyPinPukCheckResult(), test"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pinLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .local v1, "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pukLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .local v1, "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private onBatteryInfoReceiver(II)V
    .locals 2
    .param p1, "iLevel"    # I
    .param p2, "volt"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: onBatteryInfoReceiver iLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "CP_COMM: iLevel value is invalid!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onIccSwap(Ljava/lang/String;I)V
    .locals 14
    .param p1, "simName"    # Ljava/lang/String;
    .param p2, "simState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .local v6, "mSlotId":I
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    const-string v0, "persist.sys.sim1.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "simCard1Property":Ljava/lang/String;
    const-string v0, "persist.sys.sim2.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "simCard2Property":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP:simCard1Property ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simCard2Property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCheckingCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-nez p2, :cond_b

    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    iget v10, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .local v10, "mCardType":I
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v11

    .local v11, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cdma.ruim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    const-string v0, "HOTSWAP:remove card,clear ruim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->handlepullcard()V

    :cond_1
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-eqz v0, :cond_6

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "mCardType":I
    .end local v11    # "phoneId":I
    :goto_2
    return-void

    :cond_2
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "HOTSWAP: fake simState = 0, return! "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .restart local v10    # "mCardType":I
    .restart local v11    # "phoneId":I
    :cond_4
    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    const/4 v0, 0x4

    if-ne v10, v0, :cond_5

    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    :goto_3
    const-string v0, "gsm.sim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HOTSWAP:remove card,clear sim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlepullcard(III)V

    goto :goto_1

    :cond_5
    const-string v0, "gsm.sim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_3

    .restart local v8    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_7

    const-string v0, ""

    invoke-direct {p0, v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    :cond_7
    const-string v0, "ABSENT"

    const-string v1, "cdma.ruim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ABSENT"

    const-string v1, "gsm.sim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    if-ne v11, v0, :cond_a

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    :cond_8
    :goto_4
    const-string v0, "HOTSWAP:no card,close network firstly!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :cond_9
    new-instance v9, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent1":Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .end local v9    # "intent1":Landroid/content/Intent;
    :cond_a
    const/4 v0, 0x2

    if-ne v11, v0, :cond_8

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_4

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "mCardType":I
    .end local v11    # "phoneId":I
    :cond_b
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "HOTSWAP: fake SimState > 0, return!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    :cond_f
    :goto_5
    new-instance v8, Landroid/content/Intent;

    const-string v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "msgFlag"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "HOTSWAP: sim insert,setDesiredRadioPower(false)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-nez v0, :cond_11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "checkCardTag":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: before hotSwapCheckCard(),set checkCardTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->setSlotId(I)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    const-string v2, "mCheckCardService"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->startTimer()V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_2

    .end local v7    # "checkCardTag":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    goto/16 :goto_5

    .restart local v8    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_11
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: isCheckingCard ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reCheckCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private onWaitRefreshTimedOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "enter into onWaitRefreshTimedOut()"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifyBindSlots()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifySwitchSlots()V

    goto :goto_0
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, -0x1

    .local v1, "connectMode":I
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .local v0, "cdmaRadioPower":Z
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .local v2, "gsmRadioPower":Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter operateRadioCdmaAndGsm, mSlotConnectMode= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", cdma = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", gsm = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v4, "yulong.lcdsds.mode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "lteMode":I
    if-lez v1, :cond_0

    if-eq v1, v8, :cond_0

    if-ne v1, v5, :cond_10

    if-ne v5, v3, :cond_10

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v4, v5, :cond_2

    :cond_1
    if-nez v0, :cond_9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_9

    :cond_2
    const-string v4, "enter operateRadioCdmaAndGsm cdma: no need to operate "

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v10

    :goto_1
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v4, v8, :cond_5

    :cond_4
    if-nez v2, :cond_d

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_d

    :cond_5
    const-string v4, "enter operateRadioCdmaAndGsm gsm: no need to operate "

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v2, :cond_c

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v9

    :goto_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v10

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v9

    if-ne v4, v5, :cond_7

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    :cond_7
    return-void

    :cond_8
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isTestMode()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_a

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredNetworkModeForCGSwitch()V

    :cond_a
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v4, v6

    if-nez v0, :cond_b

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    const-string v4, "SLOT_PARALLEL_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move v4, v6

    goto :goto_4

    :cond_c
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    goto :goto_2

    :cond_d
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v7, :cond_e

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v4, v8, :cond_e

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    const/4 v2, 0x1

    goto :goto_3

    :cond_e
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    if-nez v2, :cond_f

    move v6, v5

    :cond_f
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    const-string v4, "SLOT_PARALLEL_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v4, v5, :cond_12

    :cond_11
    if-nez v0, :cond_17

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_17

    :cond_12
    const-string v4, "enter operateRadioCdmaAndGsm cdma: no need to operate "

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_13

    if-nez v0, :cond_13

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :cond_13
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v10

    :goto_5
    if-eqz v2, :cond_14

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v4, v8, :cond_15

    :cond_14
    if-nez v2, :cond_19

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_19

    :cond_15
    const-string v4, "enter operateRadioCdmaAndGsm gsm: no need to operate "

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v4

    if-eqz v4, :cond_16

    if-nez v2, :cond_16

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :cond_16
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v4, v9

    goto/16 :goto_3

    :cond_17
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v7, v4, v6

    if-nez v0, :cond_18

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    const-string v4, "SLOT_CROSS_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_5

    :cond_18
    move v4, v6

    goto :goto_6

    :cond_19
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v5

    if-nez v2, :cond_1a

    move v6, v5

    :cond_1a
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    const-string v4, "SLOT_CROSS_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "cardType"    # I
    .param p2, "cdmaImsi"    # Ljava/lang/String;
    .param p3, "mncMcc"    # Ljava/lang/String;
    .param p4, "gsmImsi"    # Ljava/lang/String;
    .param p5, "gsmOperId"    # Ljava/lang/String;
    .param p6, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    .local v7, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveInfoToNativeService(), cardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cdmaImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsmImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mncMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,gsmOperId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    const-string v1, "myNativeSlotService != null"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v7

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .local v0, "cdmaModemStatus":I
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .local v1, "gsmModemStatus":I
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_close_network"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    move v2, v3

    .local v2, "isLowPower":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter selectCloseModemCdmaOrGsm.isLowPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdmaModemStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gsmModemStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v5, :cond_6

    if-ne v0, v3, :cond_6

    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-ne v3, v5, :cond_2

    if-ne v2, v3, :cond_2

    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :goto_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v5, :cond_b

    if-ne v1, v3, :cond_b

    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-eq v5, v7, :cond_b

    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-ne v3, v5, :cond_7

    if-ne v2, v3, :cond_7

    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v9

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v8

    if-ne v4, v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    .end local v2    # "isLowPower":Z
    :cond_1
    move v2, v4

    goto/16 :goto_0

    .restart local v2    # "isLowPower":Z
    :cond_2
    invoke-static {v3}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-nez v5, :cond_5

    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v5, v8

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v5, v8

    goto :goto_1

    :cond_7
    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v5

    if-nez v5, :cond_a

    if-eq v2, v3, :cond_9

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v5

    if-ne v3, v5, :cond_a

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_a

    :cond_9
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v5, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_2

    :cond_a
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v4, v9

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v4, v9

    goto/16 :goto_2
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .local v0, "cdmaModemStatus":I
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .local v1, "gsmModemStatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter selectOpenModemCdmaOrGsm(), cdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,gsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v3, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v6

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v7

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v6

    goto :goto_1
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .param p2, "pinLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .param p2, "pukLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private set8KCardInsertState(I)V
    .locals 9
    .param p1, "iSlotId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, "newInsertedState":Z
    const-string v0, "ABSENT"

    .local v0, "RUIM_INSERT_STATE":Ljava/lang/String;
    const-string v1, "ABSENT"

    .local v1, "SIM_INSERT_STATE":Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v3, "cdma.ruim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    :cond_1
    :goto_2
    const-string v3, "cdma.ruim.insert.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gsm.sim.insert.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-void

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_1

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v3, "gsm.sim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v7, v5, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v3, :sswitch_data_1

    :goto_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    :cond_6
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    const-string v3, "cdma.ruim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v6, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_5
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    goto/16 :goto_2

    :sswitch_1
    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v6, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v6, :cond_9

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_9
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newInsertedState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const-string v3, "gsm.sim.insert.state"

    const-string v4, "PRESENT"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_6
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4, v7, v5, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .param p0, "phone1"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "phone2"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sput-object p2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .param p1, "iPreferredModemType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, p1, :cond_0

    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreferredNetworkModeForCGSwitch()V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/16 v13, 0xb

    const/16 v12, 0x47

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .local v1, "is1xOrDoLteOnly":Z
    const/4 v2, 0x0

    .local v2, "lteSwitch":I
    const/4 v5, 0x0

    .local v5, "tdLteSwitch":I
    const-string v6, "persist.yulong.net.current"

    const-string v7, "4g"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "netCurrent":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The netCurrent of this software version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-string v6, "4g"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_td_lte_switch_statue"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v2, :cond_0

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch: lteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v2, v11, :cond_6

    const-string v6, "ON"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch: TdlteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v5, v11, :cond_7

    const-string v6, "ON"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    const-string v6, "waiting for get preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_3

    :cond_2
    const-string v6, "operateRadioCdmaAndGsm: is1xOrDoLteOnly = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_4

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-ne v2, v11, :cond_8

    if-ne v5, v11, :cond_8

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    const-string v6, "OFF"

    goto/16 :goto_0

    :cond_7
    const-string v6, "OFF"

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    :cond_8
    if-nez v1, :cond_5

    const-string v6, "persist.yulong.net.mpseries"

    const-string v7, "4G_V1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "mpseriesMode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch:mpseriesMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_a

    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_5
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    :cond_a
    if-ne v2, v11, :cond_c

    invoke-virtual {p0, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isLTECard(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isLTEWhiteCard(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    :cond_c
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6
.end method

.method private startTimer()V
    .locals 1

    .prologue
    const-string v0, "HOTSWAP: start timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$3;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private switchPhoneoneType()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "cdma"

    .local v1, "newPhoneType":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->dispose()V

    :cond_0
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    if-eqz v2, :cond_2

    const-string v1, "bothPhone"

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->disposeAll()V

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :cond_2
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v1, "gsm"

    goto :goto_0
.end method

.method private switchSlotBindMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter switchSlotBindMode,mIntentSwitchMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "success":Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-nez v3, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-nez v3, :cond_5

    iput v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    :goto_2
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v2, v3, v5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v2, v1

    goto :goto_0

    .restart local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z

    move-result v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v5, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_5
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    if-ne v3, v2, :cond_6

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_2

    :cond_6
    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, "errNo":I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    const-string v2, "Success"

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :cond_1
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    :cond_4
    const-string v2, "RILError"

    if-eq p1, v2, :cond_5

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_1

    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x9

    if-gt v1, v2, :cond_7

    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_6

    add-int/lit8 v0, v1, 0x1

    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateSelectedPreferredModemType()V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_b

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_f

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    return v1
.end method

.method private updateSelectedPreferredModemType()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0
.end method

.method private waitAfterOpenGsmModem()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radio_stae = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "i":I
    :cond_1
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitAfterUnlockPin(I)V
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    const/16 v0, 0x3e8

    .local v0, "sleep_millis":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v0, 0xbb8

    :cond_0
    :goto_0
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v5

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaModemReset(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method public disposeAll()V
    .locals 4

    .prologue
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    array-length v1, v2

    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaModemReset(Landroid/os/Handler;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableLTESwitch(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public enableLTESwitchAuto()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 6
    .param p1, "iSlotId"    # I

    .prologue
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .local v1, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .local v2, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :try_start_2
    const-string v3, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    .end local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_0
    return-object v3

    .restart local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .restart local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM:iSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getCardInfoBySlotId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v5, :cond_3

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v3, -0x4

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimCard on slot1,make it no card,cardtype ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->set8KCardInsertState(I)V

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .param p1, "iSlotId"    # I

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 1
    .param p1, "phoneid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    .local v0, "slotId":I
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ne p1, v3, :cond_3

    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPinPukValidCount(II)I
    .locals 13
    .param p1, "pinType"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v12, 0x5

    const/16 v11, 0x33

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v4, -0x5

    .local v4, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isSelectNet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    .local v3, "phoneId":I
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPinPukValidCount:phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSlotCardInfoArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].mCardType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, p2

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_b

    if-ne v3, v8, :cond_2

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v6, v8, :cond_3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    :cond_2
    if-ne v3, v9, :cond_b

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v6, v9, :cond_3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_3
    const-string v6, "getPinPukValidCount: need swtich slot to get pin/puk valid count"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .local v0, "cdmaModemStatus":I
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .local v1, "gsmModemStatus":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v12, :cond_4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v10, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x6

    :goto_2
    const/16 v6, 0x9

    if-gt v2, v6, :cond_5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-ne v3, v8, :cond_8

    iput v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    :cond_6
    :goto_3
    if-ne v0, v9, :cond_9

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :goto_4
    if-ne v1, v9, :cond_a

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    :goto_5
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v6, v6, v10

    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v6, v6, v9

    if-ne v6, v9, :cond_7

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    :cond_7
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0xc350

    invoke-virtual {v6, v7, v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "cdmaModemStatus":I
    .end local v1    # "gsmModemStatus":I
    .end local v2    # "i":I
    :goto_6
    move v5, v4

    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto/16 :goto_0

    .end local v5    # "result":I
    .restart local v0    # "cdmaModemStatus":I
    .restart local v1    # "gsmModemStatus":I
    .restart local v2    # "i":I
    .restart local v4    # "result":I
    :cond_8
    if-ne v3, v9, :cond_6

    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v6, v10

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v6, v9

    goto :goto_5

    .end local v0    # "cdmaModemStatus":I
    .end local v1    # "gsmModemStatus":I
    .end local v2    # "i":I
    :cond_b
    if-ne v3, v8, :cond_e

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .restart local v1    # "gsmModemStatus":I
    if-nez v1, :cond_d

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    const/16 v6, 0x9

    if-gt v2, v6, :cond_c

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x4

    aput v10, v6, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v10, v6, v12

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v6, v7, v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .end local v2    # "i":I
    :cond_d
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto :goto_6

    .end local v1    # "gsmModemStatus":I
    :cond_e
    invoke-direct {p0, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .restart local v0    # "cdmaModemStatus":I
    if-nez v0, :cond_10

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    const/16 v6, 0x9

    if-gt v2, v6, :cond_f

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v7, 0x3

    aput v10, v6, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v10, v6, v12

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v7, v11}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v6, v7, v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .end local v2    # "i":I
    :cond_10
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto/16 :goto_6
.end method

.method public isLTECard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].mCsimImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].mCsimImsi = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLTESwitchAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isLTESwitched()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method notifyCradStateChangedIntent()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "ss"

    const-string v2, "PERSENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    const-string v2, "NO REASON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getValidCardNum()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    move v1, p2

    .local v1, "status":I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    goto :goto_0

    .end local v1    # "status":I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    :cond_9
    const/16 v2, 0xc

    if-ne p1, v2, :cond_a

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    :cond_a
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I
    .locals 1
    .param p1, "slotInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 0
    .param p1, "modetype"    # I
    .param p2, "powersate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 11
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: DualPhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preSID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    move v4, p1

    .local v4, "iLeftSlotModemTypeTemp":I
    move v5, p2

    .local v5, "iRightSlotModemTypeTemp":I
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkUserSelectValid(III)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v8

    if-ge v7, v8, :cond_1

    const/4 p1, 0x1

    :cond_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 p2, 0x2

    :cond_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    const-string v7, "DualPhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsUserSelectNet = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p3, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-nez p3, :cond_6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :goto_1
    const/4 v7, 0x1

    if-eq p1, v7, :cond_4

    const/4 v7, 0x1

    if-ne v7, p2, :cond_8

    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :goto_2
    const/4 v7, 0x2

    if-eq p1, v7, :cond_5

    const/4 v7, 0x2

    if-ne v7, p2, :cond_9

    :cond_5
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :goto_3
    const/4 v3, 0x0

    :goto_4
    const/16 v7, 0x9

    if-gt v3, v7, :cond_a

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x1

    if-ne p3, v7, :cond_7

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x5

    const/4 v9, 0x1

    aput v9, v7, v8

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkWhetherNeedSwitchBindMode(IIII)Z

    move-result v7

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkWhetherNeedSwitchPhone(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: DualPhoneModeService mNeedSwitchBindMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIntentSwitchMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mNeedSwitchPhone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p1, :cond_b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, p2, :cond_b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v7, v8, :cond_b

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-nez v7, :cond_b

    const-string v7, "it is the same select as last select,return sucess"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_b
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    const-string v7, "wait close radio power!"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v9, 0x3a98

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "close radio power over!"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchPhoneoneType()V

    :cond_d
    :goto_6
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->removeMessages(I)V

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x9c40

    invoke-virtual {v7, v8, v9, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_7
    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_e
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    const-string v7, "yulong.dispose.progress"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "ret":Z
    const/4 v0, -0x1

    .local v0, "cdmaModemStatus":I
    const/4 v2, -0x1

    .local v2, "gsmModemStatus":I
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_f

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v6

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :goto_8
    const/4 v7, 0x1

    if-ne v2, v7, :cond_10

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v6

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    :goto_9
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    goto/16 :goto_6

    :cond_f
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v7, v8

    goto :goto_8

    :cond_10
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput v9, v7, v8

    goto :goto_9

    .end local v0    # "cdmaModemStatus":I
    .end local v2    # "gsmModemStatus":I
    .end local v6    # "ret":Z
    :cond_11
    iget v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    :goto_a
    const/4 v3, 0x0

    :goto_b
    const/4 v7, 0x2

    if-gt v3, v7, :cond_13

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_12
    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    goto :goto_a

    :cond_13
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    goto/16 :goto_6

    :cond_14
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0xc350

    invoke-virtual {v7, v8, v9, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_15
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x7530

    invoke-virtual {v7, v8, v9, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7
.end method

.method public selectModemAndPreferredSlotId()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    iput v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentPhoneoneType:I

    const-string v0, "DualPhoneModeService"

    const-string v1, "selectModemAndPreferredSlotId() after switch phone instance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x3e

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    if-ne v0, v5, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchTwoPhone:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->start()V

    return-void
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .param p1, "callback"    # Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    .param p2, "events"    # I

    .prologue
    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v3, 0x0

    .local v3, "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .local v4, "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_2
    return-void

    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    iput-object p1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setPinByIccLockSettings sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    const/4 v1, 0x1

    return v1
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .local v1, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const/4 v5, 0x1

    iput v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v3, p2

    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    :cond_2
    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget-byte v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .local v1, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v5, 0x1

    iput v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/16 v5, 0xa

    iput-byte v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v3, p3

    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    :cond_2
    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public unregisterForSwitchPhone(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCardStateToNativeService(II)I
    .locals 4
    .param p1, "cardState"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    const-string v2, "enter into updateCardStateToNativeService()"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    const-string v2, "myNativeSlotService != null"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->updateCardStateToNativeService(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCardStateToNativeService(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
