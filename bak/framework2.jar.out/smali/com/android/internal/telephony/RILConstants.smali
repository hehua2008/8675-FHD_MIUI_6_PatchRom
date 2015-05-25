.class public interface abstract Lcom/android/internal/telephony/RILConstants;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RILConstants$RIL_QosIndStates;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosStatus;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosSpecKeys;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosDirection;,
        Lcom/android/internal/telephony/RILConstants$RIL_QosClass;
    }
.end annotation


# static fields
.field public static final CDMA_CELL_BROADCAST_SMS_DISABLED:I = 0x1

.field public static final CDMA_CELL_BROADCAST_SMS_ENABLED:I = 0x0

.field public static final CDMA_PHONE:I = 0x2

.field public static final CDM_TTY_FULL_MODE:I = 0x1

.field public static final CDM_TTY_HCO_MODE:I = 0x2

.field public static final CDM_TTY_MODE_DISABLED:I = 0x0

.field public static final CDM_TTY_MODE_ENABLED:I = 0x1

.field public static final CDM_TTY_VCO_MODE:I = 0x3

.field public static final DATA_PROFILE_CBS:I = 0x4

.field public static final DATA_PROFILE_DEFAULT:I = 0x0

.field public static final DATA_PROFILE_FOTA:I = 0x3

.field public static final DATA_PROFILE_IMS:I = 0x2

.field public static final DATA_PROFILE_OEM_BASE:I = 0x3e8

.field public static final DATA_PROFILE_TETHERED:I = 0x1

.field public static final DEACTIVATE_REASON_NONE:I = 0x0

.field public static final DEACTIVATE_REASON_PDP_RESET:I = 0x2

.field public static final DEACTIVATE_REASON_RADIO_OFF:I = 0x1

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x13

.field public static final DIAL_MODIFIED_TO_SS:I = 0x12

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x11

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final GSM_PHONE:I = 0x1

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final IMS_PHONE:I = 0x4

.field public static final INVALID_PARAMETER:I = 0x1d

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MAX_INT:I = 0x7fffffff

.field public static final MISSING_RESOURCE:I = 0x1b

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NETWORK_MODE_CDMA:I = 0x4

.field public static final NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NETWORK_MODE_GLOBAL:I = 0x7

.field public static final NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8

.field public static final NETWORK_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final NETWORK_MODE_SCDMA_GSM_WCDMA:I = 0x12

.field public static final NETWORK_MODE_TD_SCDMA_GSM:I = 0x10

.field public static final NETWORK_MODE_TD_SCDMA_GSM_LTE:I = 0x11

.field public static final NETWORK_MODE_TD_SCDMA_GSM_WCDMA_CDMA_EVDO_AUTO:I = 0x15

.field public static final NETWORK_MODE_TD_SCDMA_GSM_WCDMA_LTE:I = 0x14

.field public static final NETWORK_MODE_TD_SCDMA_LTE:I = 0xf

.field public static final NETWORK_MODE_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final NETWORK_MODE_TD_SCDMA_ONLY:I = 0xd

.field public static final NETWORK_MODE_TD_SCDMA_WCDMA:I = 0xe

.field public static final NETWORK_MODE_TD_SCDMA_WCDMA_LTE:I = 0x13

.field public static final NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final NO_CS_TO_DIAL:I = 0x1f

.field public static final NO_PHONE:I = 0x0

.field public static final NO_SUCH_ELEMENT:I = 0x1c

.field public static final OP_NOT_ALLOWED_BEFORE_REG_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x0

.field public static final PREFERRED_NETWORK_MODE:I = 0x0

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_CANCELLED:I = 0x7

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final RIL_ERRNO_INVALID_RESPONSE:I = -0x1

.field public static final RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU:I = 0x6a

.field public static final RIL_REQUEST_ADD_INVALIE_SID_TO_LIST:I = 0x125

.field public static final RIL_REQUEST_AGPS_GET_MPC_IPPORT:I = 0x11f

.field public static final RIL_REQUEST_AGPS_SET_MPC_IPPORT:I = 0x11e

.field public static final RIL_REQUEST_AGPS_TCP_CONNIND:I = 0x11d

.field public static final RIL_REQUEST_ANSWER:I = 0x28

.field public static final RIL_REQUEST_APN_PROFILE_WRITE:I = 0x150

.field public static final RIL_REQUEST_BASEBAND_VERSION:I = 0x33

.field public static final RIL_REQUEST_BIND_SLOTS:I = 0xff

.field public static final RIL_REQUEST_CANCEL_USSD:I = 0x1e

.field public static final RIL_REQUEST_CDMA_BROADCAST_ACTIVATION:I = 0x5e

.field public static final RIL_REQUEST_CDMA_BURST_DTMF:I = 0x55

.field public static final RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM:I = 0x61

.field public static final RIL_REQUEST_CDMA_FLASH:I = 0x54

.field public static final RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG:I = 0x5c

.field public static final RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE:I = 0x68

.field public static final RIL_REQUEST_CDMA_PRL_VERSION:I = 0xf3

.field public static final RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE:I = 0x53

.field public static final RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE:I = 0x4f

.field public static final RIL_REQUEST_CDMA_SEND_SMS:I = 0x57

.field public static final RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG:I = 0x5d

.field public static final RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE:I = 0x52

.field public static final RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE:I = 0x4e

.field public static final RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE:I = 0x4d

.field public static final RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE:I = 0x58

.field public static final RIL_REQUEST_CDMA_SPCPA_CMD:I = 0x128

.field public static final RIL_REQUEST_CDMA_SUBSCRIPTION:I = 0x5f

.field public static final RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY:I = 0x56

.field public static final RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM:I = 0x60

.field public static final RIL_REQUEST_CHANGE_BARRING_PASSWORD:I = 0x2c

.field public static final RIL_REQUEST_CHANGE_SIM_PIN:I = 0x6

.field public static final RIL_REQUEST_CHANGE_SIM_PIN2:I = 0x7

.field public static final RIL_REQUEST_CHANG_SYS_ACCESS_TECH_MODE:I = 0xcb

.field public static final RIL_REQUEST_CLEAR_MRU:I = 0x14f

.field public static final RIL_REQUEST_CLEAR_PRL_OR_PLMN:I = 0x14e

.field public static final RIL_REQUEST_CMGR:I = 0xd4

.field public static final RIL_REQUEST_CMGW:I = 0xd5

.field public static final RIL_REQUEST_CONFERENCE:I = 0x10

.field public static final RIL_REQUEST_CPBR:I = 0xd8

.field public static final RIL_REQUEST_CPBW:I = 0xd9

.field public static final RIL_REQUEST_DATA_CALL_LIST:I = 0x39

.field public static final RIL_REQUEST_DATA_REGISTRATION_STATE:I = 0x15

.field public static final RIL_REQUEST_DEACTIVATE_DATA_CALL:I = 0x29

.field public static final RIL_REQUEST_DEAL_BATTERY_STATUS:I = 0xf2

.field public static final RIL_REQUEST_DELETE_SMS_ON_SIM:I = 0x40

.field public static final RIL_REQUEST_DEVICE_IDENTITY:I = 0x62

.field public static final RIL_REQUEST_DIAL:I = 0xa

.field public static final RIL_REQUEST_DTMF:I = 0x18

.field public static final RIL_REQUEST_DTMF_START:I = 0x31

.field public static final RIL_REQUEST_DTMF_STOP:I = 0x32

.field public static final RIL_REQUEST_ENTER_CMD_MODE:I = 0xde

.field public static final RIL_REQUEST_ENTER_NETWORK_DEPERSONALIZATION:I = 0x8

.field public static final RIL_REQUEST_ENTER_SIM_PIN:I = 0x2

.field public static final RIL_REQUEST_ENTER_SIM_PIN2:I = 0x4

.field public static final RIL_REQUEST_ENTER_SIM_PUK:I = 0x3

.field public static final RIL_REQUEST_ENTER_SIM_PUK2:I = 0x5

.field public static final RIL_REQUEST_EXEC_RUIM_ESN_OP:I = 0xe3

.field public static final RIL_REQUEST_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x63

.field public static final RIL_REQUEST_EXPLICIT_CALL_TRANSFER:I = 0x48

.field public static final RIL_REQUEST_EXTEND_FROM_VIA:I = 0x13f

.field public static final RIL_REQUEST_FROM_ENGMODE_COMMAND:I = 0xdd

.field public static final RIL_REQUEST_GET_2G_NCELL_INFO:I = 0x13a

.field public static final RIL_REQUEST_GET_2G_SCELL_INFO:I = 0x139

.field public static final RIL_REQUEST_GET_3G_NCELL_INFO:I = 0x13c

.field public static final RIL_REQUEST_GET_3G_SCELL_INFO:I = 0x13b

.field public static final RIL_REQUEST_GET_ALL_INVALIE_SID:I = 0x126

.field public static final RIL_REQUEST_GET_AUDIO_REVISION:I = 0xdb

.field public static final RIL_REQUEST_GET_AVOID_SYS_INFO:I = 0x141

.field public static final RIL_REQUEST_GET_CARDTYPE:I = 0xec

.field public static final RIL_REQUEST_GET_CDMA_DATA_POWER_SAV_MODE:I = 0x114

.field public static final RIL_REQUEST_GET_CDMA_RF_CAL:I = 0xda

.field public static final RIL_REQUEST_GET_CELL_INFO_LIST:I = 0x6d

.field public static final RIL_REQUEST_GET_CLIR:I = 0x1f

.field public static final RIL_REQUEST_GET_CURRENT_CALLS:I = 0x9

.field public static final RIL_REQUEST_GET_CURRENT_INVALIE_SID:I = 0x122

.field public static final RIL_REQUEST_GET_DATA_CALL_PROFILE:I = 0xf9

.field public static final RIL_REQUEST_GET_DATA_STATS:I = 0xea

.field public static final RIL_REQUEST_GET_DATA_SUBSCRIPTION_SOURCE:I = 0xf7

.field public static final RIL_REQUEST_GET_DEFAULT_NETWORK_TYPE:I = 0x10d

.field public static final RIL_REQUEST_GET_EMERGENCY_NUM:I = 0x113

.field public static final RIL_REQUEST_GET_GSM_RF_CAL:I = 0xeb

.field public static final RIL_REQUEST_GET_HIDDEN_MENU_VALUE:I = 0x153

.field public static final RIL_REQUEST_GET_ICCID:I = 0xdc

.field public static final RIL_REQUEST_GET_IMEI:I = 0x26

.field public static final RIL_REQUEST_GET_IMEISV:I = 0x27

.field public static final RIL_REQUEST_GET_IMSI:I = 0xb

.field public static final RIL_REQUEST_GET_IMSI_UIM:I = 0x101

.field public static final RIL_REQUEST_GET_LINE_NUM:I = 0xf1

.field public static final RIL_REQUEST_GET_LOCAL_INFO:I = 0x109

.field public static final RIL_REQUEST_GET_LTE_NCELL_INFO:I = 0x149

.field public static final RIL_REQUEST_GET_LTE_SCELL_INFO:I = 0x148

.field public static final RIL_REQUEST_GET_MBBMS_CELL_ID:I = 0xd2

.field public static final RIL_REQUEST_GET_MODEM_STATUS:I = 0xf0

.field public static final RIL_REQUEST_GET_MUTE:I = 0x36

.field public static final RIL_REQUEST_GET_NEIGHBORING_CELL_IDS:I = 0x4b

.field public static final RIL_REQUEST_GET_PREFERRED_NETWORK_TYPE:I = 0x4a

.field public static final RIL_REQUEST_GET_PREFERRED_PLMN_LIST:I = 0x112

.field public static final RIL_REQUEST_GET_PRL_OR_PLMN_CAPACITY:I = 0x14c

.field public static final RIL_REQUEST_GET_PRL_OR_PLMN_VERSION:I = 0x14b

.field public static final RIL_REQUEST_GET_QOS_STATUS:I = 0x118

.field public static final RIL_REQUEST_GET_SIM_STATUS:I = 0x1

.field public static final RIL_REQUEST_GET_SMSC_ADDR:I = 0xe9

.field public static final RIL_REQUEST_GET_SMSC_ADDRESS:I = 0x64

.field public static final RIL_REQUEST_GET_SN:I = 0x136

.field public static final RIL_REQUEST_GET_UICC_SUBSCRIPTION_SOURCE:I = 0xf6

.field public static final RIL_REQUEST_GSM_BROADCAST_ACTIVATION:I = 0x5b

.field public static final RIL_REQUEST_GSM_GET_BROADCAST_CONFIG:I = 0x59

.field public static final RIL_REQUEST_GSM_SET_BROADCAST_CONFIG:I = 0x5a

.field public static final RIL_REQUEST_GSM_WRITE_SMS_TO_SIM:I = 0xef

.field public static final RIL_REQUEST_HANGUP:I = 0xc

.field public static final RIL_REQUEST_HANGUP_ALL:I = 0x142

.field public static final RIL_REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0xe

.field public static final RIL_REQUEST_HANGUP_WAITING_OR_BACKGROUND:I = 0xd

.field public static final RIL_REQUEST_HOLD:I = 0xe1

.field public static final RIL_REQUEST_IMS_REGISTRATION_STATE:I = 0x70

.field public static final RIL_REQUEST_IMS_SEND_SMS:I = 0x71

.field public static final RIL_REQUEST_IO_CONTROL:I = 0xe8

.field public static final RIL_REQUEST_ISIM_AUTHENTICATION:I = 0x69

.field public static final RIL_REQUEST_LAST_CALL_FAIL_CAUSE:I = 0x12

.field public static final RIL_REQUEST_LAST_DATA_CALL_FAIL_CAUSE:I = 0x38

.field public static final RIL_REQUEST_MOBILE_IP_PROFILE_WRITE:I = 0x151

.field public static final RIL_REQUEST_MODEM_AWAKE:I = 0xee

.field public static final RIL_REQUEST_MODEM_SLEEP:I = 0xed

.field public static final RIL_REQUEST_MODEM_VERSION:I = 0x143

.field public static final RIL_REQUEST_MODIFY_QOS:I = 0x119

.field public static final RIL_REQUEST_NOTIFY_SMS_MEM_FULL:I = 0x10f

.field public static final RIL_REQUEST_NV_WRITE:I = 0x155

.field public static final RIL_REQUEST_OEM_HOOK_RAW:I = 0x3b

.field public static final RIL_REQUEST_OEM_HOOK_STRINGS:I = 0x3c

.field public static final RIL_REQUEST_OPERATE_FACTORY_NUMBER:I = 0x140

.field public static final RIL_REQUEST_OPERATOR:I = 0x16

.field public static final RIL_REQUEST_PBM_PARAM1:I = 0xd6

.field public static final RIL_REQUEST_PBM_PARAM2:I = 0xd7

.field public static final RIL_REQUEST_PRL_WRITE:I = 0x152

.field public static final RIL_REQUEST_QUERY_ACCESS_TECH_MODE_ON_TYPE:I = 0xce

.field public static final RIL_REQUEST_QUERY_ATTACH_PROFILE:I = 0x157

.field public static final RIL_REQUEST_QUERY_AVAILABLE_BAND_MODE:I = 0x42

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS:I = 0x30

.field public static final RIL_REQUEST_QUERY_CALL_FORWARD_STATUS:I = 0x21

.field public static final RIL_REQUEST_QUERY_CALL_WAITING:I = 0x23

.field public static final RIL_REQUEST_QUERY_CLIP:I = 0x37

.field public static final RIL_REQUEST_QUERY_FACILITY_LOCK:I = 0x2a

.field public static final RIL_REQUEST_QUERY_NETWORK_SELECTION_MODE:I = 0x2d

.field public static final RIL_REQUEST_QUERY_PINPUK_VALID_COUNT:I = 0xe0

.field public static final RIL_REQUEST_QUERY_RUN_MODE_AND_ACC:I = 0xca

.field public static final RIL_REQUEST_QUERY_TTY_MODE:I = 0x51

.field public static final RIL_REQUEST_RADIO_POWER:I = 0x17

.field public static final RIL_REQUEST_RELEASE_QOS:I = 0x117

.field public static final RIL_REQUEST_REMOVE_ALL_INVALIE_SID:I = 0x124

.field public static final RIL_REQUEST_REMOVE_SELECTED_INVALIE_SID:I = 0x123

.field public static final RIL_REQUEST_REPORT_SMS_MEMORY_STATUS:I = 0x66

.field public static final RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING:I = 0x67

.field public static final RIL_REQUEST_RESET_RADIO:I = 0x3a

.field public static final RIL_REQUEST_RESUME_QOS:I = 0x11b

.field public static final RIL_REQUEST_SCREEN_STATE:I = 0x3d

.field public static final RIL_REQUEST_SECRECY_CONNETING:I = 0xfc

.field public static final RIL_REQUEST_SEND_CDMA_RAW_PDU:I = 0x106

.field public static final RIL_REQUEST_SEND_COMMAND_FOR_CTCLIENT:I = 0x107

.field public static final RIL_REQUEST_SEND_DIAL_NUMBER:I = 0x135

.field public static final RIL_REQUEST_SEND_ENGMODE_COMMAND:I = 0x10a

.field public static final RIL_REQUEST_SEND_SMS:I = 0x19

.field public static final RIL_REQUEST_SEND_SMS_EXPECT_MORE:I = 0x1a

.field public static final RIL_REQUEST_SEND_USSD:I = 0x1d

.field public static final RIL_REQUEST_SEPARATE_CONNECTION:I = 0x34

.field public static final RIL_REQUEST_SETUP_DATA_CALL:I = 0x1b

.field public static final RIL_REQUEST_SETUP_QOS:I = 0x116

.field public static final RIL_REQUEST_SET_ACCESS_TECH_AUTO_SWITCH_MODE:I = 0xcd

.field public static final RIL_REQUEST_SET_ACCESS_TECH_MODE_ON_TYPE:I = 0xcc

.field public static final RIL_REQUEST_SET_ACCTECH_CHANGE_URC:I = 0xcf

.field public static final RIL_REQUEST_SET_AUDIO_MODE:I = 0xd0

.field public static final RIL_REQUEST_SET_AUDIO_PATH:I = 0x102

.field public static final RIL_REQUEST_SET_BAND_MODE:I = 0x41

.field public static final RIL_REQUEST_SET_CALL_FORWARD:I = 0x22

.field public static final RIL_REQUEST_SET_CALL_WAITING:I = 0x24

.field public static final RIL_REQUEST_SET_CARD_POWER_STATE:I = 0x14a

.field public static final RIL_REQUEST_SET_CDMA_DATA_POWER_SAV_MODE:I = 0x115

.field public static final RIL_REQUEST_SET_CLIR:I = 0x20

.field public static final RIL_REQUEST_SET_CNMI_MODE:I = 0xfa

.field public static final RIL_REQUEST_SET_DATAMODE_HYBRID:I = 0x105

.field public static final RIL_REQUEST_SET_DATA_SUBSCRIPTION_SOURCE:I = 0xf5

.field public static final RIL_REQUEST_SET_DEFAULT_NETWORK_TYPE:I = 0x10e

.field public static final RIL_REQUEST_SET_DEFAULT_RUN_MODE_AND_ACC:I = 0xc9

.field public static final RIL_REQUEST_SET_DUAL_STANDBY_CONFIG:I = 0x10c

.field public static final RIL_REQUEST_SET_ETS_WAKE:I = 0x104

.field public static final RIL_REQUEST_SET_FACILITY_LOCK:I = 0x2b

.field public static final RIL_REQUEST_SET_GPS:I = 0x103

.field public static final RIL_REQUEST_SET_GPSONE_OPEN_CLOSE:I = 0xfb

.field public static final RIL_REQUEST_SET_GPS_DIAL_RESULT:I = 0xe4

.field public static final RIL_REQUEST_SET_GPS_DISC_RESULT:I = 0xe5

.field public static final RIL_REQUEST_SET_GPS_LOC_NOTIFY:I = 0xe6

.field public static final RIL_REQUEST_SET_GPS_NOTIFY_RESP:I = 0xe7

.field public static final RIL_REQUEST_SET_GPS_PDEIP:I = 0x120

.field public static final RIL_REQUEST_SET_GPS_PDEURL:I = 0x121

.field public static final RIL_REQUEST_SET_GPS_POWER_STATE:I = 0x10b

.field public static final RIL_REQUEST_SET_HIDDEN_MENU_VALUE:I = 0x154

.field public static final RIL_REQUEST_SET_INITIAL_ATTACH_APN:I = 0x6f

.field public static final RIL_REQUEST_SET_LOCATION_UPDATES:I = 0x4c

.field public static final RIL_REQUEST_SET_MBBMS_AUTHENTICATE:I = 0x110

.field public static final RIL_REQUEST_SET_MBBMS_GBA:I = 0xd1

.field public static final RIL_REQUEST_SET_MUTE:I = 0x35

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_AUTOMATIC:I = 0x2e

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL:I = 0x2f

.field public static final RIL_REQUEST_SET_POWER_STATE:I = 0xdf

.field public static final RIL_REQUEST_SET_PREFERRED_NETWORK_TYPE:I = 0x49

.field public static final RIL_REQUEST_SET_PREFERRED_PLMN_LIST:I = 0x111

.field public static final RIL_REQUEST_SET_PROV_SESSION:I = 0x158

.field public static final RIL_REQUEST_SET_RAS_CONNECT:I = 0xe2

.field public static final RIL_REQUEST_SET_SECRET_MODE:I = 0x127

.field public static final RIL_REQUEST_SET_SMSC_ADDRESS:I = 0x65

.field public static final RIL_REQUEST_SET_SUBSCRIPTION_MODE:I = 0xf8

.field public static final RIL_REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x3e

.field public static final RIL_REQUEST_SET_TRANSMIT_POWER:I = 0x100

.field public static final RIL_REQUEST_SET_TTY_MODE:I = 0x50

.field public static final RIL_REQUEST_SET_UICC_SUBSCRIPTION_SOURCE:I = 0xf4

.field public static final RIL_REQUEST_SET_UNSOL_CELL_INFO_LIST_RATE:I = 0x6e

.field public static final RIL_REQUEST_SET_VOICERECORD:I = 0x108

.field public static final RIL_REQUEST_SIGNAL_STRENGTH:I = 0x13

.field public static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x146

.field public static final RIL_REQUEST_SIM_GET_ATR:I = 0x156

.field public static final RIL_REQUEST_SIM_IO:I = 0x1c

.field public static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x145

.field public static final RIL_REQUEST_SIM_TRANSMIT_BASIC:I = 0x144

.field public static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x147

.field public static final RIL_REQUEST_SLEEP_DATA_FIREWALL:I = 0x11c

.field public static final RIL_REQUEST_SMS_ACKNOWLEDGE:I = 0x25

.field public static final RIL_REQUEST_SMS_PARAM:I = 0xd3

.field public static final RIL_REQUEST_SOCKET_CONNECTED:I = 0xfd

.field public static final RIL_REQUEST_START_MODEM_CELL_TEST:I = 0x137

.field public static final RIL_REQUEST_STK_GET_PROFILE:I = 0x43

.field public static final RIL_REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM:I = 0x47

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_COMMAND:I = 0x45

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS:I = 0x6b

.field public static final RIL_REQUEST_STK_SEND_TERMINAL_RESPONSE:I = 0x46

.field public static final RIL_REQUEST_STK_SET_PROFILE:I = 0x44

.field public static final RIL_REQUEST_STOP_MODEM_CELL_TEST:I = 0x138

.field public static final RIL_REQUEST_SUSPEND_QOS:I = 0x11a

.field public static final RIL_REQUEST_SWITCH_SLOTS:I = 0xfe

.field public static final RIL_REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0xf

.field public static final RIL_REQUEST_TEST_ATCHANNEL:I = 0x12a

.field public static final RIL_REQUEST_TEST_DATA:I = 0x129

.field public static final RIL_REQUEST_UDUB:I = 0x11

.field public static final RIL_REQUEST_UPDATE_PRL_OR_PLMN:I = 0x14d

.field public static final RIL_REQUEST_USB_STATE:I = 0x13e

.field public static final RIL_REQUEST_VOICE_RADIO_TECH:I = 0x6c

.field public static final RIL_REQUEST_VOICE_REGISTRATION_STATE:I = 0x14

.field public static final RIL_REQUEST_VT_ANSWER:I = 0x12d

.field public static final RIL_REQUEST_VT_AUDIO_REC:I = 0x12f

.field public static final RIL_REQUEST_VT_BASE:I = 0x12b

.field public static final RIL_REQUEST_VT_CODEC:I = 0x12e

.field public static final RIL_REQUEST_VT_DIAL:I = 0x12b

.field public static final RIL_REQUEST_VT_FALLBACK:I = 0x132

.field public static final RIL_REQUEST_VT_GET_MUTE:I = 0x134

.field public static final RIL_REQUEST_VT_HANGUP:I = 0x12c

.field public static final RIL_REQUEST_VT_SEND_STRS:I = 0x130

.field public static final RIL_REQUEST_VT_SET_MUTE:I = 0x133

.field public static final RIL_REQUEST_VT_TEST:I = 0x131

.field public static final RIL_REQUEST_WRITE_IMEI:I = 0x13d

.field public static final RIL_REQUEST_WRITE_SMS_TO_SIM:I = 0x3f

.field public static final RIL_REQUEST_YULONG_ADD_BASE_INDEX:I = 0xc8

.field public static final RIL_RESTRICTED_STATE_CS_ALL:I = 0x4

.field public static final RIL_RESTRICTED_STATE_CS_EMERGENCY:I = 0x1

.field public static final RIL_RESTRICTED_STATE_CS_NORMAL:I = 0x2

.field public static final RIL_RESTRICTED_STATE_NONE:I = 0x0

.field public static final RIL_RESTRICTED_STATE_PS_ALL:I = 0x10

.field public static final RIL_TETHERED_MODE_OFF:I = 0x0

.field public static final RIL_TETHERED_MODE_ON:I = 0x1

.field public static final RIL_UNSOL_2G_NCELL_STATE_REPORT:I = 0x475

.field public static final RIL_UNSOL_2G_SCELL_STATE_REPORT:I = 0x474

.field public static final RIL_UNSOL_3G_NCELL_STATE_REPORT:I = 0x477

.field public static final RIL_UNSOL_3G_SCELL_STATE_REPORT:I = 0x476

.field public static final RIL_UNSOL_ACCESS_TECHNOLOGY_CHANGED:I = 0x44e

.field public static final RIL_UNSOL_ACQUIREWAKELOCK_BY_MILLISECOND:I = 0x469

.field public static final RIL_UNSOL_CALL_RING:I = 0x3fa

.field public static final RIL_UNSOL_CALL_STATUS_INDICATION:I = 0x44f

.field public static final RIL_UNSOL_CDMA_CALL_WAITING:I = 0x401

.field public static final RIL_UNSOL_CDMA_FWIM_IND:I = 0x455

.field public static final RIL_UNSOL_CDMA_INFO_REC:I = 0x403

.field public static final RIL_UNSOL_CDMA_OTA_PROVISION_STATUS:I = 0x402

.field public static final RIL_UNSOL_CDMA_PRL_CHANGED:I = 0x408

.field public static final RIL_UNSOL_CDMA_RUIM_SMS_STORAGE_FULL:I = 0x3fe

.field public static final RIL_UNSOL_CDMA_SECRET_IND:I = 0x459

.field public static final RIL_UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x407

.field public static final RIL_UNSOL_CDMA_UIM_ABSENT:I = 0x46a

.field public static final RIL_UNSOL_CELL_INFO_LIST:I = 0x40c

.field public static final RIL_UNSOL_DATA_CALL_LIST_CHANGED:I = 0x3f2

.field public static final RIL_UNSOL_DATA_NETWORK_STATE_CHANGED:I = 0x466

.field public static final RIL_UNSOL_DETECT_NETWORK_INFO:I = 0x47d

.field public static final RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x400

.field public static final RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x409

.field public static final RIL_UNSOL_FOR_CTCLIENT:I = 0x45e

.field public static final RIL_UNSOL_GPS_ALT_ONOFF_IND:I = 0x452

.field public static final RIL_UNSOL_GPS_LOC_Notify_IND:I = 0x453

.field public static final RIL_UNSOL_GSM_CPI_IND:I = 0x454

.field public static final RIL_UNSOL_HANDOVER_SRVCC_CANCEL:I = 0x483

.field public static final RIL_UNSOL_HANDOVER_SRVCC_COMPLETE_FAIL:I = 0x482

.field public static final RIL_UNSOL_HANDOVER_SRVCC_COMPLETE_SUCCESS:I = 0x481

.field public static final RIL_UNSOL_HANDOVER_SRVCC_START:I = 0x480

.field public static final RIL_UNSOL_LTE_STATUS_IND:I = 0x478

.field public static final RIL_UNSOL_MODEM_EXCEPTION_STATE:I = 0x464

.field public static final RIL_UNSOL_MODEM_LOST_CARD:I = 0x462

.field public static final RIL_UNSOL_MUX_DATA_STATE:I = 0x463

.field public static final RIL_UNSOL_NITZ_TIME_RECEIVED:I = 0x3f0

.field public static final RIL_UNSOL_NV_REFRESH:I = 0x47c

.field public static final RIL_UNSOL_OEM_HOOK_RAW:I = 0x404

.field public static final RIL_UNSOL_ON_SS:I = 0x45c

.field public static final RIL_UNSOL_ON_USSD:I = 0x3ee

.field public static final RIL_UNSOL_ON_USSD_REQUEST:I = 0x3ef

.field public static final RIL_UNSOL_QOS_STATE_CHANGED_IND:I = 0x468

.field public static final RIL_UNSOL_RESEND_INCALL_MUTE:I = 0x406

.field public static final RIL_UNSOL_RESPONSE_BASE:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0x3e9

.field public static final RIL_UNSOL_RESPONSE_CARD_STATUS_CHANGED:I = 0x45b

.field public static final RIL_UNSOL_RESPONSE_CDMA_MODEM_RESET:I = 0x465

.field public static final RIL_UNSOL_RESPONSE_CDMA_NEW_SMS:I = 0x3fc

.field public static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x457

.field public static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x40d

.field public static final RIL_UNSOL_RESPONSE_NEW_BROADCAST_SMS:I = 0x3fd

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS:I = 0x3eb

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_ON_SIM:I = 0x3ed

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT:I = 0x3ec

.field public static final RIL_UNSOL_RESPONSE_NO_VALID_NETWORK:I = 0x46c

.field public static final RIL_UNSOL_RESPONSE_PCSCF_IPV4_ADDRESS:I = 0x47e

.field public static final RIL_UNSOL_RESPONSE_PCSCF_IPV6_ADDRESS:I = 0x47f

.field public static final RIL_UNSOL_RESPONSE_RADIO_STATE_CHANGED:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_SIM_STATUS_CHANGED:I = 0x3fb

.field public static final RIL_UNSOL_RESPONSE_SMS_CVMI:I = 0x479

.field public static final RIL_UNSOL_RESPONSE_TEST_DATA:I = 0x46d

.field public static final RIL_UNSOL_RESPONSE_TETHERED_MODE_STATE_CHANGED:I = 0x45a

.field public static final RIL_UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED:I = 0x3ea

.field public static final RIL_UNSOL_RESPONSE_VT_ASKFOR_DATA:I = 0x470

.field public static final RIL_UNSOL_RESPONSE_VT_CLOSED:I = 0x471

.field public static final RIL_UNSOL_RESPONSE_VT_CODEC:I = 0x472

.field public static final RIL_UNSOL_RESPONSE_VT_DISCONNECT_CAUSE:I = 0x473

.field public static final RIL_UNSOL_RESPONSE_VT_RING:I = 0x46e

.field public static final RIL_UNSOL_RESPONSE_VT_STRRI:I = 0x46f

.field public static final RIL_UNSOL_RESTRICTED_STATE_CHANGED:I = 0x3ff

.field public static final RIL_UNSOL_RILD_RESET_SUCESS:I = 0x461

.field public static final RIL_UNSOL_RIL_CONNECTED:I = 0x40a

.field public static final RIL_UNSOL_RINGBACK_TONE:I = 0x405

.field public static final RIL_UNSOL_RUIM_PBM_STATE_CHNG_IND:I = 0x450

.field public static final RIL_UNSOL_SIGNAL_STRENGTH:I = 0x3f1

.field public static final RIL_UNSOL_SIM_PBM_STATE_CHNG_IND:I = 0x451

.field public static final RIL_UNSOL_SIM_REFRESH:I = 0x3f9

.field public static final RIL_UNSOL_SIM_SMS_STORAGE_FULL:I = 0x3f8

.field public static final RIL_UNSOL_STK_CALL_SETUP:I = 0x3f7

.field public static final RIL_UNSOL_STK_CC_ALPHA_NOTIFY:I = 0x45d

.field public static final RIL_UNSOL_STK_EVENT_NOTIFY:I = 0x3f6

.field public static final RIL_UNSOL_STK_PROACTIVE_COMMAND:I = 0x3f5

.field public static final RIL_UNSOL_STK_SESSION_END:I = 0x3f4

.field public static final RIL_UNSOL_SUBSCRIPTION_READY:I = 0x458

.field public static final RIL_UNSOL_SUPP_SVC_NOTIFICATION:I = 0x3f3

.field public static final RIL_UNSOL_SYS_NEED_RELSEL_PREF:I = 0x460

.field public static final RIL_UNSOL_TETHERED_MODE_STATE_CHANGED:I = 0x456

.field public static final RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED:I = 0x467

.field public static final RIL_UNSOL_UI_REMINDER_RPT_IND:I = 0x47b

.field public static final RIL_UNSOL_USIM_SIM_STATE_REPORT:I = 0x44d

.field public static final RIL_UNSOL_VIA_EXTEND_EVENT:I = 0x47a

.field public static final RIL_UNSOL_VIA_GPS_EVENT:I = 0x46b

.field public static final RIL_UNSOL_VIDEOPHONE_CONNECT:I = 0x45f

.field public static final RIL_UNSOL_VOICE_RADIO_TECH_CHANGED:I = 0x40b

.field public static final RIL_UNSOL_YULONG_ADD_BASE_INDEX:I = 0x44c

.field public static final SETUP_DATA_AUTH_CHAP:I = 0x2

.field public static final SETUP_DATA_AUTH_NONE:I = 0x0

.field public static final SETUP_DATA_AUTH_PAP:I = 0x1

.field public static final SETUP_DATA_AUTH_PAP_CHAP:I = 0x3

.field public static final SETUP_DATA_CALL_FAILURE:I = 0x10

.field public static final SETUP_DATA_PROTOCOL_IP:Ljava/lang/String; = "IP"

.field public static final SETUP_DATA_PROTOCOL_IPV4V6:Ljava/lang/String; = "IPV4V6"

.field public static final SETUP_DATA_PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"

.field public static final SETUP_DATA_TECH_CDMA:I = 0x0

.field public static final SETUP_DATA_TECH_GSM:I = 0x1

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SIP_PHONE:I = 0x3

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SS_MODIFIED_TO_DIAL:I = 0x17

.field public static final SS_MODIFIED_TO_SS:I = 0x19

.field public static final SS_MODIFIED_TO_USSD:I = 0x18

.field public static final SUBSCRIPTION_FROM_NV:I = 0x1

.field public static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUBSCRIPTION_NOT_SUPPORTED:I = 0x1a

.field public static final SUCCESS:I = 0x0

.field public static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field public static final TRANSMIT_POWER_WIFI_HOTSPOT:I = 0x1

.field public static final USSD_MODIFIED_TO_DIAL:I = 0x14

.field public static final USSD_MODIFIED_TO_SS:I = 0x15

.field public static final USSD_MODIFIED_TO_USSD:I = 0x16
