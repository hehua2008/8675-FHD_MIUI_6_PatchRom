.class public Lcom/yulong/android/internal/telephony/PhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/PhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    }
.end annotation


# static fields
.field private static final ACTIVE_C_SUBSCRIPTION:I = 0x5

.field private static final ACTIVE_G_SUBSCRIPTION:I = 0x6

.field private static final EVENT_AIR_MODE_CHANGE:I = 0x53

.field private static final EVENT_BROADCAST_LTE_SWITCH_FINISHED:I = 0x50

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUBSCRIPTION_DEACTIVE:I = 0x21

.field private static final EVENT_CDMA_SUBSCRIPTION_READY:I = 0x26

.field private static final EVENT_CDMA_SUBSCRIPTION_READY2:I = 0x24

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CHANGE_PHONE_ONE_SESSION_DONE:I = 0x4a

.field private static final EVENT_CHANGE_PHONE_TWO_SESSION_DONE:I = 0x4b

.field private static final EVENT_CHECK_CDMA_RIL_POWERON_RESULT:I = 0x34

.field private static final EVENT_CHECK_GSM_RIL_POWERON_RESULT:I = 0x35

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_C_LOST_CARD_REBOOT:I = 0x37

.field private static final EVENT_C_PHONE_DISCONNECT:I = 0x39

.field private static final EVENT_DEACTIVE_LOCK_SIM_DONE:I = 0x51

.field private static final EVENT_DEACT_PHONE1_DONE:I = 0x4d

.field private static final EVENT_DEACT_PHONE2_DONE:I = 0x4e

.field private static final EVENT_DELAY_LOST_CARD_REBOOT:I = 0x3b

.field private static final EVENT_ENABLE_LTE_SWITCH:I = 0x4f

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GET_PREFERRED_NETWORK:I = 0x48

.field private static final EVENT_GET_SESSION_STATE_COMPLETE:I = 0x4c

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUBSCRIPTION_DEACTIVE:I = 0x20

.field private static final EVENT_GSM_SUBSCRIPTION_READY:I = 0x27

.field private static final EVENT_GSM_SUBSCRIPTION_READY2:I = 0x25

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_G_LOST_CARD_REBOOT:I = 0x38

.field private static final EVENT_G_PHONE_DISCONNECT:I = 0x3a

.field private static final EVENT_ICC_STATUS_CHANGE:I = 0x49

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_CDMA_MODEM_POWER_PINPUK:I = 0x3c

.field private static final EVENT_OPEN_CDMA_SELECT_DONE:I = 0x1f

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_OPEN_GSM_MODEM_POWER_PINPUK:I = 0x3d

.field private static final EVENT_OPEN_GSM_SELECT_DONE:I = 0x1e

.field private static final EVENT_RILD_SOCKET_CONNECTED:I = 0x40

.field private static final EVENT_SELECT_MODE_DELAY:I = 0x52

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_PREFERRED_NETWORK:I = 0x47

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x36

.field private static final EVENT_SMS_DELAY_TIME_OUT:I = 0x3f

.field private static final EVENT_SUBSCRIPTION_DEACTIVE_DONE:I = 0x3e

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneModeService"

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x0

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SUB_ACTIVATE:I = 0x1

.field private static final SUB_DEACTIVATE:I = 0x0

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mHasCardOnSlotOne:I

.field private static mHasCardOnSlotTwo:I

.field public static final mLock4:Ljava/lang/Object;

.field private static mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field private static mPinValues:[Ljava/lang/String;

.field private static mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;


# instance fields
.field private AIRPLANE_MODE_FLAG:I

.field private ActiveOrNoCdma:I

.field private ActiveOrNoGsm:I

.field private actArray:[I

.field private deactArray:[I

.field private firstMemFlag:Z

.field isFirstIn_RUIM:Z

.field isFirstIn_SIM:Z

.field isHasCardforIndia:Z

.field private isShutDown:Z

.field private mActivateOrDeactiveTime:[I

.field private mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field private mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mInitCompleted:Z

.field private mIntentPhoneType:I

.field private mIsUserSelectNet:Z

.field private mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private mLTESwitched:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field private final mLock5:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field mNeedSwitchPhone:Z

.field private mNeedUnlockMode:I

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPreferredNetwork:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/PhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterClientNo:I

.field private mSelectLock:Z

.field private mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field private mSlotConnectMode:I

.field protected mStateMonitor:Ljava/lang/Object;

.field private mStateRadio:[Z

.field private mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private modechange:[I

.field private nextselect:[I

.field private nextselectEx:[I

.field private pm:Landroid/os/PowerManager;

.field private processStateCdma:I

.field private processStateGsm:I

.field private ruim_insert_state:Ljava/lang/String;

.field private sSmsDelayCount:I

.field private setsubmodestate:I

.field private silenceReboot:Z

.field private sim_insert_state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 306
    new-array v0, v1, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    .line 327
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    .line 385
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 386
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1468
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 67
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 68
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 69
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 70
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 71
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 72
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    .line 258
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 259
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    .line 261
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    .line 263
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    .line 269
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    .line 270
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    .line 271
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    .line 272
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 295
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 296
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 297
    new-array v2, v4, [Z

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    .line 298
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 299
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 300
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 301
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 302
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 303
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 330
    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    .line 334
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 338
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 341
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 344
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 345
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 348
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 349
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 351
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 354
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    .line 356
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    .line 357
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    .line 358
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    .line 360
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 387
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    .line 388
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 390
    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    .line 391
    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 392
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 393
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 394
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 397
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    .line 398
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    .line 400
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    .line 401
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    .line 402
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    .line 404
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 494
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    .line 1469
    const-string v2, "CP_COMM: enter PhoneModeService add iPhoneModeService"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1470
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PhoneModeServiceHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1472
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 1474
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1475
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    .line 1476
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerClientToNativeService()V

    .line 1478
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1479
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1480
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1482
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 1483
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 1484
    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1486
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1490
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1491
    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1495
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x37

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1497
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x40

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1498
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 1499
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->createWakelock()V

    .line 1500
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    if-eqz v2, :cond_4

    .line 1507
    :goto_0
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1509
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xb

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xe

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1513
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xf

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1515
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xc

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1517
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1520
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x27

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1522
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x26

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1525
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isHotSwapSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x49

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1529
    :cond_0
    const-string v2, "iPhoneModeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1530
    const-string v2, "iPhoneModeService"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1531
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1538
    :goto_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1539
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1546
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    if-eqz v2, :cond_2

    .line 1547
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v8, :cond_1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v8, :cond_2

    .line 1549
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    .line 1558
    :cond_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1559
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v6, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1561
    :cond_3
    return-void

    .line 1503
    :cond_4
    const-string v2, "get PowerManager service fail"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1534
    :cond_5
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 269
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 270
    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 271
    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 297
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 330
    nop

    :array_5
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

    .line 398
    :array_6
    .array-data 4
        0x0
        0x0
        0x1
    .end array-data

    .line 400
    :array_7
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$002(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    return p1
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return p1
.end method

.method static synthetic access$2308(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return p1
.end method

.method static synthetic access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    return v0
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    return v0
.end method

.method static synthetic access$302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    return p1
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    return-void
.end method

.method static synthetic access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    return p1
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V

    return-void
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return v0
.end method

.method static synthetic access$4502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return p1
.end method

.method static synthetic access$4600(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->judgeCardStatus(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleChangeSessionResult()V

    return-void
.end method

.method static synthetic access$5202(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->changeSession()V

    return-void
.end method

.method static synthetic access$5500(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleEnableLTESwitch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    return-void
.end method

.method static synthetic access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    return-object v0
.end method

.method static synthetic access$5800(Lcom/yulong/android/internal/telephony/PhoneModeService;ZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent_EX(ZZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    return-object v0
.end method

.method static synthetic access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method private activeOrDeactiveSubscription()V
    .locals 11

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3947
    .local v6, "cdmaRadioPower":Z
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 3948
    .local v7, "gsmRadioPower":Z
    const/4 v8, 0x0

    .line 3950
    .local v8, "ret":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter activeOrDeactiveSubscription, cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter activeOrDeactiveSubscription, ACTIVE_C_SUBSCRIPTION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ACTIVE_G_SUBSCRIPTION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3956
    const/4 v2, 0x0

    .line 3957
    .local v2, "substate":I
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_8

    .line 3959
    :cond_1
    if-nez v6, :cond_2

    .line 3960
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 3962
    :cond_2
    const-string v0, "activeOrDeactiveSubscription cdma: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3963
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4017
    :goto_0
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    :cond_3
    if-nez v7, :cond_11

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_11

    .line 4019
    :cond_4
    if-nez v7, :cond_5

    .line 4020
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4022
    :cond_5
    const-string v0, "activeOrDeactiveSubscription gsm: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4023
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4067
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4069
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    .line 4071
    :cond_7
    return-void

    .line 3965
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_9

    .line 3966
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    move v9, v2

    .line 3971
    .end local v2    # "substate":I
    .local v9, "substate":I
    :goto_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 3972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  CDMA SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xinghainan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3974
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3975
    const-string v0, "now in enterprise region ,not need to active/deactive for card 1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3976
    const/4 v8, 0x1

    .line 3977
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 3994
    :goto_3
    const/4 v0, 0x1

    if-ne v0, v8, :cond_c

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 3968
    :cond_9
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 3969
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    move v9, v2

    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    goto :goto_2

    .line 3979
    :cond_a
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_b

    .line 3982
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x51

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    .line 3985
    const/4 v8, 0x0

    .line 3986
    const-string v0, "SimCard lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 3989
    :cond_b
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1f

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    goto :goto_3

    .line 3996
    :cond_c
    if-nez v8, :cond_e

    .line 3997
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 3998
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 4002
    :goto_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4003
    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 4000
    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_4

    .line 4004
    :cond_e
    const/4 v0, -0x1

    if-ne v0, v8, :cond_f

    .line 4005
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 4006
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4010
    :goto_5
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4011
    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_f
    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 4008
    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_10
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    .line 4026
    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    :cond_11
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v0, :cond_12

    .line 4027
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4033
    :goto_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 4034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  GSM SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  nextselectEx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4036
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4037
    const-string v0, "now in enterprise region ,not need to active/deactive for card 2"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4038
    const/4 v8, 0x1

    .line 4039
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4045
    :goto_7
    const/4 v0, 0x1

    if-eq v0, v8, :cond_6

    .line 4047
    if-nez v8, :cond_15

    .line 4048
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 4049
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4053
    :goto_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4054
    const-string v0, "activeOrDeactiveSubscription  GSM SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4029
    :cond_12
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4030
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_6

    .line 4041
    :cond_13
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1e

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    goto :goto_7

    .line 4051
    :cond_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_8

    .line 4055
    :cond_15
    const/4 v0, -0x1

    if-ne v0, v8, :cond_6

    .line 4056
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 4057
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4061
    :goto_9
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4062
    const-string v0, "activeOrDeactiveSubscription  GSM SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4059
    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_9
.end method

.method private broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "pullOrPush"    # I

    .prologue
    .line 1436
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "phoneName"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 1444
    const-string v1, "pullOrPush"

    const-string v2, "pull"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    :cond_0
    :goto_0
    const-string v1, "slotId"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1449
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1450
    return-void

    .line 1445
    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 1446
    const-string v1, "pullOrPush"

    const-string v2, "push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private broadcastLTESwitchFinished()V
    .locals 3

    .prologue
    .line 4501
    const-string v1, "CP_COMM: enter broadcastLTESwitchFinished!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4503
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.ACTION_LTE_SWITCH_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4506
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4507
    return-void
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "errNo"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1776
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

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", g = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1783
    new-instance v4, Landroid/content/Intent;

    const-string v8, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "selectNetResult"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    const/4 v5, -0x1

    .line 1790
    .local v5, "mSlotConnectMode":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 1791
    const/4 v5, 0x1

    .line 1795
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

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1796
    const-string v8, "slotConnectMode"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    const/4 v2, 0x0

    .line 1802
    .local v2, "dataState":I
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 1803
    .local v0, "card1DataState":Z
    :goto_1
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v8, :cond_7

    move v1, v6

    .line 1804
    .local v1, "card2DataState":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 1805
    const/4 v2, 0x3

    .line 1813
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

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1814
    const-string v8, "dataState"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1817
    const-string v8, "Success"

    if-ne p1, v8, :cond_d

    .line 1818
    const-string v9, "selectCdmaStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v6, :cond_0

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v6, :cond_b

    :cond_0
    move v8, v6

    :goto_4
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1822
    const-string v9, "selectGsmStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v11, :cond_c

    :cond_1
    move v8, v6

    :goto_5
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1826
    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1842
    :cond_2
    :goto_6
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1843
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[2] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v6

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v8, v9, :cond_11

    .line 1852
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1853
    const/16 v8, 0xa

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v9

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eqz v8, :cond_10

    .line 1855
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    if-ne v6, v8, :cond_3

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eq v11, v8, :cond_4

    :cond_3
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    if-ne v11, v8, :cond_f

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-ne v6, v8, :cond_f

    .line 1859
    :cond_4
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_7
    return-void

    .line 1793
    .end local v0    # "card1DataState":Z
    .end local v1    # "card2DataState":Z
    .end local v2    # "dataState":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v2    # "dataState":I
    :cond_6
    move v0, v7

    .line 1802
    goto/16 :goto_1

    .restart local v0    # "card1DataState":Z
    :cond_7
    move v1, v7

    .line 1803
    goto/16 :goto_2

    .line 1806
    .restart local v1    # "card2DataState":Z
    :cond_8
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 1807
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1808
    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 1809
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1811
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    move v8, v7

    .line 1818
    goto/16 :goto_4

    :cond_c
    move v8, v7

    .line 1822
    goto/16 :goto_5

    .line 1829
    :cond_d
    const-string v8, "TimeOut"

    if-eq p1, v8, :cond_e

    const-string v8, "RILError"

    if-ne p1, v8, :cond_2

    .line 1834
    :cond_e
    const-string v8, "selectCdmaStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1836
    const-string v8, "selectGsmStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1838
    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1840
    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1861
    :cond_f
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->reselect net 4 GC switch"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :goto_8
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_7

    .line 1865
    :catch_0
    move-exception v3

    .line 1866
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 1872
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1875
    :cond_11
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const-wide/16 v8, 0xbb8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1881
    :goto_9
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1882
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_7

    .line 1878
    :catch_1
    move-exception v3

    .line 1879
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9
.end method

.method private broadcastSelectNetFinishIntent_EX(ZZII)V
    .locals 4
    .param p1, "cdma"    # Z
    .param p2, "gsm"    # Z
    .param p3, "dataState"    # I
    .param p4, "iPreferredSlotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: broadcastSelectNetFinishIntent_EX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1889
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectNetResult"

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    const-string v1, "slotConnectMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: broadcastSelectNetFinish, dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1892
    const-string v1, "dataState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1893
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1894
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1895
    const-string v1, "preferredSlotId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1896
    const-string v1, "errorType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1897
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1898
    return-void
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .param p1, "batteryStatus"    # I

    .prologue
    const/4 v3, 0x0

    .line 1905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1907
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1911
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1915
    return-void
.end method

.method private canSwitchNetWorkbydsds()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2444
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2445
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2446
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2469
    :goto_0
    return v0

    .line 2451
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2453
    goto :goto_0

    .line 2457
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2458
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[1]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2459
    goto :goto_0

    .line 2461
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 2464
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhones[0].getState() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhones[1].getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2466
    goto/16 :goto_0

    .line 2468
    :cond_4
    const-string v0, "PhoneModeService"

    const-string v1, "canSwitchNetWorkbydsds() == true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2469
    goto/16 :goto_0
.end method

.method private changeSession()V
    .locals 12

    .prologue
    const/16 v11, 0x4b

    const/4 v10, 0x2

    const/16 v9, 0x4a

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: changeSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4408
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4409
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v0

    .line 4410
    .local v0, "appId0":[I
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v1

    .line 4411
    .local v1, "appId1":[I
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v2

    .line 4412
    .local v2, "op0":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: changeSession: appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", op0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4413
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-eqz v3, :cond_2

    .line 4414
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 4415
    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4416
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4418
    :cond_0
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4422
    :goto_0
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v1, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4434
    :goto_1
    return-void

    .line 4420
    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto :goto_0

    .line 4424
    :cond_2
    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4425
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4427
    :cond_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4428
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 4429
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v1, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    goto :goto_1

    .line 4431
    :cond_4
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto :goto_1
.end method

.method private checkUserSelectValid(III)Z
    .locals 8
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 2925
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 2926
    .local v0, "phoneOneType":I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: checkUserSelectValid phoneOneType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    packed-switch v0, :pswitch_data_0

    .line 2984
    :cond_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_14

    .line 2985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2988
    :cond_1
    :goto_0
    return v1

    .line 2930
    :pswitch_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    .line 2933
    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-gt p1, v6, :cond_1

    if-gt p2, v6, :cond_1

    .line 2938
    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    if-ne p3, v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 2944
    :pswitch_1
    if-ne p1, p2, :cond_4

    if-nez p2, :cond_1

    .line 2948
    :cond_4
    if-lt p3, v7, :cond_1

    if-gt p3, v2, :cond_1

    .line 2950
    if-nez p2, :cond_12

    if-nez p1, :cond_12

    .line 2959
    :cond_5
    if-ne p1, v6, :cond_6

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_11

    :cond_6
    if-ne p1, v2, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_11

    :cond_7
    if-ne p2, v6, :cond_8

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_11

    :cond_8
    if-ne p2, v2, :cond_9

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_11

    :cond_9
    if-ne p1, v6, :cond_a

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_a

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_a
    if-ne p1, v2, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_b
    if-ne p2, v2, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_c
    if-ne p2, v6, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_d
    if-ne p2, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_e
    if-ne p2, v2, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_f
    if-ne p1, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_10
    if-ne p1, v6, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v3, v2, :cond_0

    .line 2979
    :cond_11
    const-string v1, "CP_COMM: checkUserSelectValid APP NOT READY "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 2980
    goto/16 :goto_0

    .line 2953
    :cond_12
    if-nez p3, :cond_13

    if-eqz p1, :cond_1

    :cond_13
    if-ne p3, v2, :cond_5

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_14
    move v1, v2

    .line 2988
    goto/16 :goto_0

    .line 2928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkWhetherNeedSwitchBindMode(II)Z
    .locals 1
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    .line 3002
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd checkWhetherNeedSwitchBindMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3004
    const/4 v0, 0x0

    return v0
.end method

.method private checkWhetherNeedSwitchPhone(II)Z
    .locals 6
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3008
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 3022
    :cond_0
    :goto_0
    return v1

    .line 3011
    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 3012
    .local v0, "phoneOneType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: checkWhetherNeedSwitchPhone phoneOneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3013
    if-ne p1, v5, :cond_2

    if-ne v0, v5, :cond_2

    .line 3014
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    .line 3016
    goto :goto_0

    .line 3017
    :cond_2
    if-ne p1, v2, :cond_0

    if-ne v0, v2, :cond_0

    .line 3018
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    .line 3020
    goto :goto_0
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 3109
    const/4 v0, 0x0

    .line 3112
    .local v0, "slotId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3114
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3115
    const/4 v0, 0x1

    .line 3126
    :goto_0
    return v0

    .line 3117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3120
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 3121
    const/4 v0, 0x0

    goto :goto_0

    .line 3123
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 3078
    const/4 v0, 0x0

    .line 3080
    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3081
    if-nez p1, :cond_0

    .line 3082
    const/4 v0, 0x2

    .line 3096
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSlotIdToPhoneId slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3098
    return v0

    .line 3084
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3090
    :cond_1
    if-nez p1, :cond_2

    .line 3091
    const/4 v0, 0x1

    goto :goto_0

    .line 3093
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3897
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3899
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3901
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3903
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 1923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1925
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 1926
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 1927
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1928
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    int-to-byte v2, p1

    iput-byte v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 1929
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 1935
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1936
    return-void

    .line 1932
    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 3

    .prologue
    .line 2823
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2826
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2827
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2831
    :goto_0
    return-void

    .line 2829
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;
    .locals 2

    .prologue
    .line 1612
    const-class v1, Lcom/yulong/android/internal/telephony/PhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    .line 1613
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 1616
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1612
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 3062
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3064
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3065
    .local v0, "myBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3067
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

    .line 3385
    if-ne v7, p1, :cond_2

    .line 3386
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 3387
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 3415
    :cond_0
    :goto_0
    return v1

    .line 3390
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 3401
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3403
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3409
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 3410
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 3391
    :cond_2
    if-ne v8, p1, :cond_0

    .line 3392
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 3393
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 3396
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 3404
    :catch_0
    move-exception v0

    .line 3405
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 3407
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3411
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 3412
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 3044
    const/4 v0, 0x0

    .line 3045
    .local v0, "i":I
    const/4 v2, 0x0

    .line 3046
    .local v2, "myBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, "myNS":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 3048
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 3049
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3050
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 3053
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method private getOperatorBySlotId(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x6

    .line 4510
    const/4 v4, 0x0

    .line 4511
    .local v4, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4512
    .local v2, "iccId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4513
    .local v3, "operatorIdentify":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .line 4514
    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v0, :cond_0

    .line 4515
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 4516
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 4517
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4518
    invoke-static {}, Lcom/yulong/android/telephony/CPIccidOverride;->getInstance()Lcom/yulong/android/telephony/CPIccidOverride;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yulong/android/telephony/CPIccidOverride;->getCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4519
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4520
    move-object v4, v1

    .line 4524
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private getPinPukNumByCdmaOrGsm1()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2216
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm1."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2217
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2218
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    .line 2224
    :goto_0
    return-void

    .line 2221
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getSlotConnectMode()I
    .locals 2

    .prologue
    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: getSlotConnectMode : mSlotConnectMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3295
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method private getSynPinPukValidCount(III)I
    .locals 5
    .param p1, "reqType"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v4, 0x2

    .line 2656
    const/4 v1, -0x1

    .line 2659
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 2660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSynPinPukValidCount count  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 2662
    if-nez p1, :cond_1

    .line 2664
    const/4 v1, -0x1

    .line 2688
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2690
    return v1

    .line 2665
    :cond_1
    if-ne p1, v4, :cond_0

    .line 2667
    const/4 v1, -0x1

    goto :goto_0

    .line 2670
    :cond_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 2672
    :try_start_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2675
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    int-to-byte v3, v1

    iput-byte v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2676
    if-ne p1, v4, :cond_0

    .line 2678
    if-nez v1, :cond_0

    .line 2679
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2684
    :catch_0
    move-exception v0

    .line 2685
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3183
    const/4 v0, 0x0

    .line 3185
    .local v0, "iCardNum":I
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3186
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3187
    const/4 v1, -0x1

    .line 3198
    :goto_0
    return v1

    .line 3190
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 3191
    add-int/lit8 v0, v0, 0x1

    .line 3194
    :cond_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 3195
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 3198
    goto :goto_0
.end method

.method private handleChangeSessionResult()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: handleChangeSessionResult: mSessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v12

    .line 4383
    .local v12, "op0":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v13

    .line 4384
    .local v13, "op1":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4385
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_1

    .line 4386
    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4387
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4394
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    .line 4395
    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4396
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4403
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4404
    return-void

    .line 4389
    :cond_1
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4391
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iget v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v9, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_0

    .line 4398
    :cond_2
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4399
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iget v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v9, v8

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1
.end method

.method private handleEnableLTESwitch(Z)Z
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/16 v10, 0x4e

    const/16 v6, 0x4d

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: enableLTESwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLTESwitched = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4530
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4531
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 4533
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_1

    .line 4559
    :goto_0
    return v2

    .line 4537
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4538
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: enableLTESwitch card1PinState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", card2PinState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4542
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ge v0, v4, :cond_4

    .line 4544
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    .line 4545
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4546
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_2

    .line 4547
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4548
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    :goto_1
    move v2, v3

    .line 4559
    goto :goto_0

    .line 4549
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    .line 4550
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4551
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v6, v2

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1

    .line 4553
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v6, v2

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4554
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1

    .line 4557
    :cond_4
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    goto :goto_1
.end method

.method private isLTEWhiteCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 4084
    const/4 v0, 0x0

    .line 4085
    .local v0, "result":Z
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4091
    const/4 v0, 0x1

    .line 4094
    :cond_0
    return v0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 3373
    const/4 v0, 0x0

    .line 3374
    .local v0, "result":I
    return v0
.end method

.method private isSEDRegion()Z
    .locals 1

    .prologue
    .line 4292
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v0

    return v0
.end method

.method private judgeCardStatus(I)V
    .locals 9
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "NeedSwitchPhone":Z
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1

    .line 1348
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1349
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    .line 1355
    .local v3, "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v3, :cond_4

    .line 1357
    :goto_0
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v4, :cond_2

    .line 1359
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1360
    const-string v4, "PhoneModeService"

    const-string v5, "sleep 1 second"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v1

    .line 1364
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1351
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_0
    const-string v4, "PhoneModeService"

    const-string v5, "judgeCardStatus: UiccCard = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1
    :goto_1
    return-void

    .line 1367
    .restart local v3    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    if-nez p1, :cond_3

    .line 1368
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1372
    :cond_3
    const-string v4, "PhoneModeService"

    const-string v5, "A new card has been inserted"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1

    .line 1374
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "judgeCardStatus:cardIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NeedSwitchPhone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v4, "PERSENT"

    const-string v5, "NO REASON"

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, p1, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1377
    :cond_4
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v3, :cond_1

    .line 1378
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "judgeCardStatus:cardIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",card is absent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iput v7, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1381
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardArray()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 1382
    .local v2, "mUiccCard":[Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez p1, :cond_6

    .line 1383
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUiccCard[1].getCardState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v2, v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 1386
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardIndex ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no card,do not update radio status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :goto_2
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    if-nez v4, :cond_1

    .line 1401
    const-string v4, "ABSENT"

    const-string v5, "NO REASON"

    invoke-direct {p0, v4, v5, p1, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1388
    :cond_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_2

    .line 1391
    :cond_6
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUiccCard[0].getCardState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v2, v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-ne v4, v5, :cond_7

    .line 1394
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardIndex ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no card,do not update radio status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1396
    :cond_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3667
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3685
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3676
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 2
    .param p1, "checkType"    # I
    .param p2, "result"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 3571
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3573
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3574
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3575
    monitor-exit v1

    .line 3580
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3583
    :cond_0
    return-void

    .line 3575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pinLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 3499
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3500
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 3502
    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3503
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 3499
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3506
    .end local v1    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pukLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 3535
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3536
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 3538
    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3539
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 3535
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3542
    .end local v1    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm ActiveOrNoGsm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ActiveOrNoCdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStateRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm mLeftSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRightSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2237
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-ne v0, v3, :cond_6

    .line 2240
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2241
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2243
    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 2245
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2246
    const-string v0, "CP_COMM: operateRadioCdmaAndGsm setModemPowerOperation not need"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2261
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    .line 2262
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    .line 2263
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2264
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2265
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2266
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2267
    const-string v0, "operateRadioCdmaAndGsm mCardSelectedInfo  close radio ok "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2335
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm mStateRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2337
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v6

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_1

    .line 2339
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 2340
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2342
    :cond_1
    return-void

    .line 2248
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v0, :cond_4

    .line 2250
    :cond_3
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 2253
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_0

    .line 2257
    :cond_5
    const-string v0, "now in enterprise region ,not need to turn down radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2258
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2259
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto/16 :goto_0

    .line 2271
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v3, :cond_8

    .line 2272
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_7

    .line 2273
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2279
    :goto_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2280
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2281
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    .line 2302
    :goto_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v7, :cond_c

    .line 2303
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    .line 2304
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2310
    :goto_4
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2311
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2312
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    .line 2276
    :cond_7
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2277
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_2

    .line 2282
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v7, :cond_a

    .line 2283
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_9

    .line 2284
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2290
    :goto_5
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2291
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2292
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    goto :goto_3

    .line 2287
    :cond_9
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2288
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_5

    .line 2294
    :cond_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    .line 2295
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    .line 2296
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2297
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2298
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto/16 :goto_3

    .line 2307
    :cond_b
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_4

    .line 2314
    :cond_c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v3, :cond_e

    .line 2315
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_d

    .line 2316
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2322
    :goto_6
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2323
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2324
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    .line 2319
    :cond_d
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_6

    .line 2327
    :cond_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2328
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    .line 2329
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2330
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2331
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_1
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    .line 1580
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1582
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1583
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3591
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3592
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3594
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3595
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 3596
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3598
    monitor-exit v3

    .line 3602
    :goto_1
    return-void

    .line 3594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3601
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

.method private resetNet()I
    .locals 3

    .prologue
    .line 3858
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3859
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "yulong.intent.action.RESET_NET_OPERATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3860
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3861
    const/4 v1, 0x1

    return v1
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 3440
    const/4 v1, 0x0

    .line 3443
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3445
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3446
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3452
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 3448
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 3318
    const/4 v1, 0x0

    .line 3323
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3325
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3326
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I

    move-result v1

    .line 3329
    :cond_0
    const-string v2, "CP_COMM: save pin to native service"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3334
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :goto_0
    return v1

    .line 3330
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 2431
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v3

    .line 2432
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v2

    .line 2434
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2440
    :cond_0
    return-void
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectOpenModemCdmaOrGsm mUserWishSelectedInfo mLeftSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRightSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectOpenModemCdmaOrGsm mCardSelectedInfo  mGsmRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2178
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2179
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2180
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 2181
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 2182
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_2

    .line 2186
    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.333"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2188
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2201
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2205
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-nez v0, :cond_1

    .line 2206
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredNetworkModeForCGSwitch()V

    .line 2209
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->activeOrDeactiveSubscription()V

    .line 2210
    return-void

    .line 2190
    :cond_2
    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.222"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v2, :cond_3

    .line 2193
    const-string v0, "PhoneModeService"

    const-string v1, "set mCardSelectedInfo.mCdmaRaido true with no card availible"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_0

    .line 2196
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0
.end method

.method private sendBroadcastandActiveOrDeactive(II)V
    .locals 3
    .param p1, "phoneid"    # I
    .param p2, "type"    # I

    .prologue
    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendBroadcastandActiveOrDeactive phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1460
    return-void
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .param p2, "pinLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    .line 3519
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3520
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3525
    :cond_0
    :goto_0
    return-void

    .line 3522
    :catch_0
    move-exception v0

    .line 3523
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .param p2, "pukLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    .line 3555
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3556
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3561
    :cond_0
    :goto_0
    return-void

    .line 3558
    :catch_0
    move-exception v0

    .line 3559
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static setCardInfoofImsiBySlotId(ILjava/lang/String;I)V
    .locals 5
    .param p0, "slot"    # I
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "phonetype"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2482
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setCardInfoofImsiBySlotId: slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phonetype ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 2485
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_3

    .line 2486
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2487
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 2488
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 2489
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2505
    :cond_0
    :goto_0
    return-void

    .line 2492
    :cond_1
    if-nez p0, :cond_2

    .line 2493
    const-string v0, "yulong.left.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :goto_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 2498
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 2499
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto :goto_0

    .line 2495
    :cond_2
    const-string v0, "yulong.right.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2503
    :cond_3
    const-string v0, "PhoneModeService"

    const-string v1, "CP_COMM: mSlotCardInfoArray[slot] = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCardInfoofPinBySlotId(ILjava/lang/String;)V
    .locals 1
    .param p0, "slot"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2516
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 2517
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 2519
    :cond_0
    return-void
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .param p0, "phone1"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "phone2"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1601
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1602
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1603
    sput-object p2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    .line 1604
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .param p1, "iPreferredModemType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2894
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    if-ne v3, p1, :cond_0

    .line 2901
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    :goto_0
    return v2

    .line 2907
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

    .line 4187
    const/4 v1, 0x0

    .line 4188
    .local v1, "is1xOrDoLteOnly":Z
    const/4 v2, 0x0

    .line 4189
    .local v2, "lteSwitch":I
    const/4 v5, 0x0

    .line 4190
    .local v5, "tdLteSwitch":I
    const-string v6, "persist.yulong.net.current"

    const-string v7, "4g"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4191
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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4192
    const-string v6, "4g"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4193
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4194
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_td_lte_switch_statue"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4195
    if-ne v8, v2, :cond_0

    .line 4196
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4197
    const/4 v2, 0x1

    .line 4201
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch: TdlteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v5, v11, :cond_6

    const-string v6, "ON"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v2, v11, :cond_7

    const-string v6, "ON"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4205
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

    .line 4206
    :cond_1
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 4207
    const-string v6, "waiting for get preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4208
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v7

    .line 4210
    :try_start_0
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4215
    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4216
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_3

    .line 4219
    :cond_2
    const-string v6, "operateRadioCdmaAndGsm: is1xOrDoLteOnly = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4220
    const/4 v1, 0x1

    .line 4222
    :cond_3
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_4

    if-nez v2, :cond_4

    .line 4223
    const/4 v1, 0x0

    .line 4227
    :cond_4
    if-ne v2, v11, :cond_8

    if-ne v5, v11, :cond_8

    .line 4228
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 4230
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4231
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    .line 4233
    :try_start_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4238
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4239
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4280
    :cond_5
    :goto_4
    return-void

    .line 4201
    :cond_6
    const-string v6, "OFF"

    goto/16 :goto_0

    :cond_7
    const-string v6, "OFF"

    goto/16 :goto_1

    .line 4211
    :catch_0
    move-exception v0

    .line 4213
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 4215
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 4234
    :catch_1
    move-exception v0

    .line 4236
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 4238
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 4242
    :cond_8
    if-nez v1, :cond_5

    .line 4249
    const-string v6, "persist.yulong.net.mpseries"

    const-string v7, "4G_V1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4250
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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4252
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_a

    .line 4253
    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4254
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 4270
    :goto_5
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4271
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    .line 4273
    :try_start_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4278
    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4279
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 4257
    :cond_9
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4261
    :cond_a
    if-ne v2, v11, :cond_c

    invoke-virtual {p0, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isLTECard(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isLTEWhiteCard(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 4263
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4266
    :cond_c
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4274
    :catch_2
    move-exception v0

    .line 4276
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 4278
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6
.end method

.method private setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 2
    .param p1, "ss"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
    .line 4438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setSessionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4439
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 4440
    return-void
.end method

.method public static setSlotConnectMode(I)V
    .locals 0
    .param p0, "SlotConnectMode"    # I

    .prologue
    .line 3307
    return-void
.end method

.method private switchPhoneOneOrNot(I)Z
    .locals 11
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1407
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    .line 1408
    .local v3, "oldPhoneOneType":I
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    .line 1409
    .local v1, "newPhoneOneType":I
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchPhoneOneOrNot: oldPhoneOneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",newPhoneOneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const-string v2, ""

    .line 1412
    .local v2, "newPhoneType":Ljava/lang/String;
    if-ne v3, v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 1414
    const-string v2, "cdma"

    .line 1415
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v4, v6, v5

    .line 1423
    :goto_0
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchPhoneOneOrNot: newPhoneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    .line 1426
    const/4 v6, -0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 1427
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1428
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1429
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v5, v6, v5

    .line 1430
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v10, v2, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1431
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v5, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1432
    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :goto_1
    return v4

    .line 1416
    :cond_0
    if-ne v3, v9, :cond_1

    if-eq v1, v4, :cond_1

    .line 1418
    const-string v2, "gsm"

    .line 1419
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v9, v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    .line 1421
    goto :goto_1
.end method

.method private switchPhoneoneType()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4109
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    .line 4110
    const-string v1, ""

    .line 4111
    .local v1, "newPhoneType":Ljava/lang/String;
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4112
    const-string v1, "gsm"

    .line 4116
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 4117
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4118
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4119
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v2, v4

    .line 4120
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4122
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4123
    return-void

    .line 4114
    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :cond_0
    const-string v1, "cdma"

    goto :goto_0
.end method

.method private switchSlotBindMode()Z
    .locals 2

    .prologue
    .line 3031
    const/4 v0, 0x1

    .line 3033
    .local v0, "success":Z
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd switchSlotBindMode"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3035
    return v0
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1656
    const/4 v0, 0x0

    .line 1658
    .local v0, "errNo":I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 1660
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1664
    const-string v2, "CP_COMM: broadcastSelectNetFinish  uneuqal "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1665
    const-string p1, "RILError"

    .line 1668
    :cond_0
    const-string v2, "Success"

    if-ne p1, v2, :cond_5

    .line 1669
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_1

    .line 1670
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1673
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 1675
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_3

    .line 1676
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1681
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_4

    .line 1682
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1763
    :cond_2
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1764
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1765
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1766
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1767
    return-void

    .line 1678
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1684
    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1686
    :cond_5
    const-string v2, "RILError"

    if-eq p1, v2, :cond_6

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_2

    .line 1688
    :cond_6
    const/4 v1, 0x0

    .line 1690
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_8

    .line 1691
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    .line 1692
    add-int/lit8 v0, v1, 0x1

    .line 1697
    :cond_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1690
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1700
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_9

    .line 1702
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1703
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1709
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 1710
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_a

    .line 1711
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1712
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1718
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_b

    .line 1719
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1720
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1726
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_c

    .line 1727
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1758
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_2

    .line 1759
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1705
    :cond_9
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1706
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_3

    .line 1714
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1715
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1722
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1723
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1729
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1735
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_e

    .line 1736
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1737
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1743
    :goto_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_f

    .line 1744
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1745
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1751
    :goto_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1752
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1739
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1740
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_7

    .line 1747
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1748
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_8

    .line 1754
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3426
    if-nez p1, :cond_0

    .line 3427
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 3428
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 3430
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3431
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 3434
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 3436
    return v1
.end method

.method private waitBeforeorAfterUnlockPin()V
    .locals 5

    .prologue
    .line 2873
    const-string v1, "CP_COMM: waitActiveCardBeforeUnlockPin "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2875
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v2

    .line 2877
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 2882
    return-void

    .line 2878
    :catch_0
    move-exception v0

    .line 2879
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2881
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 2841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2843
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 2846
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2848
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2862
    :goto_0
    return v5

    .line 2854
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2856
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2860
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

    .line 2857
    :catch_0
    move-exception v0

    .line 2858
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2849
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public ActivateCardBeforeUnlockPin(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "SlotConnectMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 3787
    const-string v0, "CP_COMM: enter activate net"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3789
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    .line 3791
    :cond_1
    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 3797
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin mNeedUnlockMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3800
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitBeforeorAfterUnlockPin()V

    .line 3801
    return-void

    .line 3795
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    goto :goto_0
.end method

.method public DeactivateCardAfterUnlockPin(IIIZ)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "SlotConnectMode"    # I
    .param p3, "callback"    # I
    .param p4, "result"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3805
    const-string v1, "CP_COMM: enter deactivate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3806
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    monitor-enter v2

    .line 3808
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3812
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3813
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin wait end"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3814
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    .line 3816
    :cond_1
    if-nez p4, :cond_3

    .line 3846
    :cond_2
    :goto_1
    return-void

    .line 3809
    :catch_0
    move-exception v0

    .line 3810
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 3812
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3820
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 3822
    :try_start_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 3823
    const-string v1, "CP_COMM: wait untill deactive card1 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3827
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 3824
    :catch_1
    move-exception v0

    .line 3825
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 3831
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz p4, :cond_2

    .line 3835
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 3837
    :try_start_6
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 3838
    const-string v1, "CP_COMM: wait untill deactive card2 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3842
    :goto_3
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 3839
    :catch_2
    move-exception v0

    .line 3840
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3
.end method

.method public RestartNet4ModemReset()V
    .locals 2

    .prologue
    .line 4283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem has been reseted,restart net again! mSessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4284
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 4286
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    .line 4288
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 4289
    return-void
.end method

.method declared-synchronized acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3912
    monitor-enter p0

    :try_start_0
    const-string v1, "CP_COMM: Acquiring cpu wake lock"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3913
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3924
    :goto_0
    monitor-exit p0

    return-void

    .line 3917
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3920
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "PhoneModeService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3923
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3912
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public canGetCardInfo()V
    .locals 1

    .prologue
    .line 3889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 3890
    return-void
.end method

.method public cdmaSubActiveNotify()V
    .locals 1

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3886
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1564
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1565
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1566
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1567
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLostCard(Landroid/os/Handler;)V

    .line 1568
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionReady(Landroid/os/Handler;)V

    .line 1569
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1570
    return-void
.end method

.method public enableLTESwitch(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4368
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v3, v4, :cond_0

    .line 4374
    :goto_0
    return v1

    .line 4371
    :cond_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4372
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4373
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 4374
    goto :goto_0
.end method

.method public enableLTESwitchAuto()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4443
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .line 4444
    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .line 4446
    .local v1, "isRWMode":Z
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    .line 4447
    :cond_0
    const-string v3, "CP_COMM: enableLTESwitchAuto: not allowed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4497
    :goto_0
    return v2

    .line 4473
    :cond_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v3

    .line 4474
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v2

    .line 4475
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v3

    .line 4476
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v2

    .line 4477
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 4478
    const-string v3, "CP_COMM: enableLTESwitchAuto: priority equal: mCardPri[0].mPriority , auto switch not needed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4482
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enableLTESwitchAuto! mCardPri[0].mPriority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCardPri[1].mPriority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4485
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4486
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 4489
    :cond_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4491
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->enableLTESwitch(Z)Z

    :goto_1
    move v2, v3

    .line 4497
    goto/16 :goto_0

    .line 4494
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->enableLTESwitch(Z)Z

    goto :goto_1
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 7
    .param p1, "iSlotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2530
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2531
    const-string v4, "persist.sys.fastbootup.mode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 2532
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    if-eqz v4, :cond_1

    .line 2533
    const-string v4, "getCardInfoBySlotId silenceReboot == true"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2592
    :cond_0
    :goto_0
    return-object v3

    .line 2540
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    if-eqz v4, :cond_0

    .line 2545
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 2546
    .local v1, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .line 2547
    .local v2, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_3

    .line 2548
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    .line 2550
    if-nez v2, :cond_4

    .line 2551
    const-string v4, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2586
    .end local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .line 2588
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 2592
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .line 2556
    .restart local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_4
    :try_start_1
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2560
    if-nez p1, :cond_6

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2561
    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v6, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 2565
    :cond_5
    const/4 v3, -0x4

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2568
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2573
    :cond_6
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    .line 2575
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v3, v6, :cond_3

    .line 2577
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 2579
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    .line 2580
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 2583
    :cond_7
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getCardStatusByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, -0x1

    .line 3209
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3211
    .local v0, "slotId":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3219
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3224
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .param p1, "iSlotId"    # I

    .prologue
    .line 2604
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2606
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 2608
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2610
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2616
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 2
    .param p1, "phoneid"    # I

    .prologue
    .line 3868
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataFirewall()I

    move-result v0

    return v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4295
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4296
    .local v0, "slotId":I
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 4298
    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4321
    :cond_0
    :goto_0
    return-object v1

    .line 4303
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    .line 4304
    if-ne p1, v3, :cond_3

    .line 4305
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 4306
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4308
    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4310
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 4311
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 4312
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4314
    :cond_4
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4320
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null == mSlotCardInfoArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPinPukValidCount(II)I
    .locals 5
    .param p1, "pinType"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 2628
    const/4 v1, -0x5

    .line 2630
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSelectNet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2633
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v3, :cond_0

    move v2, v1

    .line 2643
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 2638
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    .line 2639
    .local v0, "phoneId":I
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2640
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2641
    invoke-direct {p0, p1, v0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v1

    .line 2642
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    move v2, v1

    .line 2643
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public gsmSubActiveNotify()V
    .locals 1

    .prologue
    .line 3880
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3881
    return-void
.end method

.method public handleAirBrocast(Z)Z
    .locals 5
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    const/16 v4, 0x53

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xinghainan handleAirBrocast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4565
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xinghainan handleAirBrocast : isAirplaneModeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4570
    if-eqz p1, :cond_1

    .line 4571
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4573
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4575
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 4585
    :cond_0
    :goto_0
    return v2

    .line 4578
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4580
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4582
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    goto :goto_0
.end method

.method public isActivePhoneByPhoneId(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 3249
    const/4 v1, 0x0

    .line 3250
    .local v1, "slotId":I
    const/4 v0, 0x0

    .line 3251
    .local v0, "radioState":Z
    if-ne p1, v3, :cond_3

    .line 3252
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3256
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 3258
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    .line 3265
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mSlotCardInfoArray[slotId] = null. phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3284
    :cond_2
    :goto_1
    return v2

    .line 3253
    :cond_3
    if-ne p1, v4, :cond_0

    .line 3254
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 3272
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "radioState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mSlotCardInfoArray[slotId].mCardType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3276
    if-eqz v0, :cond_6

    .line 3277
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 3278
    goto :goto_1

    :cond_5
    move v2, v4

    .line 3280
    goto :goto_1

    .line 3284
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHasCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3235
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    .line 3238
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLTECard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 4074
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4076
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

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4077
    const/4 v0, 0x1

    .line 4080
    :goto_0
    return v0

    .line 4079
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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4080
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLTESwitchAllowed()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4328
    const/4 v2, 0x0

    .line 4333
    .local v2, "ret":Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .line 4334
    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .line 4336
    .local v1, "isRWMode":Z
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v7

    .line 4337
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v8

    .line 4339
    if-eqz v1, :cond_1

    .line 4340
    const/4 v2, 0x0

    .line 4358
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: isLTESwitchAllowed: carrierType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRWMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4359
    return v2

    .line 4341
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4342
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 4343
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v7

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v7

    .line 4344
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v8

    .line 4345
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v8

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v8

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    if-nez v3, :cond_4

    .line 4347
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4349
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4351
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 4352
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4354
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public isLTESwitched()Z
    .locals 1

    .prologue
    .line 4364
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return v0
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 3139
    const/4 v0, 0x0

    .line 3141
    .local v0, "result":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3142
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getValidCardNum()I

    move-result v0

    .line 3174
    :cond_0
    :goto_0
    return v0

    .line 3143
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3144
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3145
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3146
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3147
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 3148
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3149
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 3150
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3151
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 3152
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 3153
    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    .line 3154
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3155
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 3156
    move v1, p2

    .line 3157
    .local v1, "status":I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 3158
    goto :goto_0

    .end local v1    # "status":I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 3159
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 3160
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 3161
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetNet()I

    move-result v0

    goto :goto_0

    .line 3162
    :cond_a
    const/16 v2, 0xc

    if-ne p1, v2, :cond_b

    .line 3163
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 3166
    :cond_b
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 3167
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_c

    .line 3168
    const/4 v0, 0x0

    goto :goto_0

    .line 3170
    :cond_c
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForCdmaSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3633
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3634
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3635
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3636
    monitor-exit v2

    .line 3638
    return-void

    .line 3636
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3606
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3607
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3608
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3609
    monitor-exit v2

    .line 3610
    return-void

    .line 3609
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3649
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3650
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3651
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3652
    monitor-exit v2

    .line 3653
    return-void

    .line 3652
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3619
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3620
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3621
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3622
    monitor-exit v2

    .line 3624
    return-void

    .line 3622
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4097
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4098
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 4099
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4100
    monitor-exit v2

    .line 4101
    return-void

    .line 4100
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized releaseCpuLock()V
    .locals 1

    .prologue
    .line 3931
    monitor-enter p0

    :try_start_0
    const-string v0, "CP_COMM: Releasing cpu wake lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3932
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3933
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3934
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3936
    :cond_0
    monitor-exit p0

    return-void

    .line 3931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1626
    const-string v0, "CP_COMM: PhoneModeService  reset "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1627
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 1628
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 1629
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v2, v0, v2

    .line 1630
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 1631
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 1632
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 1633
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 1634
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 1635
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1636
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1637
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1638
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1639
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1640
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1641
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1642
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1643
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1644
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1645
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1646
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1648
    return-void
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
    .line 3942
    const/4 v0, 0x0

    return v0
.end method

.method public selectCheck(II)V
    .locals 4
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4165
    const-string v0, "0"

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    .line 4168
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlotCardInfoArray[0].mAppTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSlotCardInfoArray[0].mUniversalPinState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4174
    const-string v0, "0"

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    .line 4177
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlotCardInfoArray[1].mAppTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSlotCardInfoArray[1].mUniversalPinState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4183
    return-void
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 5
    .param p1, "modetype"    # I
    .param p2, "powersate"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectCloseModemCdmaOrGsmInternal  phonetype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " powersate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2398
    if-ne p1, v4, :cond_1

    .line 2399
    if-nez p2, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 2424
    :goto_0
    return-void

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2410
    :cond_1
    if-ne p1, v3, :cond_3

    .line 2411
    if-nez p2, :cond_2

    .line 2412
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2416
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2421
    :cond_3
    const-string v0, "selectCloseModemCdmaOrGsmInternal err phonetype "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 12
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2015 CP_COMM: PhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preSID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SwitchintPhone ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1953
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->airplanecount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: AIRPLANE_MODE_FLAG= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1958
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1965
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1966
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1967
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x3

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    aput v2, v0, v1

    .line 1968
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 1969
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1971
    const/4 v0, 0x1

    .line 2164
    :goto_1
    return v0

    .line 1959
    :catch_0
    move-exception v7

    .line 1960
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1975
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v0, :cond_1

    .line 1976
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1977
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1978
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1979
    const/4 v0, 0x1

    goto :goto_1

    .line 1981
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1982
    const/4 v0, 0x3

    goto :goto_1

    .line 1985
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1986
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1987
    invoke-virtual {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCheck(II)V

    .line 1988
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    if-eqz v0, :cond_3

    .line 1989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    .line 1991
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1996
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 1998
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1999
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 2000
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 2004
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2007
    const/4 p1, 0x1

    .line 2010
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2013
    const/4 p2, 0x2

    .line 2015
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2016
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 2017
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 2020
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 2022
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2025
    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 2026
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSmsDelayCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gt v0, p1, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-le v0, p2, :cond_9

    .line 2029
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 2030
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2032
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 2033
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2036
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 2038
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2040
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, p1, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v0, p2, :cond_d

    .line 2042
    :cond_b
    const-string v0, "PhoneModeService"

    const-string v1, "The last action : not airmode ,then close net and back"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/4 p1, 0x0

    .line 2044
    const/4 p2, 0x0

    .line 2045
    const/4 p3, -0x1

    .line 2083
    :cond_c
    :goto_2
    const/4 v8, 0x0

    .line 2085
    .local v8, "i":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_12

    .line 2086
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2087
    const-string v0, "selectModemAndPreferredSlot india no mts CARD "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2088
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2089
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2090
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2047
    .end local v8    # "i":I
    :cond_d
    const-string v0, "PhoneModeService"

    const-string v1, "The last action: airMode OR  same choice"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2051
    :cond_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkWhetherNeedSwitchPhone(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 2052
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2053
    const/4 v10, 0x0

    .line 2054
    .local v10, "ret":I
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2055
    .local v6, "cdmaRadioPower":Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    if-ne v6, v0, :cond_11

    .line 2056
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v9

    .line 2057
    .local v9, "isDisconnected":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm isDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2058
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2059
    if-nez v9, :cond_f

    .line 2060
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    monitor-enter v1

    .line 2062
    :try_start_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2068
    :cond_f
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v11, 0x1f

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v10

    .line 2071
    const/4 v0, 0x1

    if-ne v0, v10, :cond_10

    .line 2079
    .end local v9    # "isDisconnected":Z
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2063
    .restart local v9    # "isDisconnected":Z
    :catch_1
    move-exception v7

    .line 2064
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "CP_COMM: interrupted"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 2066
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2074
    :cond_10
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .line 2077
    .end local v9    # "isDisconnected":Z
    :cond_11
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .line 2094
    .end local v6    # "cdmaRadioPower":Z
    .end local v10    # "ret":I
    .restart local v8    # "i":I
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkUserSelectValid(III)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2096
    const-string v0, "CP_COMM: selectModemAndPreferredSlot  SELECT_NET_CHOICE_ERROR"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2097
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2099
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 2100
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 2101
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 2102
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 2103
    if-nez p3, :cond_14

    .line 2104
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2107
    :cond_14
    const/4 v0, 0x1

    if-ne p3, v0, :cond_15

    .line 2108
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2111
    :cond_15
    const/4 v0, -0x1

    if-eq p3, v0, :cond_16

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-nez v0, :cond_17

    .line 2113
    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2116
    :cond_17
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1a

    .line 2118
    :cond_18
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2123
    :goto_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1b

    .line 2125
    :cond_19
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2130
    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 2133
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, p1, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, p2, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v0, v1, :cond_1c

    .line 2137
    const-string v0, "PhoneModeService"

    const-string v1, "shixiaogang selectModemAndPreferedSlotId() the two modemtypes are as same as the previous ones,just return FINISH."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2141
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2120
    :cond_1a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    .line 2127
    :cond_1b
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_6

    .line 2145
    :cond_1c
    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0xb

    if-gt v8, v0, :cond_1d

    .line 2146
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 2145
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2149
    :cond_1d
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 2150
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2151
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2153
    const/4 v8, 0x0

    :goto_8
    const/4 v0, 0x2

    if-gt v8, v0, :cond_1e

    .line 2154
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x1

    aput v1, v0, v8

    .line 2153
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2156
    :cond_1e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 2158
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    .line 2159
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 2161
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2164
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public selectModemAndPreferredSlotId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4141
    const-string v0, "selectModemAndPreferredSlotId() after switch phone instance"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4142
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4143
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4145
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4146
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4150
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4152
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4155
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->start()V

    .line 4161
    return-void
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .param p1, "callback"    # Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    .param p2, "events"    # I

    .prologue
    .line 3462
    if-eqz p2, :cond_2

    .line 3463
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3465
    const/4 v3, 0x0

    .line 3467
    .local v3, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3468
    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3470
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .local v4, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3471
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3473
    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 3484
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    .line 3485
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3489
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_2
    return-void

    .line 3470
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_0

    .line 3478
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3479
    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 3480
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 3481
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3485
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

    .line 3487
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 3485
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 3849
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 3850
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 2
    .param p1, "phoneid"    # I
    .param p2, "responseCode"    # I

    .prologue
    .line 3875
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneBase;->setDataFirewall(I)Z

    .line 3876
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3853
    const-string v0, "yulong.net.select"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 3349
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3350
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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3353
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3355
    if-nez v0, :cond_0

    .line 3356
    const-string v1, "yulong.left.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3362
    const/4 v1, 0x1

    return v1

    .line 3358
    :cond_0
    const-string v1, "yulong.right.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSilenceRebootFlag()V
    .locals 1

    .prologue
    .line 3893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 3894
    return-void
.end method

.method public setSwitchPhoneFalse()V
    .locals 1

    .prologue
    .line 4135
    const-string v0, "selectmodem  setSwitchPhoneFalse"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 4137
    return-void
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2702
    const/4 v3, 0x0

    .line 2703
    .local v3, "result":Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2704
    .local v2, "phoneId":I
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

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2708
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2709
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2712
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    .line 2714
    if-eqz v3, :cond_3

    .line 2715
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2716
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2717
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2718
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v4, p2

    .line 2720
    if-nez p2, :cond_2

    .line 2721
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2730
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 2738
    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2748
    :goto_2
    if-nez v3, :cond_1

    .line 2749
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2752
    :cond_1
    return v3

    .line 2723
    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2744
    :catch_0
    move-exception v1

    .line 2745
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2732
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p2

    .line 2733
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 2734
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v4, :cond_0

    .line 2735
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    goto :goto_1

    .line 2741
    :catch_1
    move-exception v0

    .line 2742
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 2765
    const/4 v3, 0x0

    .line 2766
    .local v3, "result":Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2767
    .local v2, "phoneId":I
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

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2772
    const/4 v4, 0x2

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2773
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2776
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 2778
    if-eqz v3, :cond_3

    .line 2779
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2780
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/16 v5, 0xa

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2781
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2782
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2783
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v4, p3

    .line 2785
    if-nez p3, :cond_2

    .line 2786
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2794
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 2802
    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2804
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2812
    :goto_2
    if-nez v3, :cond_1

    .line 2813
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2816
    :cond_1
    return v3

    .line 2788
    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2808
    :catch_0
    move-exception v1

    .line 2809
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2796
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2798
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v4, :cond_0

    .line 2799
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_1

    .line 2805
    :catch_1
    move-exception v0

    .line 2806
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public switchPhoneEx()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4126
    const-string v2, "selectmodem  switchphoneEx begin"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4127
    const-string v1, "none"

    .line 4128
    .local v1, "newPhoneType":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 4129
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4131
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4132
    return-void
.end method

.method public unlockPinFor3GCard()V
    .locals 12

    .prologue
    const/16 v11, 0x13

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2345
    const/4 v2, 0x0

    .line 2346
    .local v2, "slot":I
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 2347
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v3, :cond_0

    .line 2349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mIs3GUimCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPinValues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2352
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-ne v3, v7, :cond_0

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_0

    .line 2354
    const-string v3, "CP_COMM: enter unlock3Gpin"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2356
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    :goto_0
    if-ne v1, v9, :cond_2

    .line 2362
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2370
    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 2371
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 2372
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v3, :cond_1

    .line 2374
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_1

    .line 2377
    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2382
    :goto_2
    if-ne v1, v9, :cond_3

    .line 2383
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2391
    :cond_1
    :goto_3
    return-void

    .line 2357
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2364
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-ne v1, v7, :cond_0

    .line 2365
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2378
    :catch_1
    move-exception v0

    .line 2380
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2385
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    if-ne v1, v7, :cond_1

    .line 2386
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3
.end method

.method public unregisterForCdmaSubActive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3641
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3642
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3644
    monitor-exit v1

    .line 3646
    return-void

    .line 3644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCdmaSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3613
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3614
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3615
    monitor-exit v1

    .line 3616
    return-void

    .line 3615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubActive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3656
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3657
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3658
    monitor-exit v1

    .line 3659
    return-void

    .line 3658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3627
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3628
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3629
    monitor-exit v1

    .line 3630
    return-void

    .line 3629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSwitchPhone(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4103
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 4104
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4105
    monitor-exit v1

    .line 4106
    return-void

    .line 4105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
