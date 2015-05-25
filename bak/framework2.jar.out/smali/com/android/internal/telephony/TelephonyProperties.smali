.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CALLS_ON_IMS_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.calls.on.ims"

.field public static final CURRENT_ACCESS_TECHNOLOGY:Ljava/lang/String; = "yulong.current.actmode"

.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final CURRENT_DATA_SERVER_OPERATOR:Ljava/lang/String; = "yulong.currentdataserver.notify"

.field public static final CURRENT_PREFERRED_MODEM:Ljava/lang/String; = "gsm.current.modem-type"

.field public static final FAST_BOOTUP_MODE:Ljava/lang/String; = "persist.sys.fastbootup.mode"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_BASEBAND_VERSION_CDMA:Ljava/lang/String; = "cdma.version.baseband"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CDMA_NETWORK_MODE:Ljava/lang/String; = "persist.cdma.network.mode"

.field public static final PROPERTY_CDMA_PRL_VERSION:Ljava/lang/String; = "persist.yulong.cdma.prl.ver"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_CDMA:Ljava/lang/String; = "cdma.network.type"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_DISPOSE_PROGRESS:Ljava/lang/String; = "yulong.dispose.progress"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_GSM_IMSI_SIX:Ljava/lang/String; = "gsm.sim.imsi.six"

.field public static final PROPERTY_GSM_PLMN_VERSION:Ljava/lang/String; = "yulong.gsm.plmn.ver"

.field public static final PROPERTY_HOTSWAP_CHECK_CARD_FINISH:Ljava/lang/String; = "yulong.hotswap.checkcard.finish"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA_CDMA:Ljava/lang/String; = "cdma.ruim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY_CDMA:Ljava/lang/String; = "cdma.ruim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "cdma.ruim.operator.numeric"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LCDSDS_MODE:Ljava/lang/String; = "yulong.lcdsds.mode"

.field public static final PROPERTY_LTE_LABTEST_IMSI_NUMBER:Ljava/lang/String; = "001012"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_METROPCS_OPERATOR:Ljava/lang/String; = "311660"

.field public static final PROPERTY_OPERATORS_MODE:Ljava/lang/String; = "persist.yulong.operators.mode"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_CDMA:Ljava/lang/String; = "cdma.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_CDMA:Ljava/lang/String; = "cdma.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_CDMA:Ljava/lang/String; = "cdma.operator.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "cdma.operator.numeric"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_PREFER_NETWORK_TYPE_PHONEONE:Ljava/lang/String; = "persist.yulong.network1"

.field public static final PROPERTY_PREFER_NETWORK_TYPE_PHONETWO:Ljava/lang/String; = "persist.yulong.network2"

.field public static final PROPERTY_QC_GSM_RF_IMEI:Ljava/lang/String; = "gsm.qc.rf.IMEI"

.field public static final PROPERTY_QC_GSM_RF_IMEISV:Ljava/lang/String; = "gsm.qc.rf.IMEISV"

.field public static final PROPERTY_RADIO_OPERATOR_TYPE:Ljava/lang/String; = "yulong.radio.operator_type"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_RUIM_INSERT_STATE:Ljava/lang/String; = "cdma.ruim.insert.state"

.field public static final PROPERTY_RUIM_STATE:Ljava/lang/String; = "cdma.ruim.state"

.field public static final PROPERTY_SIM_INSERT_STATE:Ljava/lang/String; = "gsm.sim.insert.state"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_SOCKET_CONNECT_MODE:Ljava/lang/String; = "yulong.socket.connect.mode"

.field public static final PROPERTY_SUPER_MODE:Ljava/lang/String; = "persist.yulong.supermode"

.field public static final PROPERTY_TELEPHONE_DATA_INOROUT:Ljava/lang/String; = "yulong.data.inorout"

.field public static final PROPERTY_TELEPHONE_LEFT_G_IMSI:Ljava/lang/String; = "yulong.left.g.ismi"

.field public static final PROPERTY_TELEPHONE_LEFT_PIN:Ljava/lang/String; = "yulong.left.pin"

.field public static final PROPERTY_TELEPHONE_MEID:Ljava/lang/String; = "persist.sys.meid"

.field public static final PROPERTY_TELEPHONE_NET_SELECT_MODE:Ljava/lang/String; = "yulong.net.select"

.field public static final PROPERTY_TELEPHONE_PHONEONE_NID:Ljava/lang/String; = "yulong.phoneone.nid"

.field public static final PROPERTY_TELEPHONE_PHONEONE_SID:Ljava/lang/String; = "yulong.phoneone.sid"

.field public static final PROPERTY_TELEPHONE_RESET_COUNT:Ljava/lang/String; = "yulong.radio.reset.count"

.field public static final PROPERTY_TELEPHONE_RIGHT_G_IMSI:Ljava/lang/String; = "yulong.right.g.ismi"

.field public static final PROPERTY_TELEPHONE_RIGHT_PIN:Ljava/lang/String; = "yulong.right.pin"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_UIM_ESN_CHANGED:Ljava/lang/String; = "gsm.uim.esn.changed"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final SIMCARD1_SWITCH_PROPERITES:Ljava/lang/String; = "persist.sys.sim1.switch"

.field public static final SIMCARD2_SWITCH_PROPERITES:Ljava/lang/String; = "persist.sys.sim2.switch"
