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

    new-array v0, v1, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    new-array v2, v4, [Z

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    new-array v2, v4, [Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    const-string v2, "CP_COMM: enter PhoneModeService add iPhoneModeService"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PhoneModeServiceHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerClientToNativeService()V

    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x37

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x40

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->createWakelock()V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    if-eqz v2, :cond_4

    :goto_0
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xb

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xe

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xf

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xc

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x27

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x26

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isHotSwapSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x49

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    const-string v2, "iPhoneModeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5

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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    if-eqz v2, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v8, :cond_1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v8, :cond_2

    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    :cond_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v6, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "get PowerManager service fail"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

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

    nop

    :array_0
    .array-data 4
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

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

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

    :array_6
    .array-data 4
        0x0
        0x0
        0x1
    .end array-data

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
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    return p1
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1

    .prologue
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
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return p1
.end method

.method static synthetic access$2308(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return p1
.end method

.method static synthetic access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    return v0
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    return v0
.end method

.method static synthetic access$302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    return p1
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    return-void
.end method

.method static synthetic access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    return p1
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V

    return-void
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return v0
.end method

.method static synthetic access$4502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return p1
.end method

.method static synthetic access$4600(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->judgeCardStatus(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleChangeSessionResult()V

    return-void
.end method

.method static synthetic access$5202(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->changeSession()V

    return-void
.end method

.method static synthetic access$5500(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleEnableLTESwitch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    return-void
.end method

.method static synthetic access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent_EX(ZZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    return-object v0
.end method

.method static synthetic access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method private activeOrDeactiveSubscription()V
    .locals 11

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .local v6, "cdmaRadioPower":Z
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .local v7, "gsmRadioPower":Z
    const/4 v8, 0x0

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

    const/4 v2, 0x0

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

    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    :cond_2
    const-string v0, "activeOrDeactiveSubscription cdma: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

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

    :cond_4
    if-nez v7, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    :cond_5
    const-string v0, "activeOrDeactiveSubscription gsm: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_9

    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    move v9, v2

    .end local v2    # "substate":I
    .local v9, "substate":I
    :goto_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "now in enterprise region ,not need to active/deactive for card 1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    :goto_3
    const/4 v0, 0x1

    if-ne v0, v8, :cond_c

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    move v9, v2

    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    goto :goto_2

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

    const/4 v8, 0x0

    const-string v0, "SimCard lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_3

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

    :cond_c
    if-nez v8, :cond_e

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    :goto_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_4

    :cond_e
    const/4 v0, -0x1

    if-ne v0, v8, :cond_f

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :goto_5
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_f
    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_10
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    :cond_11
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v0, :cond_12

    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    :goto_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "now in enterprise region ,not need to active/deactive for card 2"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    :goto_7
    const/4 v0, 0x1

    if-eq v0, v8, :cond_6

    if-nez v8, :cond_15

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    :goto_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    const-string v0, "activeOrDeactiveSubscription  GSM SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_6

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

    :cond_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_8

    :cond_15
    const/4 v0, -0x1

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :goto_9
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    const-string v0, "activeOrDeactiveSubscription  GSM SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "phoneName"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    const-string v1, "pullOrPush"

    const-string v2, "pull"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "slotId"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    const-string v1, "pullOrPush"

    const-string v2, "push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private broadcastLTESwitchFinished()V
    .locals 3

    .prologue
    const-string v1, "CP_COMM: enter broadcastLTESwitchFinished!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.ACTION_LTE_SWITCH_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

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

    new-instance v4, Landroid/content/Intent;

    const-string v8, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "selectNetResult"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    .local v5, "mSlotConnectMode":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v8

    if-ne v8, v6, :cond_5

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

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-string v8, "slotConnectMode"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    .local v2, "dataState":I
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v8, :cond_6

    move v0, v6

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

    .local v1, "card2DataState":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

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

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-string v8, "dataState"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "Success"

    if-ne p1, v8, :cond_d

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

    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_6
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

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

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/16 v8, 0xa

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v9

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eqz v8, :cond_10

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

    :cond_4
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    .end local v0    # "card1DataState":Z
    .end local v1    # "card2DataState":Z
    .end local v2    # "dataState":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v2    # "dataState":I
    :cond_6
    move v0, v7

    goto/16 :goto_1

    .restart local v0    # "card1DataState":Z
    :cond_7
    move v1, v7

    goto/16 :goto_2

    .restart local v1    # "card2DataState":Z
    :cond_8
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    move v8, v7

    goto/16 :goto_4

    :cond_c
    move v8, v7

    goto/16 :goto_5

    :cond_d
    const-string v8, "TimeOut"

    if-eq p1, v8, :cond_e

    const-string v8, "RILError"

    if-ne p1, v8, :cond_2

    :cond_e
    const-string v8, "selectCdmaStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "selectGsmStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_f
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->reselect net 4 GC switch"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_7

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0xbb8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_7

    :catch_1
    move-exception v3

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectNetResult"

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "slotConnectMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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

    const-string v1, "dataState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "preferredSlotId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "errorType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private canSwitchNetWorkbydsds()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[1]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

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

    goto/16 :goto_0

    :cond_4
    const-string v0, "PhoneModeService"

    const-string v1, "canSwitchNetWorkbydsds() == true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

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

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v0

    .local v0, "appId0":[I
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v1

    .local v1, "appId1":[I
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v2

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

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

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

    :goto_1
    return-void

    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto :goto_0

    :cond_2
    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

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

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_4

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

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

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

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_14

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

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-gt p1, v6, :cond_1

    if-gt p2, v6, :cond_1

    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    if-ne p3, v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :pswitch_1
    if-ne p1, p2, :cond_4

    if-nez p2, :cond_1

    :cond_4
    if-lt p3, v7, :cond_1

    if-gt p3, v2, :cond_1

    if-nez p2, :cond_12

    if-nez p1, :cond_12

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

    :cond_11
    const-string v1, "CP_COMM: checkUserSelectValid APP NOT READY "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_12
    if-nez p3, :cond_13

    if-eqz p1, :cond_1

    :cond_13
    if-ne p3, v2, :cond_5

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_14
    move v1, v2

    goto/16 :goto_0

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
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd checkWhetherNeedSwitchBindMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

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

    if-ne p1, v5, :cond_2

    if-ne v0, v5, :cond_2

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_0

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    goto :goto_0
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "slotId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x2

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

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    int-to-byte v2, p1

    iput-byte v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return-void

    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 3

    .prologue
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    :goto_0
    return-void

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
    const-class v1, Lcom/yulong/android/internal/telephony/PhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    if-ne v7, p1, :cond_2

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

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

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    :cond_2
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0

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

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0
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

.method private getOperatorBySlotId(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x0

    .local v4, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "iccId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "operatorIdentify":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/yulong/android/telephony/CPIccidOverride;->getInstance()Lcom/yulong/android/telephony/CPIccidOverride;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yulong/android/telephony/CPIccidOverride;->getCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v4, v1

    .end local v1    # "carrier":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private getPinPukNumByCdmaOrGsm1()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm1."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    :goto_0
    return-void

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

    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

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

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v1

    :cond_1
    if-ne p1, v4, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    :try_start_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    int-to-byte v3, v1

    iput-byte v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-ne p1, v4, :cond_0

    if-nez v1, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "iCardNum":I
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private handleChangeSessionResult()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "op0":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "op1":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_1

    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iget v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v9, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_0

    :cond_2
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v3

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

    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

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

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

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

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

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

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    return v0
.end method

.method private isSEDRegion()Z
    .locals 1

    .prologue
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

    const/4 v0, 0x0

    .local v0, "NeedSwitchPhone":Z
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    .local v3, "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v3, :cond_4

    :goto_0
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v4, "PhoneModeService"

    const-string v5, "sleep 1 second"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_0
    const-string v4, "PhoneModeService"

    const-string v5, "judgeCardStatus: UiccCard = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    .restart local v3    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :cond_3
    const-string v4, "PhoneModeService"

    const-string v5, "A new card has been inserted"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, p1

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

    const-string v4, "PERSENT"

    const-string v5, "NO REASON"

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, p1, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v3, :cond_1

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

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iput v7, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardArray()[Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .local v2, "mUiccCard":[Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez p1, :cond_6

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

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v2, v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-ne v4, v5, :cond_5

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

    :goto_2
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    if-nez v4, :cond_1

    const-string v4, "ABSENT"

    const-string v5, "NO REASON"

    invoke-direct {p0, v4, v5, p1, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_2

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

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v2, v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-ne v4, v5, :cond_7

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

    :cond_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v7, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 2
    .param p1, "checkType"    # I
    .param p2, "result"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :cond_0
    return-void

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
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

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
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

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

    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    const-string v0, "CP_COMM: operateRadioCdmaAndGsm setModemPowerOperation not need"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    const-string v0, "operateRadioCdmaAndGsm mCardSelectedInfo  close radio ok "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v6

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_0

    :cond_5
    const-string v0, "now in enterprise region ,not need to turn down radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_7

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    :goto_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v7, :cond_c

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_4
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    :cond_7
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v7, :cond_a

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_9

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_5
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    goto :goto_3

    :cond_9
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto/16 :goto_3

    :cond_b
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v3, :cond_e

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_d

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_6
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    :cond_d
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_1
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
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
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

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

.method private resetNet()I
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "yulong.intent.action.RESET_NET_OPERATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    return v1
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

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

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const-string v2, "CP_COMM: save pin to native service"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :goto_0
    return v1

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v3

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

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

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_2

    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.333"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

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

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredNetworkModeForCGSwitch()V

    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->activeOrDeactiveSubscription()V

    return-void

    :cond_2
    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.222"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v2, :cond_3

    const-string v0, "PhoneModeService"

    const-string v1, "set mCardSelectedInfo.mCdmaRaido true with no card availible"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_0

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

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .param p2, "pinLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "yulong.left.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "yulong.right.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

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
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v0, p0

    :cond_0
    return-void
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .param p0, "phone1"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "phone2"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sput-object p2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-string v6, "4g"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_td_lte_switch_statue"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v2, :cond_0

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

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
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    const-string v6, "waiting for get preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

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

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_3

    :cond_2
    const-string v6, "operateRadioCdmaAndGsm: is1xOrDoLteOnly = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_4

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-ne v2, v11, :cond_8

    if-ne v5, v11, :cond_8

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

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

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_5
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

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

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

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

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    :cond_c
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

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

.method private setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 2
    .param p1, "ss"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
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

    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-void
.end method

.method public static setSlotConnectMode(I)V
    .locals 0
    .param p0, "SlotConnectMode"    # I

    .prologue
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

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    .local v3, "oldPhoneOneType":I
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

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

    const-string v2, ""

    .local v2, "newPhoneType":Ljava/lang/String;
    if-ne v3, v4, :cond_0

    if-ne v1, v4, :cond_0

    const-string v2, "cdma"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v4, v6, v5

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

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    const/4 v6, -0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v5, v6, v5

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v10, v2, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v5, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :goto_1
    return v4

    :cond_0
    if-ne v3, v9, :cond_1

    if-eq v1, v4, :cond_1

    const-string v2, "gsm"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v9, v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private switchPhoneoneType()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    const-string v1, ""

    .local v1, "newPhoneType":Ljava/lang/String;
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v1, "gsm"

    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v2, v4

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :cond_0
    const-string v1, "cdma"

    goto :goto_0
.end method

.method private switchSlotBindMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .local v0, "success":Z
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd switchSlotBindMode"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

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

    const/4 v0, 0x0

    .local v0, "errNo":I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CP_COMM: broadcastSelectNetFinish  uneuqal "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-string p1, "RILError"

    :cond_0
    const-string v2, "Success"

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_3

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_4

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :cond_2
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    return-void

    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    :cond_5
    const-string v2, "RILError"

    if-eq p1, v2, :cond_6

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_2

    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_8

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    add-int/lit8 v0, v1, 0x1

    :cond_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    :goto_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_8

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

    if-nez p1, :cond_0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return v1
.end method

.method private waitBeforeorAfterUnlockPin()V
    .locals 5

    .prologue
    const-string v1, "CP_COMM: waitActiveCardBeforeUnlockPin "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

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

    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v5

    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

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

    const-string v0, "CP_COMM: enter activate net"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    :cond_1
    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitBeforeorAfterUnlockPin()V

    return-void

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

    const-string v1, "CP_COMM: enter deactivate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin wait end"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    :cond_1
    if-nez p4, :cond_3

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    const-string v1, "CP_COMM: wait untill deactive card1 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

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

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    const-string v1, "CP_COMM: wait untill deactive card2 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

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

    :catch_2
    move-exception v0

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method declared-synchronized acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "CP_COMM: Acquiring cpu wake lock"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "PhoneModeService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public canGetCardInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    return-void
.end method

.method public cdmaSubActiveNotify()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLostCard(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionReady(Landroid/os/Handler;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    return-void
.end method

.method public enableLTESwitch(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    goto :goto_0
.end method

.method public enableLTESwitchAuto()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .local v1, "isRWMode":Z
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string v3, "CP_COMM: enableLTESwitchAuto: not allowed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v2

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

    const-string v3, "CP_COMM: enableLTESwitchAuto: priority equal: mCardPri[0].mPriority , auto switch not needed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

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

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->enableLTESwitch(Z)Z

    :goto_1
    move v2, v3

    goto/16 :goto_0

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "persist.sys.fastbootup.mode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    if-eqz v4, :cond_1

    const-string v4, "getCardInfoBySlotId silenceReboot == true"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    if-eqz v4, :cond_0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .local v1, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .local v2, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v4, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

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

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v6, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_5
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_6
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v3, v6, :cond_3

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

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

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
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 2
    .param p1, "phoneid"    # I

    .prologue
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

    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    if-ne p1, v3, :cond_3

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

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
    const/4 v1, -0x5

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

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v3, :cond_0

    move v2, v1

    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, p1, v0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public gsmSubActiveNotify()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public handleAirBrocast(Z)Z
    .locals 5
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    const/16 v4, 0x53

    const/4 v3, 0x0

    const/4 v2, 0x1

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

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

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

    if-eqz p1, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

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

    const/4 v1, 0x0

    .local v1, "slotId":I
    const/4 v0, 0x0

    .local v0, "radioState":Z
    if-ne p1, v3, :cond_3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

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

    :cond_2
    :goto_1
    return v2

    :cond_3
    if-ne p1, v4, :cond_0

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

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

    if-eqz v0, :cond_6

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHasCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLTESwitchAllowed()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "ret":Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .local v1, "isRWMode":Z
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v8

    if-eqz v1, :cond_1

    const/4 v2, 0x0

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

    return v2

    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v7

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v7

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v8

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

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public isLTESwitched()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return v0
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

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getValidCardNum()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    move v1, p2

    .local v1, "status":I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    goto :goto_0

    .end local v1    # "status":I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetNet()I

    move-result v0

    goto :goto_0

    :cond_a
    const/16 v2, 0xc

    if-ne p1, v2, :cond_b

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    :cond_b
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_0

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
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

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

.method public registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

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

.method public registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

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

.method public registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

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

.method public registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

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

.method declared-synchronized releaseCpuLock()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "CP_COMM: Releasing cpu wake lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

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

    const-string v0, "CP_COMM: PhoneModeService  reset "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v2, v0, v2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

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

    if-ne p1, v4, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_3

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

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

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x3

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    aput v2, v0, v1

    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCheck(II)V

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

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

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 p1, 0x1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    const/4 p2, 0x2

    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

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

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gt v0, p1, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-le v0, p2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

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

    :cond_b
    const-string v0, "PhoneModeService"

    const-string v1, "The last action : not airmode ,then close net and back"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, -0x1

    :cond_c
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string v0, "selectModemAndPreferredSlot india no mts CARD "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v8    # "i":I
    :cond_d
    const-string v0, "PhoneModeService"

    const-string v1, "The last action: airMode OR  same choice"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

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

    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/4 v10, 0x0

    .local v10, "ret":I
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .local v6, "cdmaRadioPower":Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    if-ne v6, v0, :cond_11

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v9

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

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    if-nez v9, :cond_f

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    const/4 v0, 0x1

    if-ne v0, v10, :cond_10

    .end local v9    # "isDisconnected":Z
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .restart local v9    # "isDisconnected":Z
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "CP_COMM: interrupted"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_10
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .end local v9    # "isDisconnected":Z
    :cond_11
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .end local v6    # "cdmaRadioPower":Z
    .end local v10    # "ret":I
    .restart local v8    # "i":I
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkUserSelectValid(III)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CP_COMM: selectModemAndPreferredSlot  SELECT_NET_CHOICE_ERROR"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-nez p3, :cond_14

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :cond_14
    const/4 v0, 0x1

    if-ne p3, v0, :cond_15

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :cond_15
    const/4 v0, -0x1

    if-eq p3, v0, :cond_16

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-nez v0, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    :cond_17
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1a

    :cond_18
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    :goto_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1b

    :cond_19
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

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

    const-string v0, "PhoneModeService"

    const-string v1, "shixiaogang selectModemAndPreferedSlotId() the two modemtypes are as same as the previous ones,just return FINISH."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    :cond_1b
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_6

    :cond_1c
    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0xb

    if-gt v8, v0, :cond_1d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_1d
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    const/4 v8, 0x0

    :goto_8
    const/4 v0, 0x2

    if-gt v8, v0, :cond_1e

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x1

    aput v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_1e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public selectModemAndPreferredSlotId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "selectModemAndPreferredSlotId() after switch phone instance"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->start()V

    return-void
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .param p1, "callback"    # Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    .param p2, "events"    # I

    .prologue
    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v3, 0x0

    .local v3, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .local v4, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_2
    return-void

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

    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    iput-object p1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

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

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

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
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return-void
.end method

.method public setDataFirewall(II)V
    .locals 2
    .param p1, "phoneid"    # I
    .param p2, "responseCode"    # I

    .prologue
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneBase;->setDataFirewall(I)Z

    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "yulong.net.select"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    if-nez v0, :cond_0

    const-string v1, "yulong.left.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    const/4 v1, 0x1

    return v1

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
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    return-void
.end method

.method public setSwitchPhoneFalse()V
    .locals 1

    .prologue
    const-string v0, "selectmodem  setSwitchPhoneFalse"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    return-void
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .local v3, "result":Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

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

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v4, p2

    if-nez p2, :cond_2

    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-nez v3, :cond_1

    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_1
    return v3

    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

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

    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p2

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v4, :cond_0

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    goto :goto_1

    :catch_1
    move-exception v0

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
    const/4 v3, 0x0

    .local v3, "result":Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

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

    const/4 v4, 0x2

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/16 v5, 0xa

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v4, p3

    if-nez p3, :cond_2

    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-nez v3, :cond_1

    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_1
    return v3

    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

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

    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v4, :cond_0

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_1

    :catch_1
    move-exception v0

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

    const-string v2, "selectmodem  switchphoneEx begin"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-string v1, "none"

    .local v1, "newPhoneType":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

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

    const/4 v2, 0x0

    .local v2, "slot":I
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v3, :cond_0

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

    const-string v3, "CP_COMM: enter unlock3Gpin"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ne v1, v9, :cond_2

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

    :cond_0
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v3, :cond_1

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

    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-ne v1, v9, :cond_3

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

    :cond_1
    :goto_3
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-ne v1, v7, :cond_0

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

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    if-ne v1, v7, :cond_1

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
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

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

.method public unregisterForCdmaSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

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

.method public unregisterForGsmSubActive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

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

.method public unregisterForGsmSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

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

.method public unregisterForSwitchPhone(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

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
