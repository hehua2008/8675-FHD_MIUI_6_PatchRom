.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneBase$1;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_FIREWALL_STATE_CHANGED:Ljava/lang/String; = "yulong.intent.action.DATA_FIREWALL_STATE"

.field public static final ACTION_MODEM_VERSION_LOW:Ljava/lang/String; = "yulong.intent.action.MODEM_VERSION_LOW"

.field protected static final ACTION_TEST_ATCHANNEL_STRING_RECEIVED:Ljava/lang/String; = "yulong.intent.action.STRINGBACKFROMMODEM"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CDMA_EXTEND:I = 0x32

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x3b

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x29

.field protected static final EVENT_GET_ANTENNA_COMPLETE:I = 0x4a

.field protected static final EVENT_GET_APN_PROFILE_DONE:I = 0x4b

.field protected static final EVENT_GET_AUDIO_REV_DONE:I = 0x1c

.field protected static final EVENT_GET_AVAILABLE_NETWORKS_DONE:I = 0x2e

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_CF_RETRY:I = 0x27

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_DUMP_COMPLETE:I = 0x48

.field protected static final EVENT_GET_EMERGENCY_NUM_DONE:I = 0x2a

.field protected static final EVENT_GET_FTM_COMPLETE:I = 0x46

.field protected static final EVENT_GET_HIDDEN_MENU_VALUE:I = 0x4d

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_MOBILE_IP_PROFILE_DONE:I = 0x4c

.field protected static final EVENT_GET_MODEM_VERSION:I = 0x37

.field protected static final EVENT_GET_NV10_COMPLETE:I = 0x44

.field protected static final EVENT_GET_NV_VERSION_TYPE_DONE:I = 0x39

.field protected static final EVENT_GET_PS_CS_COMPLETE:I = 0x3e

.field protected static final EVENT_GET_RF_CAL_DONE:I = 0x1d

.field protected static final EVENT_GET_RTRE_CONFIG_DONE:I = 0x51

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_GET_SMS_BEARER_TYPE_DONE:I = 0x35

.field protected static final EVENT_GET_SN_DONE:I = 0x2d

.field protected static final EVENT_GET_STATE_AND_CONNECTION_ATTEMPTS:I = 0x4f

.field protected static final EVENT_GET_TDD_LTE:I = 0x41

.field protected static final EVENT_ICC_CHANGED:I = 0x34

.field protected static final EVENT_ICC_READY:I = 0x42

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x3c

.field protected static final EVENT_MASTER_CLEAR_DONE:I = 0x33

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_MODEM_EXCEPTION_STATE:I = 0x54

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_NV_SYSNC_DONE:I = 0x53

.field protected static final EVENT_OPERATE_FACNUMBER_DONE:I = 0x38

.field protected static final EVENT_PHONEMODESERVICE_SUBSCRIPTION_ACTIVE:I = 0x21

.field protected static final EVENT_PHONEMODESERVICE_SUBSCRIPTION_DEACTIVE:I = 0x22

.field protected static final EVENT_QUERY_CDMA_ROAMING_PREFERENCE:I = 0x4e

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_REMOVE_ALL_INVALID_SID:I = 0x3a

.field protected static final EVENT_RESET_MODEM_DONE:I = 0x52

.field protected static final EVENT_RIL_RESET_SUCCESS:I = 0x23

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_ANTENNA_COMPLETE:I = 0x49

.field protected static final EVENT_SET_APN_PROFILE_DONE:I = 0x50

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_DATA_FIREWALL:I = 0x28

.field protected static final EVENT_SET_DUMP_COMPLETE:I = 0x47

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_FTM_COMPLETE:I = 0x45

.field protected static final EVENT_SET_IMEI_FROME_CDMA_MEID:I = 0x2c

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_NV10_COMPLETE:I = 0x43

.field protected static final EVENT_SET_PS_CS_COMPLETE:I = 0x3f

.field protected static final EVENT_SET_SMS_BEARER_TYPE_DONE:I = 0x36

.field protected static final EVENT_SET_SND_DEVICE_DONE:I = 0x1b

.field protected static final EVENT_SET_TDD_LTE:I = 0x40

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_STORE_ESN_DONE:I = 0x20

.field protected static final EVENT_SUBSCRIPTION_READY:I = 0x1f

.field protected static final EVENT_SYS_NEED_RELSEL_PREF:I = 0x24

.field protected static final EVENT_SYS_SET_RADIOOFF:I = 0x25

.field protected static final EVENT_TEST_ATCHANNEL_COMPLETE:I = 0x3d

.field protected static final EVENT_USSD:I = 0x7

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBase"

.field public static final NEED_BROADCAST_FOR_DEVICEPARAM:Ljava/lang/String; = "android.intent.action.GET_YLPARAM"

.field public static final NEED_BROADCAST_FOR_NO_MEIDORIMEI:Ljava/lang/String; = "broadcast.no.meidorimei"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static mDeviceId:[Ljava/lang/String;

.field public static mHasGetDevParam:I

.field static mPhoneInstanceNums:I

.field public static mSn:Ljava/lang/String;


# instance fields
.field public IsActive:I

.field public final MODEM_RESET:I

.field public coucolcalinfo:Lcom/yulong/android/telephony/CouColCalInfo;

.field protected hasSendBroadOfImeiSv:Z

.field protected isFirstGetPhonePara:Z

.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field protected final mAvpUpgradeFailureRegistrants:Landroid/os/RegistrantList;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field mCardState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

.field protected final mCdmaNotifyGsmWriteMeid:Landroid/os/RegistrantList;

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field public mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field public mDesiredSmsBearerType:Ljava/lang/String;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field public mIccCard:Lcom/android/internal/telephony/IccCard;

.field public mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field public mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsManualSelectNW:Z

.field public mIsTheCurrentActivePhone:Z

.field mIsVoiceCapable:Z

.field protected mLooper:Landroid/os/Looper;

.field protected mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected mModemVersion:Ljava/lang/String;

.field protected final mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

.field private final mName:Ljava/lang/String;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mNvVersion:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mPhoneSlotId:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field private mReply:Landroid/os/Bundle;

.field public mSMS:Lcom/android/internal/telephony/SMSDispatcher;

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field protected mSlotId:I

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field private mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field protected mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public smsBearerType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    sput v2, Lcom/android/internal/telephony/PhoneBase;->mPhoneInstanceNums:I

    .line 122
    sput v2, Lcom/android/internal/telephony/PhoneBase;->mHasGetDevParam:I

    .line 123
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/PhoneBase;->mSn:Ljava/lang/String;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneBase;->mDeviceId:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 403
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 404
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    iput-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mCardState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 110
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    .line 127
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->hasSendBroadOfImeiSv:Z

    .line 128
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->isFirstGetPhonePara:Z

    .line 130
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    .line 131
    const-string v2, "00"

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNvVersion:Ljava/lang/String;

    .line 276
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 277
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 280
    iput-object v6, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 281
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 284
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 292
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->IsActive:I

    .line 295
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->smsBearerType:Ljava/lang/String;

    .line 296
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDesiredSmsBearerType:Ljava/lang/String;

    .line 299
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->MODEM_RESET:I

    .line 338
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 341
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 344
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 347
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 350
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 353
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 356
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 359
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 362
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 366
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCdmaNotifyGsmWriteMeid:Landroid/os/RegistrantList;

    .line 368
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 371
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mAvpUpgradeFailureRegistrants:Landroid/os/RegistrantList;

    .line 375
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    .line 418
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    .line 419
    new-instance v2, Lcom/yulong/android/telephony/CouColCalInfo;

    invoke-direct {v2}, Lcom/yulong/android/telephony/CouColCalInfo;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->coucolcalinfo:Lcom/yulong/android/telephony/CouColCalInfo;

    .line 420
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 421
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    .line 423
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".action_detached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".action_attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    .line 427
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 428
    new-instance v2, Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->setPropertiesByCarrier()V

    .line 433
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    .line 435
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 437
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x54

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemExceptionState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    .line 459
    const-string v2, "ro.telephony.call_ring.multiple"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    .line 461
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDoesRilSendMultipleCallRing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v2, "ro.telephony.call_ring.delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    .line 465
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallRingDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 468
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "setModemPowerOperation"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 469
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 470
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 472
    new-instance v2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v2, p3}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 473
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 474
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0x34

    invoke-virtual {v2, p0, v3, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    sget v2, Lcom/android/internal/telephony/PhoneBase;->mPhoneInstanceNums:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/PhoneBase;->mPhoneInstanceNums:I

    .line 476
    return-void
.end method

.method private checkAndNotifyDeviceId(Ljava/lang/String;I)V
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "retryTimes"    # I

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PhoneBase"

    const-string v4, "Get device id failed since it is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ro.ril.miui.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x32

    if-ge p2, v3, :cond_0

    add-int/lit8 v2, p2, 0x1

    .local v2, "times":I
    mul-int v3, v2, v2

    mul-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v0, v3

    .local v0, "delay":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    :cond_2
    new-instance v3, Lcom/android/internal/telephony/PhoneBase$1;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/telephony/PhoneBase$1;-><init>(Lcom/android/internal/telephony/PhoneBase;I)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "delay":J
    .end local v2    # "times":I
    :cond_3
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get device id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDeviceIdSystemProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1182
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    return-void
.end method

.method private getIsimUiccRecords()Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .locals 6

    .prologue
    .line 2548
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2549
    .local v0, "currentcard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2550
    .local v2, "mUiccApplications":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 2551
    .local v3, "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const/4 v1, 0x0

    .line 2552
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 2553
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_1

    .line 2554
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .end local v3    # "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v3, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2558
    .restart local v3    # "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_0
    return-object v3

    .line 2552
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1078
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1863
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, CDMAPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void
.end method

.method private logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2212
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, GSMPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return-void
.end method

.method private notifyIncomingRing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1837
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1838
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1839
    return-void
.end method

.method private privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v4, 0x7fffffff

    .line 1359
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1361
    .local v10, "mode":I
    if-nez v10, :cond_2

    .line 1362
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1364
    .local v12, "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 1365
    .local v6, "c":Landroid/telephony/CellInfo;
    instance-of v1, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_0

    move-object v8, v6

    .line 1366
    check-cast v8, Landroid/telephony/CellInfoCdma;

    .line 1367
    .local v8, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    .line 1368
    .local v7, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    .line 1373
    .local v0, "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v11, Landroid/telephony/CellInfoCdma;

    invoke-direct {v11, v8}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    .line 1374
    .local v11, "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v11, v0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    .line 1375
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1377
    .end local v0    # "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v7    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v8    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v11    # "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    :cond_0
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1380
    .end local v6    # "c":Landroid/telephony/CellInfo;
    :cond_1
    move-object p1, v12

    .line 1382
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    return-object p1
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    .line 1846
    const-string v0, "PhoneBase"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    .line 1848
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1856
    :goto_0
    return-void

    .line 1851
    :cond_0
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDeviceIdSystemProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.ril.miui.imei"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPropertiesByCarrier()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 1194
    const-string v9, "ro.carrier"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "unknown"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070033

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1203
    .local v2, "carrierLocales":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_0

    .line 1204
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1206
    add-int/lit8 v9, v5, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1208
    .local v6, "l":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1209
    .local v7, "language":Ljava/lang/String;
    const-string v3, ""

    .line 1210
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    .line 1211
    const/4 v9, 0x3

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1213
    :cond_2
    invoke-virtual {p0, v7, v3, v11}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1215
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1217
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_country_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v4

    .line 1221
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 1223
    .local v8, "wM":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8, v3, v11}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1203
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v6    # "l":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "wM":Landroid/net/wifi/WifiManager;
    :cond_3
    add-int/lit8 v5, v5, 0x3

    goto :goto_1
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 3
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2644
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept with CallType is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2725
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptConnectionTypeChange is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInvalidSidToList(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2349
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    return-void
.end method

.method public addParticipant(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clir"    # I
    .param p3, "callType"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2663
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParticipant is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2328
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2720
    .local p4, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeConnectionType is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivateIMSDataCall(IILandroid/os/Message;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    .line 2528
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [deactivateIMSDataCall] Error! mCi == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 2531
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2673
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deflectCall is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "CallType"    # I
    .param p3, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2657
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dial with CallDetails is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 931
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 932
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 933
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 934
    return-void
.end method

.method public disableQos(I)I
    .locals 1
    .param p1, "qosId"    # I

    .prologue
    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 479
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 489
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->removeMessages(I)V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyTester;->dispose()V

    .line 494
    :cond_0
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2287
    const-string v0, "PhoneBase:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDnsCheckDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDoesRilSendMultipleCallRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingContinueToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsTheCurrentActivePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsStorageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsUsageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLooper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimulatedRadioControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUnitTestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDnsCheckDisabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getUnitTestMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccSerialNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccRecordsLoaded()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getMessageWaitingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCallForwardingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEmergencyCall()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEcm()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getVoiceMessageCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getActiveApnTypes()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDataConnectivityPossible()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " needsOtaServiceProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->needsOtaServiceProvisioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1470
    const-string v0, "enableEnhancedVoicePrivacy"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 1
    .param p1, "qosSpec"    # Lcom/android/internal/telephony/QosSpec;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1795
    const/4 v0, 0x0

    return v0
.end method

.method public execRuimEsnOp(ZLandroid/os/Message;)Z
    .locals 2
    .param p1, "op"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1935
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [execRuimEsnOp] Error! This functionality is not implemented for PhoneBase."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v0, 0x0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1607
    const-string v0, "exitEmergencyCallbackMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1608
    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1351
    .local v0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllInvalidSid(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2352
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    return-void
.end method

.method public getCallDomain(Lcom/android/internal/telephony/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2652
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallDomain is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1402
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2648
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCardType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    .line 2194
    return-void
.end method

.method public getCarrierNameFromParamStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2511
    invoke-static {}, Lcom/yulong/android/telephony/CPSprintPriManager;->getInstance()Lcom/yulong/android/telephony/CPSprintPriManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPSprintPriManager;->getCarrierNameFromParamStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1561
    const-string v0, "getCdmaEriIconIndex"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1562
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1571
    const-string v0, "getCdmaEriIconMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1572
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1579
    const-string v0, "getCdmaEriText"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1580
    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaEriVersion()I
    .locals 1

    .prologue
    .line 2399
    const-string v0, "getCdmaEriVersion"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 2400
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1585
    const-string v0, "getCdmaMin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1586
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1596
    const-string v0, "getCdmaPrlVersion"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaUimId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1945
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [getCdmaUimId] Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellID(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCellID(Landroid/os/Message;)V

    .line 2187
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentInvalidSid(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2340
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return-void
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1321
    .local v0, "currentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    .line 1324
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 2196
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionTracker()Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method public abstract getDataFirewall()I
.end method

.method public getDefaultNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDefaultNetworkType(Landroid/os/Message;)V

    .line 2207
    return-void
.end method

.method public abstract getDesiredPowerState()Z
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1475
    const-string v0, "getEnhancedVoicePrivacy"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .prologue
    .line 1302
    return-object p0
.end method

.method public getIMSDataCallList(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    .line 2535
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [getIMSDataCallList] Error! mCi == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2538
    return-void
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1294
    .local v0, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1295
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1342
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1335
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1336
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImpiFromIsim(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2571
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getIsimUiccRecords()Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    move-result-object v0

    .line 2572
    .local v0, "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-nez v0, :cond_0

    .line 2573
    const-string v1, "PhoneBase"

    const-string v2, "CP_COMM: [getImpi] Error! records == null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    const/4 v1, 0x0

    .line 2576
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getImpuFromIsim(Landroid/os/Message;)[Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2562
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getIsimUiccRecords()Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    move-result-object v0

    .line 2563
    .local v0, "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-nez v0, :cond_0

    .line 2564
    const-string v1, "PhoneBase"

    const-string v2, "CP_COMM: [getImpu] Error! records == null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    const/4 v1, 0x0

    .line 2567
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsimDomainFromIsim(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2580
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getIsimUiccRecords()Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    move-result-object v0

    .line 2581
    .local v0, "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-nez v0, :cond_0

    .line 2582
    const-string v1, "PhoneBase"

    const-string v2, "CP_COMM: [getIsimDomain] Error! records == null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const/4 v1, 0x0

    .line 2585
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsimPcscf(Landroid/os/Message;)Ljava/util/Map;
    .locals 3
    .param p1, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2588
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getIsimUiccRecords()Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    move-result-object v0

    .line 2589
    .local v0, "records":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-nez v0, :cond_0

    .line 2590
    const-string v1, "PhoneBase"

    const-string v2, "CP_COMM: [getIsimDomain] Error! records == null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const/4 v1, 0x0

    .line 2593
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimPcscf()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2

    .prologue
    .line 1939
    const-string v0, "PhoneBase"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 2

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1396
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageWaiting()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mModemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2168
    const-string v0, "getMsisdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 2169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNvVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNvVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 2367
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNums()I
    .locals 1

    .prologue
    .line 1878
    sget v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneInstanceNums:I

    return v0
.end method

.method public abstract getPhoneSlot()I
.end method

.method public getPhoneSlotId()I
    .locals 1

    .prologue
    .line 2378
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneSlotId:I

    return v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1448
    return-void
.end method

.method public getPreferredPLMNList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2335
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for GSMPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2735
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProposedConnectionType is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQosStatus(I)I
    .locals 1
    .param p1, "qosId"    # I

    .prologue
    .line 1815
    const/4 v0, 0x0

    return v0
.end method

.method public getRFCalibration()[I
    .locals 2

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->coucolcalinfo:Lcom/yulong/android/telephony/CouColCalInfo;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/yulong/android/telephony/CouColCalInfo;->toIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public abstract getReplayParam(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method public getRoamingMode()I
    .locals 8

    .prologue
    .line 2484
    const/4 v4, -0x1

    .line 2485
    .local v4, "roamingMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v3

    .line 2486
    .local v3, "roamingInd":I
    const/16 v5, 0x15

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 2487
    .local v2, "intRoamingEri":[I
    const/4 v1, 0x0

    .line 2488
    .local v1, "intRoaming":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 2489
    aget v5, v2, v0

    if-ne v5, v3, :cond_0

    .line 2490
    const/4 v1, 0x1

    .line 2488
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2495
    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 2497
    :cond_2
    const/4 v4, 0x0

    .line 2505
    :goto_1
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx : roamingMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    return v4

    .line 2498
    :cond_3
    if-eqz v1, :cond_4

    .line 2500
    const/4 v4, 0x2

    goto :goto_1

    .line 2503
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 2486
    nop

    :array_0
    .array-data 4
        0x4a
        0x7c
        0x7d
        0x7e
        0x9d
        0x9e
        0x9f
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xe4
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
    .end array-data
.end method

.method public abstract getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
.end method

.method public getSMSCAdrr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2160
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [getSMSCAdrr] Error! This function should never be executed."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingsParam(Ljava/lang/String;)I
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 2461
    const/4 v1, -0x1

    .line 2463
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2464
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2468
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v1

    .line 2465
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 1418
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_0

    .line 1419
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 1421
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 2371
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSlotId:I

    return v0
.end method

.method public getSmsWorkStatus()Z
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsWorkStatus()Z

    move-result v0

    return v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1452
    return-void
.end method

.method public getSn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2405
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSn() sn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneBase;->mSn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    sget-object v0, Lcom/android/internal/telephony/PhoneBase;->mSn:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 2

    .prologue
    .line 2282
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2283
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 39
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 526
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    sparse-switch v35, :sswitch_data_0

    .line 911
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "unexpected event not handled"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 528
    :sswitch_0
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_CALL_RING Received state="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 530
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    .line 532
    .local v31, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    sget-object v35, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_0

    sget-object v35, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    .line 913
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    :goto_0
    return-void

    .line 538
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    .restart local v31    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    goto :goto_0

    .line 544
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v35

    sget-object v36, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 546
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    .line 551
    :sswitch_2
    const-string v35, "PhoneBase"

    const-string v36, "ShutDown: set radio off"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 556
    :sswitch_3
    const-string v35, "PhoneBase"

    const-string v36, "Event EVENT_GET_RF_CAL_DONE Received"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 558
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3

    .line 559
    const-string v35, "PhoneBase"

    const-string v36, "EVENT_GET_RF_CAL_DONE, exception = "

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v37}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 562
    :cond_3
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v28, v35

    check-cast v28, [Ljava/lang/String;

    .line 563
    .local v28, "rf":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 565
    .local v11, "i":I
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_4

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0xb

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    .line 566
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v11, v0, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->coucolcalinfo:Lcom/yulong/android/telephony/CouColCalInfo;

    move-object/from16 v35, v0

    aget-object v36, v28, v11

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    move/from16 v37, v0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v11, v1, v2}, Lcom/yulong/android/telephony/CouColCalInfo;->setCouColCal(III)V

    .line 568
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->coucolcalinfo:Lcom/yulong/android/telephony/CouColCalInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Lcom/yulong/android/telephony/CouColCalInfo;->showCouColCal(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " is "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    aget-object v37, v28, v11

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 574
    :cond_4
    const-string v35, "PhoneBase"

    const-string v36, "Event EVENT_GET_RF_CAL_DONE ERR "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 580
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "i":I
    .end local v28    # "rf":[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 582
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5

    .line 583
    const-string v35, "PhoneBase"

    const-string v36, "CP_COMM: EVENT_OPERATE_NUMBER_DONE failed."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 585
    :cond_5
    iget-object v10, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/yulong/android/internal/telephony/FactoryNumber;

    .line 586
    .local v10, "factoryNumber":Lcom/yulong/android/internal/telephony/FactoryNumber;
    invoke-virtual {v10}, Lcom/yulong/android/internal/telephony/FactoryNumber;->getKey()I

    move-result v13

    .line 587
    .local v13, "key":I
    invoke-virtual {v10}, Lcom/yulong/android/internal/telephony/FactoryNumber;->getOperate()I

    move-result v23

    .line 588
    .local v23, "operate":I
    invoke-virtual {v10}, Lcom/yulong/android/internal/telephony/FactoryNumber;->getResultString()Ljava/lang/String;

    move-result-object v27

    .line 589
    .local v27, "resultString":Ljava/lang/String;
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Operate number done, key: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", operate = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", result: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOperateFactoryNumberDone(Lcom/android/internal/telephony/Phone;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 596
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "factoryNumber":Lcom/yulong/android/internal/telephony/FactoryNumber;
    .end local v13    # "key":I
    .end local v23    # "operate":I
    .end local v27    # "resultString":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 598
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_7

    .line 599
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v5, v35

    check-cast v5, [Ljava/lang/String;

    .line 600
    .local v5, "apn":[Ljava/lang/String;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 601
    .local v24, "replyBundle":Landroid/os/Bundle;
    const-string v35, "lteApnProfileRead"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 602
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 603
    .local v22, "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 604
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_6

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "reply_bundle"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 608
    :cond_6
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 609
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 612
    .end local v5    # "apn":[Ljava/lang/String;
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v24    # "replyBundle":Landroid/os/Bundle;
    :cond_7
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 613
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 614
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 615
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 620
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 622
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_9

    .line 623
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v17, v35

    check-cast v17, [Ljava/lang/String;

    .line 624
    .local v17, "mip":[Ljava/lang/String;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 625
    .restart local v24    # "replyBundle":Landroid/os/Bundle;
    const-string v35, "mobileIpProfileRead"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 626
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 627
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 628
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "reply_bundle"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 632
    :cond_8
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 633
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 636
    .end local v17    # "mip":[Ljava/lang/String;
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v24    # "replyBundle":Landroid/os/Bundle;
    :cond_9
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 637
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 638
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 639
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 644
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 646
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_b

    .line 647
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v34, v35

    check-cast v34, [Ljava/lang/String;

    .line 648
    .local v34, "values":[Ljava/lang/String;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 649
    .restart local v24    # "replyBundle":Landroid/os/Bundle;
    const-string v35, "hiddenMenuValue"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 650
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 651
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 652
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_a

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "reply_bundle"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 656
    :cond_a
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 657
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 660
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v24    # "replyBundle":Landroid/os/Bundle;
    .end local v34    # "values":[Ljava/lang/String;
    :cond_b
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 661
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 662
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 663
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 668
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 670
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_e

    .line 671
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [I

    move-object/from16 v29, v35

    check-cast v29, [I

    .line 672
    .local v29, "roamingPre":[I
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 673
    .restart local v24    # "replyBundle":Landroid/os/Bundle;
    if-eqz v29, :cond_c

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_c

    .line 674
    const-string v35, "phonebase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_QUERY_CDMA_ROAMING_PREFERENCE roam "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x0

    aget v37, v29, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v35, "roamingMode"

    const/16 v36, 0x0

    aget v36, v29, v36

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    :cond_c
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 678
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 679
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "reply_bundle"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 683
    :cond_d
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 684
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 687
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v24    # "replyBundle":Landroid/os/Bundle;
    .end local v29    # "roamingPre":[I
    :cond_e
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 688
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 689
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 690
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 695
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 697
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_10

    .line 698
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v25, v35

    check-cast v25, [Ljava/lang/String;

    .line 699
    .local v25, "res":[Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 700
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 701
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    .line 703
    if-eqz v25, :cond_f

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 707
    :cond_f
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 708
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 711
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v25    # "res":[Ljava/lang/String;
    :cond_10
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 712
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 713
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 714
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 719
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 720
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 721
    .restart local v22    # "onComplete":Landroid/os/Message;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    .line 722
    const-string v35, "PhoneBase"

    const-string v36, "CP_COMM: EVENT_SET_APN_PROFILE_DONE failed."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_11
    :goto_2
    if-eqz v22, :cond_1

    .line 732
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 733
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 724
    :cond_12
    if-eqz v22, :cond_11

    .line 725
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/yulong/android/telephony/ApnProfile;

    .line 726
    .local v21, "omaApn":Lcom/yulong/android/telephony/ApnProfile;
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CP_COMM: EVENT_SET_APN_PROFILE_DONE apn = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v21 .. v21}, Lcom/yulong/android/telephony/ApnProfile;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 737
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "omaApn":Lcom/yulong/android/telephony/ApnProfile;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_b
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Event EVENT_ICC_CHANGED Received mPhoneId = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->onUpdateIccAvailability()V

    goto/16 :goto_0

    .line 741
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 743
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    .line 744
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v30, v35

    check-cast v30, [Ljava/lang/String;

    .line 745
    .local v30, "sres":[Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 746
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 747
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_13

    .line 749
    if-eqz v30, :cond_13

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 753
    :cond_13
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 754
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 757
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v30    # "sres":[Ljava/lang/String;
    :cond_14
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 758
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 759
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 760
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 765
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 767
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_16

    .line 768
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v18, v35

    check-cast v18, [Ljava/lang/String;

    .line 769
    .local v18, "mode":[Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 770
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 771
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_15

    .line 773
    if-eqz v18, :cond_15

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "data"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 777
    :cond_15
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 778
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 781
    .end local v18    # "mode":[Ljava/lang/String;
    .end local v22    # "onComplete":Landroid/os/Message;
    :cond_16
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 782
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 783
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 784
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 789
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 791
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/16 v31, 0x0

    .line 792
    .local v31, "state":I
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_18

    .line 793
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v32, v35

    check-cast v32, [Ljava/lang/String;

    .line 794
    .local v32, "temp_res":[Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 795
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 796
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_17

    .line 798
    if-eqz v32, :cond_17

    .line 799
    const/16 v35, 0x0

    aget-object v35, v32, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "tdlteModeState"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    :cond_17
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 804
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 807
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v32    # "temp_res":[Ljava/lang/String;
    :cond_18
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 808
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 809
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 810
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 819
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v31    # "state":I
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 820
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 821
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 822
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 823
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 830
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 831
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const/4 v8, 0x0

    .line 832
    .local v8, "cur_state":I
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_1a

    .line 833
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [Ljava/lang/String;

    move-object/from16 v33, v35

    check-cast v33, [Ljava/lang/String;

    .line 834
    .local v33, "temp_str":[Ljava/lang/String;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 835
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 836
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    if-eqz v35, :cond_19

    .line 838
    if-eqz v33, :cond_19

    .line 839
    const/16 v35, 0x0

    aget-object v35, v33, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mReply:Landroid/os/Bundle;

    move-object/from16 v35, v0

    const-string v36, "status"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    :cond_19
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 844
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 847
    .end local v22    # "onComplete":Landroid/os/Message;
    .end local v33    # "temp_str":[Ljava/lang/String;
    :cond_1a
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 848
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 849
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 850
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 856
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "cur_state":I
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 857
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 858
    .restart local v22    # "onComplete":Landroid/os/Message;
    if-eqz v22, :cond_1

    .line 859
    const-string v35, "PhoneBase"

    const-string v36, "== yulong ===nv sysnc and send modem reset result ===="

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v35, 0x0

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 861
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 865
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "onComplete":Landroid/os/Message;
    :sswitch_12
    const/16 v26, -0x1

    .line 867
    .local v26, "resetType":I
    :try_start_0
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_RIL_RESET_SUCCESS msg.obj = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1c

    .line 869
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 870
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_RIL_RESET_SUCCESS ar.result = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1b

    .line 872
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [I

    move-object/from16 v0, v35

    check-cast v0, [I

    move-object v12, v0

    .line 873
    .local v12, "ints":[I
    array-length v0, v12

    move/from16 v35, v0

    if-lez v35, :cond_1b

    .line 874
    const/16 v35, 0x0

    aget v26, v12, v35
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "ints":[I
    :cond_1b
    :goto_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v35

    if-nez v35, :cond_1

    const/16 v35, 0x5

    move/from16 v0, v26

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 884
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/yulong/android/internal/telephony/PhoneModeService;->reset()V

    .line 885
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/yulong/android/internal/telephony/PhoneModeService;->RestartNet4ModemReset()V

    goto/16 :goto_0

    .line 878
    :cond_1c
    const/16 v26, 0x0

    goto :goto_3

    .line 880
    :catch_0
    move-exception v9

    .line 881
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 891
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v26    # "resetType":I
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 892
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 893
    .local v7, "cardId":I
    const-string v35, "PhoneBase"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "EVENT_MODEM_EXCEPTION_STATE Received cardIndex"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 895
    const-string v35, "persist.service.logr.enable"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 896
    .local v16, "logApkIsSetOn":Ljava/lang/String;
    const-string v35, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "notification"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 898
    .local v20, "noti_mana":Landroid/app/NotificationManager;
    new-instance v14, Landroid/content/Intent;

    const-string v35, ""

    move-object/from16 v0, v35

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v14, "localIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 901
    .local v15, "localPendingIntent":Landroid/app/PendingIntent;
    new-instance v19, Landroid/app/Notification;

    const v35, 0x108009b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const v37, 0x1040014

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    const-wide/16 v37, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v35

    move-object/from16 v2, v36

    move-wide/from16 v3, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 903
    .local v19, "noti":Landroid/app/Notification;
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "Modem Exception!"

    const-string v37, "Dump Log!"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 906
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 526
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x1d -> :sswitch_3
        0x23 -> :sswitch_12
        0x25 -> :sswitch_2
        0x34 -> :sswitch_b
        0x38 -> :sswitch_4
        0x3e -> :sswitch_c
        0x3f -> :sswitch_d
        0x41 -> :sswitch_e
        0x43 -> :sswitch_f
        0x44 -> :sswitch_10
        0x45 -> :sswitch_f
        0x46 -> :sswitch_10
        0x47 -> :sswitch_f
        0x48 -> :sswitch_10
        0x49 -> :sswitch_f
        0x4a -> :sswitch_10
        0x4b -> :sswitch_5
        0x4c -> :sswitch_6
        0x4d -> :sswitch_7
        0x4e -> :sswitch_8
        0x4f -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_11
        0x53 -> :sswitch_11
        0x54 -> :sswitch_13
    .end sparse-switch
.end method

.method public hangupWithReason(ILjava/lang/String;ZILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2668
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupWithReason is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1488
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1492
    return-void
.end method

.method protected isCdmaTech()Z
    .locals 5

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 2618
    .local v1, "currentRat":I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2621
    .local v0, "bIsCdmaTech":Z
    :goto_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaTech: currentRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bIsCdmaTech = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    return v0

    .line 2618
    .end local v0    # "bIsCdmaTech":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2219
    const-string v0, "isCspPlmnEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    .line 2220
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1790
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    return v0
.end method

.method protected isGsmTech()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 2634
    .local v0, "currentRat":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    .line 2637
    .local v1, "isGsmTech":Z
    :cond_0
    :goto_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGsmTech: currentRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isGsmTech = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    return v1

    .line 2634
    .end local v1    # "isGsmTech":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1534
    const/4 v0, 0x0

    return v0
.end method

.method protected isLteTech()Z
    .locals 5

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 2627
    .local v1, "currentRat":I
    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2628
    .local v0, "bIs4GTech":Z
    :goto_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteTech: currentRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bIs4GTech = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    return v0

    .line 2627
    .end local v0    # "bIs4GTech":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1590
    const-string v0, "isMinInfoReady"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1644
    const-string v0, "isOtaSpNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1645
    const/4 v0, 0x0

    return v0
.end method

.method public isQcDSDAofDSDX()Z
    .locals 1

    .prologue
    .line 2603
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isQcDSDX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2604
    const/4 v0, 0x1

    .line 2606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQcDSDSofDSDX()Z
    .locals 1

    .prologue
    .line 2610
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isQcDSDX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    const/4 v0, 0x1

    .line 2613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQcDSDX()Z
    .locals 1

    .prologue
    .line 2596
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    const/4 v0, 0x1

    .line 2599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTModifyAllowed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2693
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVTModifyAllowed is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .locals 1
    .param p1, "qosId"    # I
    .param p2, "qosSpec"    # Lcom/android/internal/telephony/QosSpec;

    .prologue
    .line 1803
    const/4 v0, 0x0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1635
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 2226
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    .line 1528
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 1496
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, "types":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1514
    .local v0, "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v0, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1516
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1510
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1506
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    .line 1115
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1116
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1117
    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 1501
    return-void
.end method

.method protected notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    .line 1829
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1830
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1831
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 1520
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 960
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 961
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 962
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .line 1162
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1163
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1165
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 1166
    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 1524
    return-void
.end method

.method public notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    .locals 3
    .param p1, "mSlotCardInfos"    # [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .prologue
    .line 2429
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nofitySlotCardInfo mSlotCardInfos[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSlotCardInfos[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    .line 2432
    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public operateFactoryNumber(IILjava/lang/String;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "operate"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2418
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operateFactoryNumber key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isWriteNumberSupportted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2420
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->operateFactoryNumber(IILjava/lang/String;Landroid/os/Message;)V

    .line 2426
    :goto_0
    return-void

    .line 2422
    :cond_0
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operateFactoryNumber key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not supported, return Fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const-string v0, "Command not supportted in this product."

    .line 2424
    .local v0, "resultString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOperateFactoryNumberDone(Lcom/android/internal/telephony/Phone;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1484
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1410
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1465
    const-string v0, "queryTTYMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1710
    return-void
.end method

.method public registerForAvpUpgradeFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2708
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForAvpUpgradeFailure is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1650
    const-string v0, "registerForCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1651
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1612
    const-string v0, "registerForCdmaOtaStatusChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1027
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1678
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1660
    const-string v0, "registerForEcmTimerReset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1002
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 992
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1015
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1702
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1063
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1051
    return-void
.end method

.method public registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2679
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForModifyCallRequest is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForModifyCallResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2685
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForModifyCallResponse is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    return-void
.end method

.method public registerForNoValidNetwork(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2356
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1686
    return-void
.end method

.method public registerForNvRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNvRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2448
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 948
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1694
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1145
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1135
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1125
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1670
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1622
    const-string v0, "registerForSubscriptionInfoReady"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1623
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1039
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 969
    return-void
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2730
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectConnectionTypeChange is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllInvalidSid(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2346
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 499
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 500
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 503
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 504
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 506
    return-void
.end method

.method public removeSelectedInvalidSid(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2343
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    return-void
.end method

.method public requestIMSAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2540
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: 11 [requestIMSAuthentication] "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    .line 2542
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [requestIMSAuthentication]."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2545
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2164
    const-string v0, "PhoneBase"

    const-string v1, "requestIsimAuthentication() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "networkSelection":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public resumeQos(I)I
    .locals 1
    .param p1, "qosId"    # I

    .prologue
    .line 1811
    const/4 v0, 0x0

    return v0
.end method

.method public rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "ioCode"    # I
    .param p2, "inStr1"    # Ljava/lang/String;
    .param p3, "inStr2"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1950
    const-string v1, "phonebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rilIoControl : iocode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 1952
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->updateSignalStrength()V

    .line 1953
    invoke-static {p4, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1954
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1977
    :goto_0
    return-void

    .line 1955
    :cond_0
    const/16 v1, 0x83

    if-ne p1, v1, :cond_1

    .line 1956
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    .line 1957
    .local v0, "str":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->smsBearerType:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 1958
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1959
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1960
    .end local v0    # "str":[Ljava/lang/String;
    :cond_1
    const/16 v1, 0x84

    if-ne p1, v1, :cond_2

    .line 1961
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mDesiredSmsBearerType:Ljava/lang/String;

    .line 1962
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x36

    invoke-virtual {p0, v2, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1964
    :cond_2
    const/16 v1, 0x85

    if-ne p1, v1, :cond_3

    .line 1965
    const-string v0, ""

    .line 1966
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getModemVersion()Ljava/lang/String;

    move-result-object v0

    .line 1967
    const-string v1, "phonebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1969
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1970
    .end local v0    # "str":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x18

    if-ne p1, v1, :cond_4

    .line 1971
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, p4}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1972
    :cond_4
    const/16 v1, 0x19

    if-ne p1, v1, :cond_5

    .line 1973
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 1975
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public rilIoControlEx(ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 9
    .param p1, "ioCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "reply"    # Landroid/os/Bundle;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 1980
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx : iocode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const/4 v4, 0x0

    .line 1982
    .local v4, "value":I
    packed-switch p1, :pswitch_data_0

    .line 2156
    :goto_0
    :pswitch_0
    return-void

    .line 1984
    :pswitch_1
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1985
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x3e

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1989
    :pswitch_2
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1990
    const-string v5, "LTECsPsMode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1991
    .local v0, "LTECsPsMode":I
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {p0, v7, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, p1, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1995
    .end local v0    # "LTECsPsMode":I
    :pswitch_3
    const-string v5, "tdlteModeState"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1996
    .local v1, "TDDltemode":I
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v8, v8}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1999
    .end local v1    # "TDDltemode":I
    :pswitch_4
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2000
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x41

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2007
    :pswitch_5
    const-string v5, "NvValue"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2008
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6, v8, v8}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2011
    :pswitch_6
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2012
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x44

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2016
    :pswitch_7
    const-string v5, "FtmValue"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2017
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x45

    invoke-virtual {p0, v7, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, p1, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2021
    :pswitch_8
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2022
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x46

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2026
    :pswitch_9
    const-string v5, "AntennaValue"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2027
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x49

    invoke-virtual {p0, v7, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, p1, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2031
    :pswitch_a
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2032
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x4a

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2036
    :pswitch_b
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x52

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2039
    :pswitch_c
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x53

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2044
    :pswitch_d
    invoke-static {p2}, Lcom/yulong/android/telephony/MobileIpProfile;->newFromBundle(Landroid/os/Bundle;)Lcom/yulong/android/telephony/MobileIpProfile;

    move-result-object v3

    .line 2045
    .local v3, "mip":Lcom/yulong/android/telephony/MobileIpProfile;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, p4}, Lcom/android/internal/telephony/CommandsInterface;->mobileIpProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2048
    .end local v3    # "mip":Lcom/yulong/android/telephony/MobileIpProfile;
    :pswitch_e
    invoke-static {p2}, Lcom/yulong/android/telephony/ApnProfile;->newFromBundle(Landroid/os/Bundle;)Lcom/yulong/android/telephony/ApnProfile;

    move-result-object v2

    .line 2050
    .local v2, "apn":Lcom/yulong/android/telephony/ApnProfile;
    const-string v5, "internet"

    invoke-virtual {v2}, Lcom/yulong/android/telephony/ApnProfile;->getmApnNameType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2051
    const-string v5, "1"

    invoke-virtual {v2, v5}, Lcom/yulong/android/telephony/ApnProfile;->setmProfileId(Ljava/lang/String;)V

    .line 2057
    :cond_0
    :goto_1
    iput-object v2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2058
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x50

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->apnProfileWrite(Ljava/lang/Object;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2052
    :cond_1
    const-string v5, "pam"

    invoke-virtual {v2}, Lcom/yulong/android/telephony/ApnProfile;->getmApnNameType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2053
    const-string v5, "2"

    invoke-virtual {v2, v5}, Lcom/yulong/android/telephony/ApnProfile;->setmProfileId(Ljava/lang/String;)V

    goto :goto_1

    .line 2054
    :cond_2
    const-string v5, "ota"

    invoke-virtual {v2}, Lcom/yulong/android/telephony/ApnProfile;->getmApnNameType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2055
    const-string v5, "3"

    invoke-virtual {v2, v5}, Lcom/yulong/android/telephony/ApnProfile;->setmProfileId(Ljava/lang/String;)V

    goto :goto_1

    .line 2061
    .end local v2    # "apn":Lcom/yulong/android/telephony/ApnProfile;
    :pswitch_f
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2062
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x4c

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2066
    :pswitch_10
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2067
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v6, "profileId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4b

    invoke-virtual {p0, v7, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, p1, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2071
    :pswitch_11
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx IOCTRL_REQUEST_GET_HIDDEN_MENU subRequest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subRequest"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2075
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v6, "subRequest"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x4d

    invoke-virtual {p0, v7, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getHiddenMenuValue(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2079
    :pswitch_12
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx IOCTRL_REQUEST_SET_HIDDEN_MENU subRequest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subRequest"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v6, "subRequest"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, p4}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenMenuValue(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2086
    :pswitch_13
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2087
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x4e

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2090
    :pswitch_14
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v6, "cdmaRoamingType"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, p4}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2093
    :pswitch_15
    invoke-virtual {p0, p1, v8, p3}, Lcom/android/internal/telephony/PhoneBase;->getReplayParam(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2094
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2095
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2098
    :pswitch_16
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx IOCTRL_GET_SETTINGS_PARAM param = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const-string v5, "value"

    const-string v6, "param"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneBase;->getSettingsParam(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2102
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2103
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2106
    :pswitch_17
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx IOCTRL_SET_SETTINGS_PARAM param = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const-string v5, "param"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneBase;->getSettingsParam(Ljava/lang/String;)I

    move-result v5

    const-string v6, "value"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2110
    const-string v5, "param"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSettingsParam(Ljava/lang/String;I)V

    .line 2112
    :cond_3
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2113
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2116
    :pswitch_18
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2117
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x4f

    invoke-virtual {p0, v6, p4}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, p1, v8, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2121
    :pswitch_19
    const-string v5, "phonebase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rilIoControlEx : resetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resetType"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-static {}, Lcom/yulong/android/telephony/CPSprintPriManager;->getInstance()Lcom/yulong/android/telephony/CPSprintPriManager;

    move-result-object v5

    const-string v6, "resetType"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    invoke-virtual {v5, v6, v7, p4}, Lcom/yulong/android/telephony/CPSprintPriManager;->resetPriParams(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2125
    :pswitch_1a
    const-string v5, "roamingMode"

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRoamingMode()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2126
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2127
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2130
    :pswitch_1b
    const-string v5, "state"

    invoke-static {}, Lcom/yulong/android/telephony/CPSprintPriManager;->getInstance()Lcom/yulong/android/telephony/CPSprintPriManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->getSimLockState()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2131
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2132
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2135
    :pswitch_1c
    invoke-static {}, Lcom/yulong/android/telephony/CPSprintPriManager;->getInstance()Lcom/yulong/android/telephony/CPSprintPriManager;

    move-result-object v5

    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yulong/android/telephony/CPSprintPriManager;->setSimLockState(I)Z

    .line 2136
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2137
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2140
    :pswitch_1d
    invoke-static {}, Lcom/yulong/android/telephony/CPXmlParser;->getInstance()Lcom/yulong/android/telephony/CPXmlParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yulong/android/telephony/CPXmlParser;->clearLteAvailableFile()V

    .line 2141
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2142
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2145
    :pswitch_1e
    const-string v5, "power"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2146
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2147
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v6, "power"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2149
    :cond_4
    invoke-static {p4, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2150
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1982
    nop

    :pswitch_data_0
    .packed-switch 0x8f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_c
    .end packed-switch
.end method

.method public saveDeviceIdLocal(Ljava/lang/String;I)V
    .locals 1
    .param p1, "deviceid"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 516
    sget-object v0, Lcom/android/internal/telephony/PhoneBase;->mDeviceId:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 517
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1602
    const-string v0, "sendBurstDtmf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1603
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    .line 1480
    return-void
.end method

.method public setCardPowerState(ILandroid/os/Message;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2442
    const-string v0, "PhoneBase"

    const-string v1, "setCardPowerState() Error! This functionality is only implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1430
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 1437
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 1391
    return-void
.end method

.method public abstract setDataFirewall(I)Z
.end method

.method public setDefaultNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDefaultNetworkType(ILandroid/os/Message;)V

    .line 2203
    return-void
.end method

.method public setDesiredRadioPower(Z)V
    .locals 2
    .param p1, "power"    # Z

    .prologue
    .line 1892
    const-string v0, "PhoneBase"

    const-string v1, "void interface: PhoneBase::setDesiredRadioPower."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1155
    return-void
.end method

.method public setMBBMSAuthenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "inRand"    # Ljava/lang/String;
    .param p2, "inAutn"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setMBBMSAuthenticate(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2179
    const/4 v0, 0x1

    return v0
.end method

.method public setModemPowerOperation(ILandroid/os/Message;)Z
    .locals 6
    .param p1, "op"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1911
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1912
    const/4 v0, 0x0

    .line 1913
    .local v0, "bools":Z
    if-ne p1, v5, :cond_0

    .line 1914
    const/4 v0, 0x1

    .line 1915
    :cond_0
    const-string v1, "Phonebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setModemPowerOperation: bools = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    if-nez v0, :cond_1

    .line 1917
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 1918
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 1925
    .end local v0    # "bools":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendPowerState(ILandroid/os/Message;)V

    .line 1926
    return v5

    .line 1921
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 1922
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIsManualSelectNW:Z

    goto :goto_0
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1726
    const-string v0, "setOnEcbModeExitResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1727
    return-void
.end method

.method public abstract setPhoneSlot(I)V
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1444
    return-void
.end method

.method public setPreferredPLMNList(IILjava/lang/String;IIIILandroid/os/Message;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "format"    # I
    .param p3, "oper"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "e_utranAct"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 2331
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for GSMPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return-void
.end method

.method public setRadioPowerEx(Z)V
    .locals 2
    .param p1, "power"    # Z

    .prologue
    .line 1888
    const-string v0, "PhoneBase"

    const-string v1, "void interface: PhoneBase::setRadioPowerEx."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return-void
.end method

.method public setRasConnectFunction(ILandroid/os/Message;)Z
    .locals 2
    .param p1, "func"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1930
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: Error! This functionality is not implemented for PhoneBase."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/4 v0, 0x0

    return v0
.end method

.method public setSecretMode(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enableBM"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2364
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    return-void
.end method

.method public setSettingsParam(Ljava/lang/String;I)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2473
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2474
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 2475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSlotId(I)V
    .locals 0
    .param p1, "slotid"    # I

    .prologue
    .line 2375
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mSlotId:I

    .line 2376
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1456
    return-void
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "fromMcc"    # Z

    .prologue
    const/4 v11, 0x5

    .line 1244
    const-string v8, "persist.sys.language"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1245
    .local v6, "l":Ljava/lang/String;
    const-string v8, "persist.sys.country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, "c":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1251
    if-nez p2, :cond_2

    .line 1252
    const-string p2, ""

    .line 1254
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 1256
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 1259
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .line 1260
    .local v7, "locales":[Ljava/lang/String;
    array-length v0, v7

    .line 1261
    .local v0, "N":I
    const/4 v2, 0x0

    .line 1262
    .local v2, "bestMatch":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_5

    .line 1264
    aget-object v8, v7, v5

    if-eqz v8, :cond_7

    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v11, :cond_7

    aget-object v8, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1266
    aget-object v8, v7, v5

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1267
    aget-object v2, v7, v5

    .line 1274
    :cond_5
    if-eqz v2, :cond_0

    .line 1275
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1276
    .local v1, "am":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 1277
    .local v4, "config":Landroid/content/res/Configuration;
    new-instance v8, Ljava/util/Locale;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1279
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1280
    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1282
    .end local v0    # "N":I
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "bestMatch":Ljava/lang/String;
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v5    # "i":I
    .end local v7    # "locales":[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1269
    .restart local v0    # "N":I
    .restart local v2    # "bestMatch":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "locales":[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 1270
    aget-object v2, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1460
    const-string v0, "setTTYMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 1100
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    .line 1101
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2254
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 2255
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2263
    if-gez p2, :cond_2

    .line 2264
    const/4 p2, -0x1

    .line 2265
    goto :goto_0

    .line 2266
    :cond_2
    const/16 v1, 0xff

    if-le p2, v1, :cond_3

    .line 2269
    const/16 p2, 0xff

    .line 2270
    goto :goto_0

    .line 2272
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto :goto_0
.end method

.method public setupIMSDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    .line 2522
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [setupIMSDataCall] Error! mCi == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2525
    return-void
.end method

.method public simulateDataConnection(Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 1771
    sget-object v1, Lcom/android/internal/telephony/PhoneBase$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1782
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    .line 1787
    .local v0, "dcState":Lcom/android/internal/telephony/DctConstants$State;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1788
    return-void

    .line 1773
    .end local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1774
    .restart local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    goto :goto_0

    .line 1776
    .end local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1777
    .restart local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    goto :goto_0

    .line 1779
    .end local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1780
    .restart local v0    # "dcState":Lcom/android/internal/telephony/DctConstants$State;
    goto :goto_0

    .line 1771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public spcpaSendCmd(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "cmdstring"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2393
    const-string v0, "PhoneBase"

    const-string v1, "CP_COMM: [spcpaSendCmd] Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    const/4 v0, 0x0

    return v0
.end method

.method public startSmsQueue()Z
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->startSendSms()Z

    move-result v0

    return v0
.end method

.method public suspendQos(I)I
    .locals 1
    .param p1, "qosId"    # I

    .prologue
    .line 1807
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForAvpUpgradeFailure(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2713
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForAvpUpgradeFailure is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1655
    const-string v0, "unregisterForCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1617
    const-string v0, "unregisterForCdmaOtaStatusChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1032
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1682
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1665
    const-string v0, "unregisterForEcmTimerReset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1007
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 997
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1020
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1706
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1070
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1056
    return-void
.end method

.method public unregisterForModifyCallRequest(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2697
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForModifyCallRequest is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForModifyCallResponse(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2702
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForModifyCallResponse is not supported in this phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 987
    return-void
.end method

.method public unregisterForNoValidNetwork(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2360
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function is only for CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1690
    return-void
.end method

.method public unregisterForNvRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNvRefresh(Landroid/os/Handler;)V

    .line 2452
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 953
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1698
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1150
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1140
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1130
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1674
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1627
    const-string v0, "unregisterForSubscriptionInfoReady"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1628
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1044
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1722
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1714
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 974
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1731
    const-string v0, "unsetOnEcbModeExitResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method public abstract updateSignalStrength()V
.end method
