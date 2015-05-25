.class public Lcom/android/internal/telephony/DctConstants;
.super Ljava/lang/Object;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DctConstants$Activity;,
        Lcom/android/internal/telephony/DctConstants$State;
    }
.end annotation


# static fields
.field public static ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String; = null

.field public static final APN_CBS_ID:I = 0x7

.field public static final APN_CMAIL_ID:I = 0xb

.field public static final APN_CMDM_ID:I = 0xa

.field public static final APN_CMMM_ID:I = 0x9

.field public static final APN_DEFAULT_ID:I = 0x0

.field public static final APN_DUN_ID:I = 0x3

.field public static final APN_FOTA_ID:I = 0x6

.field public static final APN_HIPRI_ID:I = 0x4

.field public static final APN_IA_ID:I = 0x8

.field public static final APN_IMS_ID:I = 0x5

.field public static final APN_INVALID_ID:I = -0x1

.field public static final APN_MMS_ID:I = 0x1

.field public static final APN_NUM_TYPES:I = 0xd

.field public static final APN_NUM_TYPES_CDMA:I = 0x8

.field public static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final APN_WAP_ID:I = 0xc

.field public static final BASE:I = 0x42000

.field public static final CMD_ENABLE_MOBILE_PROVISIONING:I = 0x42025

.field public static final CMD_IS_PROVISIONING_APN:I = 0x42026

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x42024

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201e

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final EVENT_ANOTHER_VOICE_CALL_ENDED:I = 0x42068

.field public static final EVENT_ANOTHER_VOICE_CALL_STARTED:I = 0x42067

.field public static final EVENT_APN_CHANGED:I = 0x42013

.field public static final EVENT_BOTH_RECORDS_LOADED_FIRST_TIME:I = 0x42064

.field public static final EVENT_CDMA_DATACALL_ENTER_DORMANT:I = 0x42073

.field public static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field public static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field public static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x42015

.field public static final EVENT_CHANGE_APN_ON_ROAMING:I = 0x42078

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201d

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field public static final EVENT_CLOSE_GSM_NETWORK:I = 0x42069

.field public static final EVENT_CURRENT_DATA_NETWORK_CHANGED:I = 0x4202a

.field public static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field public static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field public static final EVENT_DATA_POWER_SAVE_MODE_CHANGED:I = 0x42029

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field public static final EVENT_DATA_SETUP_COMPLETE_ERROR:I = 0x42023

.field public static final EVENT_DATA_SETUP_COMPLETE_FROM_OTHER_PHONE:I = 0x4206f

.field public static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field public static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field public static final EVENT_DEFAULT_DATA_NETWORK_CHANGED:I = 0x64

.field public static final EVENT_DELAY_SETUP_DATA:I = 0x42079

.field public static final EVENT_DELAY_TRY_SETUP_DATA_AFTER_GET_DATA_SUBSCRIPTION:I = 0x4207c

.field public static final EVENT_DELAY_TRY_SETUP_DATA_AFTER_SET_DATA_SUBSCRIPTION:I = 0x4207a

.field public static final EVENT_DISCONNECT_DC_RETRYING:I = 0x42022

.field public static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field public static final EVENT_DISCONNECT_DONE_FROM_OTHER_PHONE:I = 0x42070

.field public static final EVENT_DO_RECOVERY:I = 0x42012

.field public static final EVENT_DUALSYS_CLEAN_UP_ALL_CONNECTIONS:I = 0x6d

.field public static final EVENT_DUN_SEVICE_DATA_ENABLED:I = 0x65

.field public static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field public static final EVENT_FINISH_SELECT_NET:I = 0x68

.field public static final EVENT_GET_DATA_SUBSCRIPTION_DONE:I = 0x4207b

.field public static final EVENT_GET_IMSI_DELAY:I = 0x420ca

.field public static final EVENT_GET_IMSI_DONE:I = 0x420c9

.field public static final EVENT_GET_PREFERRED_NETWORK_TYPE_CDC_PHONEONE:I = 0x4207e

.field public static final EVENT_GET_PREFERRED_NETWORK_TYPE_CDC_PHONETWO:I = 0x4207d

.field public static final EVENT_ICC_CHANGED:I = 0x42021

.field public static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field public static final EVENT_LTE_STATUS_CHANGE:I = 0x42074

.field public static final EVENT_MPDN_NOT_SUPPORT:I = 0x67

.field public static final EVENT_MPDN_SUPPORT:I = 0x66

.field public static final EVENT_NETWORK_SERVICE_ATTACHED:I = 0x4206a

.field public static final EVENT_NOTIFY_CDMA_ROAMING:I = 0x42076

.field public static final EVENT_NOTIFY_DATA_CONNECTED:I = 0x42075

.field public static final EVENT_POLL_PDP:I = 0x42005

.field public static final EVENT_PROVISIONING_APN_ALARM:I = 0x42027

.field public static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field public static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field public static final EVENT_QUERY_PROFILE_DELAY:I = 0x6c

.field public static final EVENT_QUERY_PROFILE_DONE:I = 0x6b

.field public static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field public static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RADIO_ON:I = 0x420c8

.field public static final EVENT_RAT_3Gto4G_CHANGE:I = 0x69

.field public static final EVENT_RAT_4Gto3G_CHANGE:I = 0x6a

.field public static final EVENT_RECORDS_LOADED:I = 0x42002

.field public static final EVENT_RESET_DONE:I = 0x4201c

.field public static final EVENT_RESTART_RADIO:I = 0x4201a

.field public static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field public static final EVENT_ROAMING_OFF:I = 0x4200c

.field public static final EVENT_ROAMING_ON:I = 0x4200b

.field public static final EVENT_ROAMING_ON_USER_ENABLE:I = 0x42077

.field public static final EVENT_SET_DATASUBS_FOR_DSDX:I = 0x42066

.field public static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x42065

.field public static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field public static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x4207f

.field public static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x42028

.field public static final EVENT_TRAFFIC_MOVING_CHANGED:I = 0x4202b

.field public static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field public static final EVENT_TRY_SETUP_DATA_FROM_OTHER_PHONE:I = 0x4206e

.field public static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field public static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static EXTRA_MESSENGER:Ljava/lang/String; = null

.field public static final EXTRA_PHONEID:Ljava/lang/String; = "extra_phoneid"

.field public static final PROVISIONING_URL_KEY:Ljava/lang/String; = "provisioningUrl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "com.android.internal.telephony"

    sput-object v0, Lcom/android/internal/telephony/DctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    .line 196
    const-string v0, "EXTRA_MESSENGER"

    sput-object v0, Lcom/android/internal/telephony/DctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method
