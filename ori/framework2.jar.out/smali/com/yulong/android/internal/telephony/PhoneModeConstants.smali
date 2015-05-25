.class public final Lcom/yulong/android/internal/telephony/PhoneModeConstants;
.super Ljava/lang/Object;
.source "PhoneModeConstants.java"


# static fields
.field public static final ACTION_CONVERT_PHONEID_TO_SLOTID:I = 0x6

.field public static final ACTION_CONVERT_SLOTID_TO_PHONEID:I = 0xa

.field public static final ACTION_FINISH_SELECT_NET_OPERATION:Ljava/lang/String; = "yulong.intent.action.SELECT_NET_OPERATION"

.field public static final ACTION_FINISH_SWITCH_PHONE:Ljava/lang/String; = "yulong.intent.action.FINISH_SWITCH_PHONE"

.field public static final ACTION_GET_CARD_STATUS_PHONEID:I = 0x4

.field public static final ACTION_GET_ICCLOCK_PHONEID:I = 0xb

.field public static final ACTION_GET_PINPUK_STATE:I = 0xd

.field public static final ACTION_GET_PIN_OR_PUK_NUM_OPERATION:Ljava/lang/String; = "yulong.intent.action.GET_PIN_OR_PUK_NUM_OPERATION"

.field public static final ACTION_GET_SLOT_CONNECT_MODE:I = 0xc

.field public static final ACTION_GET_VALID_CARD_NUM:I = 0x1

.field public static final ACTION_HIDE_NET_SELECT_MODE:Ljava/lang/String; = "yulong.intent.action.HIDE_NET_SELECT_MODE"

.field public static final ACTION_HOTSWAP_SELECT_NET:Ljava/lang/String; = "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

.field public static final ACTION_IS_ACTIVE_PHONE_PHONEID:I = 0x2

.field public static final ACTION_IS_NEED_SWITCH_SLOTID:I = 0x3

.field public static final ACTION_LOST_CARD:Ljava/lang/String; = "yulong.intent.action.ACTION_LOST_CARD"

.field public static final ACTION_LOST_CARD_NEED_REBOOT:Ljava/lang/String; = "yulong.intent.action.ACTION_LOST_CARD_NEED_REBOOT"

.field public static final ACTION_LTE_SWITCH_FINISHED:Ljava/lang/String; = "yulong.intent.action.ACTION_LTE_SWITCH_FINISHED"

.field public static final ACTION_NETWORK_INFO_DETECT:Ljava/lang/String; = "yulong.intent.action.ACTION_NETWORK_INFO_DETECT"

.field public static final ACTION_PHONE_OUT_OF_SERVICE_NEED_RESET:Ljava/lang/String; = "yulong.intent.action.ACTION_PHONE_OUT_OF_SERVICE_NEED_RESET"

.field public static final ACTION_POWER_MANAGER_OPERATION:Ljava/lang/String; = "yulong.intent.action.POWER_MANAGER_OPERATION"

.field public static final ACTION_RENEW_AFTER_PHONE_EXCEPTION:Ljava/lang/String; = "yulong.intent.action.PHONE_EXCEPTION_RENEW"

.field public static final ACTION_RESET_NET:I = 0x9

.field public static final ACTION_RESET_NET_OPERATION:Ljava/lang/String; = "yulong.intent.action.RESET_NET_OPERATION"

.field public static final ACTION_RESET_TOUCH_SCREEN:I = 0x8

.field public static final ACTION_ROAMING_STATE_CHANGED:Ljava/lang/String; = "yulong.intent.action.ROAMING_STATE_CHANGED"

.field public static final ACTION_SET_NET_SELECT_MODE:I = 0x9

.field public static final ACTION_SHOW_G_NET_LIST:Ljava/lang/String; = "yulong.intent.action.SHOW_G_NET_LIST"

.field public static final ACTION_SHOW_TDDLTE_DISABLED:Ljava/lang/String; = "yulong.intent.action.ACTION_SHOW_TDDLTE_DISABLED"

.field public static final ACTION_SWITCH_MANUAL_TO_AUTO:Ljava/lang/String; = "yulong.intent.action.ACTION_SWITCH_MANUAL_TO_AUTO"

.field public static final ACTION_SWITCH_NETWORK_SELECT:Ljava/lang/String; = "yulong.intent.action.ACTION_SWITCH_NETWORK_SELECT"

.field public static final ACTION_UPDATE_INFO_PULLOUT_BATTERY:I = 0x7

.field public static final ACTION_WAIT_PARSE_CARD_SLOTID:I = 0x5

.field public static final BATTERY_IN_OR_OUT:Ljava/lang/String; = "batteryInOrOut"

.field public static final CDMA_MODEM:I = 0x1

.field public static final CardType_AllReadable_SIM:I = 0x6

.field public static final CardType_AllReadable_UIM:I = 0x5

.field public static final CardType_DualMode:I = 0x4

.field public static final CardType_INVALID:I = -0x1

.field public static final CardType_MaxNum:I = 0x7

.field public static final CardType_NO:I = 0x0

.field public static final CardType_RUIM:I = 0x2

.field public static final CardType_SIM:I = 0x1

.field public static final CardType_USIM:I = 0x3

.field public static final CardType_Unknown:I = -0x2

.field public static final DATA_STATE:Ljava/lang/String; = "dataState"

.field public static final DEFAULT_SLOT_ID:I = -0x1

.field public static final GENERAL_ERROR:I = -0x1

.field public static final GSM_MODEM:I = 0x2

.field public static final LEFT_SLOT_ID:I = 0x0

.field public static final LEFT_SLOT_MODEM_TYPE:Ljava/lang/String; = "leftSlotModemType"

.field public static final ModemActiveAndHasCard:I = 0x2

.field public static final ModemActiveButNoCard:I = 0x1

.field public static final ModemActiveGetError:I = -0x1

.field public static final ModemInactive:I = 0x0

.field public static final NOT_SELECT:I = 0x0

.field public static final PINSTATE_BLOCKED:I = 0xa

.field public static final PINSTATE_ERROR:I = 0x0

.field public static final PINSTATE_PIN1:I = 0x2

.field public static final PINSTATE_PUK1:I = 0x3

.field public static final PINSTATE_READY:I = 0x1

.field public static final PINSTATE_UNKNOWN:I = -0x1

.field public static final PIN_CHECK_REQUEST:I = 0x0

.field public static final PIN_LEFT_NUM:Ljava/lang/String; = "pinLeftNum"

.field public static final PIN_LEFT_REQUEST:I = 0x0

.field public static final PREFERRED_SLOT_ID:Ljava/lang/String; = "preferredSlotId"

.field public static final PUK_CHECK_REQUEST:I = 0x2

.field public static final PUK_LEFT_REQUEST:I = 0x2

.field public static final PWRMGR_CLOSE_OR_OPEN:Ljava/lang/String; = "closeOrOpenNet"

.field public static final REQ_TYPE_PINPUK:Ljava/lang/String; = "reqTypePinPuk"

.field public static final RESULT_TYPE_RILERROR:Ljava/lang/String; = "RILError"

.field public static final RESULT_TYPE_SUCCESS:Ljava/lang/String; = "Success"

.field public static final RESULT_TYPE_TIMEOUT:Ljava/lang/String; = "TimeOut"

.field public static final RIGHT_SLOT_ID:I = 0x1

.field public static final RIGHT_SLOT_MODEM_TYPE:Ljava/lang/String; = "rightSlotModemTyp"

.field public static final SELECT_CDMA_STATUS:Ljava/lang/String; = "selectCdmaStatus"

.field public static final SELECT_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field public static final SELECT_GSM_STATUS:Ljava/lang/String; = "selectGsmStatus"

.field public static final SELECT_NET_BUSY:I = 0x3

.field public static final SELECT_NET_CHOICE_ERROR:I = 0x0

.field public static final SELECT_NET_LOW_POWER:I = 0x2

.field public static final SELECT_NET_RESULT:Ljava/lang/String; = "selectNetResult"

.field public static final SELECT_NET_SELECT_FAIL:I = 0x0

.field public static final SELECT_NET_SELECT_NOCARD:I = -0x1

.field public static final SELECT_NET_SELECT_OK:I = 0x1

.field public static final SELECT_NET_SUCCESS:I = 0x1

.field public static final SLOT_CONNECT_MODE:Ljava/lang/String; = "slotConnectMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
